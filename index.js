const express = require("express"),
  bodyParser = require("body-parser"),
  swaggerJsdoc = require("swagger-jsdoc"),
  swaggerUi = require("swagger-ui-express");
const mysql = require("mysql2");
const cors = require("cors");

const app = express();
const PORT = process.env.PORT || 8080;
app.use(bodyParser.json());
app.use(cors());

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});

const db = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "Rickriordan@7",
  database: "jobify",
});

db.connect((err) => {
  if (err) {
    console.error("Error connecting to MySQL database:", err);
    return;
  }
  console.log("Connected to MySQL database");
});

app.use("/api-docs", swaggerUi.serve, swaggerUi.setup(specs));
// GET ALL
app.get("/banks", (req, res) => {
  db.query("SELECT * FROM projects", (err, results) => {
    if (err) {
      console.error("Error fetching items:", err);
      res.status(500).json({ error: "Internal server error" });
      return;
    }
    res.json(results);
  });
});

app.get("/banks/:id", (req, res) => {
  const itemId = req.params.id;
  db.query("SELECT * FROM projects WHERE PJID=?", itemId, (err, results) => {
    if (err) {
      console.error("Error fetching items:", err);
      res.status(500).json({ error: "Internal server error" });
      return;
    }
    res.json(results);
  });
});

