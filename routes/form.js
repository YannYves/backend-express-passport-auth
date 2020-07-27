const express = require("express");
const router = express.Router();
const { db } = require("../conf");

// -----------------------------------auth wall

// -----------------------------------auth wall

router.get("/all", (req, res) => {
  db.query("SELECT * FROM form", (err, results, fields) => {
    if (err) {
      res.status(500).send("Nope, cassé un truc!");
      console.log(err.sql);
      console.log(err.message);
      return;
    }
    if (results.length === 0) {
      res.status(400).send("J'ai rien trouvé!");
      return;
    }
    res.send(results);
  });
});

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
  db.query("INSERT INTO form SET ?", [req.body], (err, results) => {
    if (err) {
      res.status(500).send("Nope, cassé un truc!");
      console.log(err.sql);
      console.log(err.message);
      return;
    }
    res.send(results);
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

router.delete("/:id", (req, res) => {
  const id = req.params.id;
  db.query("DELETE FROM form WHERE id=?", [id], (err, results) => {
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
