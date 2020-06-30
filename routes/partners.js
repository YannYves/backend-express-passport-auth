const express = require("express");
const connection = require("../connection");
const router = express.Router();

// GET tous les partners
router.get("/", (req, res) => {
  connection.query(" SELECT * FROM partners", (err, results) => {
    if (err) {
      res.status(500).send("Erreur lors de la récupération des données" + err);
    } else {
      res.status(200).json(results);
    }
  });
});

module.exports = router;
