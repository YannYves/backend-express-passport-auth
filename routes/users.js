const express = require("express");
const connection = require("../connection");
const router = express.Router();

// GET tous les users
router.get("/all", (req, res) => {
  connection.query(
    " SELECT firstName, lastName, email FROM users",
    (err, results) => {
      if (err) {
        res
          .status(500)
          .send("Erreur lors de la récupération des données" + err);
      } else {
        res.status(200).json(results);
      }
    }
  );
});

module.exports = router;
