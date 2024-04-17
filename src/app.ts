import express from "express";
require("dotenv").config();

const app = express();
const port = process.env.PORT;

app.get("/", (req, res) => {
  res.send("Hello World - mr.Chuong!");
});

app.listen(port, () => {
  return console.log(`Express is listening at http://localhost:${port}`);
});
