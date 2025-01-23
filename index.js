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
  password: "P@ss4SQl",
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
  db.query("SELECT * FROM banks", (err, results) => {
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
  db.query("SELECT * FROM banks WHERE id=?", itemId, (err, results) => {
    if (err) {
      console.error("Error fetching items:", err);
      res.status(500).json({ error: "Internal server error" });
      return;
    }
    res.json(results);
  });
});

app.post("/banks", (req, res) => {
  const { name, balance } = req.body;
  db.query(
    "INSERT INTO banks(bname,balance) VALUES(?,?)",
    [name, balance],
    (err, results) => {
      if (err) {
        console.error("Error fetching items:", err);
        res.status(500).json({ error: "Internal server error" });
        return;
      }
      res.json(results);
    }
  );
  //   res.json(req.value);
});

// Credit Cards

app.get("/ccards", (req, res) => {
  db.query("SELECT * FROM credit_cards", (err, results) => {
    if (err) {
      console.error("Error fetching items:", err);
      res.status(500).json({ error: "Internal server error" });
      return;
    }
    res.json(results);
  });
});

app.get("/ccards/:id", (req, res) => {
  const itemId = req.params.id;
  db.query("SELECT * FROM credit_cards WHERE id=?", itemId, (err, results) => {
    if (err) {
      console.error("Error fetching items:", err);
      res.status(500).json({ error: "Internal server error" });
      return;
    }
    res.json(results);
  });
});

app.get("/transactions", (req, res) => {
  db.query("SELECT * FROM transactions", (err, results) => {
    if (err) {
      console.error("Error fetching items:", err);
      res.status(500).json({ error: "Internal server error" });
      return;
    }
    res.json(results);
  });
});

app.get("/transactions/:id", (req, res) => {
  const itemId = req.params.id;
  db.query("SELECT * FROM transactions WHERE id=?", itemId, (err, results) => {
    if (err) {
      console.error("Error fetching items:", err);
      res.status(500).json({ error: "Internal server error" });
      return;
    }
    res.json(results);
  });
});

// Source
app.get("/srcs", (req, res) => {
  db.query("SELECT * FROM source", (err, results) => {
    if (err) {
      console.error("Error fetching items:", err);
      res.status(500).json({ error: "Internal server error" });
      return;
    }
    res.json(results);
  });
});

app.get("/srcs/:id", (req, res) => {
  const itemId = req.params.id;
  db.query("SELECT * FROM source WHERE s_id=?", itemId, (err, results) => {
    if (err) {
      console.error("Error fetching items:", err);
      res.status(500).json({ error: "Internal server error" });
      return;
    }
    res.json(results);
  });
});

// Categories
app.get("/cats", (req, res) => {
  db.query("SELECT * FROM categories", (err, results) => {
    if (err) {
      console.error("Error fetching items:", err);
      res.status(500).json({ error: "Internal server error" });
      return;
    }
    res.json(results);
  });
});

app.get("/cats/:id", (req, res) => {
  const itemId = req.params.id;
  db.query("SELECT * FROM categories WHERE c_id=?", itemId, (err, results) => {
    if (err) {
      console.error("Error fetching items:", err);
      res.status(500).json({ error: "Internal server error" });
      return;
    }
    res.json(results);
  });
});
