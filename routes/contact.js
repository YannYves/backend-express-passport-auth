const express = require("express");
const router = express.Router();
const { db } = require("../conf");
const passport = require("passport");

router.post("/", (req, res) => {
  db.query("INSERT INTO contact SET ?", [req.body], (err, results) => {
    if (err) {
      res.status(500).send("there was an error while processing your query");
      console.log(err.sql);
      console.log(err.message);
      return;
    }
    res.send(results);
  });
});

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

module.exports = router;
