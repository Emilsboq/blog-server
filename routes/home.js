const express = require("express");
const router = express.Router();
<<<<<<< HEAD
const db = require("../db/dbConn");
=======
>>>>>>> feature/db-con


router.get("/", (req, res) => {
    res.send("<h1>Hello World</h>");
});



module.exports = router;