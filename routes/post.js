const express = require("express");
const router = express.Router();
const db = require("../db/dbConn");

router.get("/api/post", (req, res) => {

let queryString = "SELECT * FROM posts ORDER BY id DESC";
    db().query(queryString, (error, rows, fields, id) => {
        
        if(error) {
            res.sendStatus(500);
            res.end();
            return;
        };
        
       const data = rows.map( (row) => {
           return {Id: row.id};
       });
       res.json(data);
    });
});

module.exports = router;