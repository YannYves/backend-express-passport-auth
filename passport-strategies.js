const passport = require("passport");
const bcrypt = require("bcrypt");
const { Strategy } = require("passport");
const localStrategy = require("passport-local").Strategy;
const JwtStrategy = require("passport-jwt").Strategy,
  ExtractJwt = require("passport-jwt").ExtractJwt;
require("dotenv").config();
const { DB_SECRET } = process.env;

const { db } = require("./conf");

passport.use(
  new localStrategy(
    {
      usernameField: "mail",
      passwordField: "pass",
    },
    (formMail, formPass, done) => {
      db.query(
        "SELECT id, mail, pass FROM user WHERE mail=?",
        [formMail],
        (err, res) => {
          if (err) {
            console.log("...");
            console.log(err.sql);
            console.error(err.message);
            return done(err);
          }
          if (!res.length) {
            console.log("...");
            console.log("No user");
            return done(null, false);
          }
          const user = res[0];

          const isPasswordOk = bcrypt.compareSync(formPass, user.pass);
          if (!isPasswordOk) {
            return done(null, false);
          }

          return done(null, { ...user });
        }
      );
    }
  )
);

const opts = {};
opts.jwtFromRequest = ExtractJwt.fromAuthHeaderAsBearerToken();
opts.secretOrKey = DB_SECRET;

passport.use(
  new JwtStrategy(opts, function (jwt_payload, done) {
    const user = jwt_payload;
    return done(null, user);
  })
);
