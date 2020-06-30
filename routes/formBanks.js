const express = require("express");
const connection = require("../connection");
const router = express.Router();

// GET tous les form_banque
router.get("/form/banque", (req, res) => {
  connection.query(" SELECT * FROM form_banque", (err, results) => {
    if (err) {
      res.status(500).send("Erreur lors de la récupération des données" + err);
    } else {
      res.status(200).json(results);
    }
  });
});

module.exports = router;
