const express = require("express");
const router = express.Router();
const db = require("../db/dbConn");


router.get("/", (req, res) => {
    res.send("<h1>Hello World</h>");
});



module.exports = router;