const express = require("express");
const app = express();
const port = 3000;

app.get("/api", (req, res) => {
  res.json({ msg: "Hello" });
});

app.listen(port, () => {
  console.log(`Node.js server listening at http://localhost:${port}`);
});
