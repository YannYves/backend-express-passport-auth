const express = require("express");
const app = express();
const { backendPort } = require("./conf");

app.use(express.json());

app.use("/form", require("./routes/form.js"));

app.use("/", (req, res) => {
  res.send("Welcome, stranger!");
});

app.listen(backendPort, () => {
  console.log(`API root available on http://localhost:${backendPort}`);
});
