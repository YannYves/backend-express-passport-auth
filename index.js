const app = require("./app");
const port = process.env.DB_PORT;

app.use("/", (req, res) => {
  res.send("Welcome, stranger!");
});

app.listen(port, (err) => {
  if (err) {
    throw new Error(`An error occurred: ${err.message}`);
  }
  console.log(`Server is listening on ${port}`);
});
