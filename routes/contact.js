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

module.exports = router;
