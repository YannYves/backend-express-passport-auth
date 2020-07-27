require("dotenv").config();
const mysql = require("mysql");
const {
  DB_USER,
  DB_PASSWORD,
  DB_DATABASE,
  DB_HOST,
  DB_POOLLIMIT,
} = process.env;

const db = mysql.createPool({
  host: DB_HOST,
  user: DB_USER,
  password: DB_PASSWORD,
  database: DB_DATABASE,
  connectionLimit: DB_POOLLIMIT,
});

module.exports = {
  backendPort: process.env.BACKEND_PORT,
  db,
};
