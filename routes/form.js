const express = require("express");
const router = express.Router();
const { db } = require("../conf");

// -----------------------------------auth wall

// -----------------------------------auth wall

router.get("/:id", (req, res) => {
  const id = req.params.id;

  db.query("SELECT * FROM form WHERE id=? LIMIT 1;", [id], (errReq, resReq) => {
    if (errReq) {
      res.status(500).send(errReq);
    }
    if (!resReq.length) {
      res.status(404).send("Form not found");
    }
    res.status(200).send(resReq[0]);
  });
});

router.post("/", (req, res) => {
  const save = req.body.save;
  db.query("INSERT INTO form SET ?;", [save], (errReq, resReq) => {
    if (errReq) {
      res.status(500).send(errReq);
    }
    res.status(200).send("Form successfully saved!");
  });
});

router.put("/:id", (req, res) => {
  const id = req.params.id;
  db.query("UPDATE form SET ? WHERE id=?", [req.body, id], (err, results) => {
    if (err) {
      res.status(500).send("Nope, cassé un truc!");
      console.log(err.sql);
      console.log(err.message);
      return;
    }
    res.send(results);
  });
});

module.exports = router;
