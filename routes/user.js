const express = require("express");
const router = express.Router();
const { db } = require("../conf");
const passport = require("passport");

// -----------------------------------auth wall

router.use((req, res, next) => {
  passport.authenticate("jwt", { session: false }, (err, user, msg) => {
    if (err) {
      console.log("...");
      console.log(err);
      return res.sendStatus(500).send(err);
    }
    if (!user) {
      console.log("...");
      console.log("No user found");
      return res.sendStatus(500);
    }
    req.user = user;
    next();
  })(req, res);
});

// -----------------------------------auth wall

router.get("/all", (req, res) => {
  db.query("SELECT * FROM user", (err, results, fields) => {
    if (err) {
      res.status(500).send("there was an error while processing your query");
      console.log(err.sql);
      console.log(err.message);
      return;
    }
    if (results.length === 0) {
      res.status(400).send("form not found");
      return;
    }
    res.send(results);
  });
});

module.exports = router;
