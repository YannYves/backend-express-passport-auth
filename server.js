const express = require("express");
const app = express();
const cors = require("cors");
const { backendPort } = require("./conf");

app.use(cors());
app.use(express.json());

app.use("/form", require("./routes/form.js"));
app.use("/auth", require("./routes/auth"));
app.use("/contact", require("./routes/contact"));
app.use("/user", require("./routes/user"));

app.listen(backendPort, () => {
  console.log(`API root available on http://localhost:${backendPort}`);
});
