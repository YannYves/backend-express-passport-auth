const express = require("express");
const router = express.Router();
const { db } = require("../conf");
const jwt = require("jsonwebtoken");
const bcrypt = require("bcrypt");
const passport = require("passport");
require("../passport-strategies");

router.post("/signup", (req, res) => {
  // data from post request+ + encryption

  req.body.pass = bcrypt.hashSync(req.body.pass, 5);
  db.query("INSERT INTO user SET ?", [req.body], (errReq, resReq) => {
    if (errReq) {
      console.log("...");
      console.log(errReq.sql);
      console.error(errReq.message);
      return res.sendStatus(500);
    }

    const user = {
      mail: req.body.mail,
      id: resReq.insertId,
    };

    const token = jwt.sign(user, "secret");

    return res.status(200).send({ token, user });
  });
});

router.post("/signin", (req, res) => {
  passport.authenticate("local", { session: false }, (err, user, msg) => {
    if (err) {
      console.log("...");
      console.log(err.sql);
      console.error(err.message);
      return res.sendStatus(500);
    }
    if (!user) {
      console.log("...");
      console.log("No user found");
      return res.sendStatus(500);
    }

    const token = jwt.sign(user, "secret");

    return res.status(200).send({ token, user });
  })(req, res);
});

module.exports = router;
