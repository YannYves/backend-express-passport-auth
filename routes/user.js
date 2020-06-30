const express = require("express");
const connection = require("../connection");
const router = express.Router();

// GET tous les users
router.get("/users", (req, res) => {
  connection.query(" SELECT * FROM users", (err, results) => {
    if (err) {
      res.status(500).send("Erreur lors de la récupération des données" + err);
    } else {
      res.status(200).json(results);
    }
  });
});
