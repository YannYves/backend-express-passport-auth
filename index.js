const express = require("express");
const app = require("./app");
const port = process.env.DB_PORT;
const cors = require("cors");

app.use(cors());

app.use(express.json());
// Support URL-encoded bodies
app.use(
  express.urlencoded({
    extended: true,
  })
);

app.get("/", (request, response) => {
  response.send("Hello");
});

app.use("/users", require("./routes/users"));
app.use("/partners", require("./routes/partners"));
app.use("/formsBanks", require("./routes/formBanks"));
app.use("/formsAss", require("./routes/formAss"));

app.listen(port, (err) => {
  if (err) {
    throw new Error(`An error occurred: ${err.message}`);
  }
  console.log(`Server is listening on ${port}`);
});
