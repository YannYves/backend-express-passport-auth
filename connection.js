// connection.js
require("dotenv").config();
const mysql = require("mysql");

const connection = mysql.createConnection({
  host: process.env.DB_HOST, // adresse du serveur
  database: process.env.DB_NAME, // le mot de passe
  user: process.env.DB_USER, // le nom d'utilisateur
  password: process.env.DB_PASS, // le nom de la base de données
});

connection.connect(function (err) {
  if (err) {
    console.error("error connecting: " + err.stack);
    return;
  }
  console.log("connected as id " + connection.threadId);
});

module.exports = connection;
