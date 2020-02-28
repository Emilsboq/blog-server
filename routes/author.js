const express = require("express");
const router = express.Router();
const db = require("../db/dbConn");

router.get("/api/author/:author", (req,res,) => {
    let queryString = "SELECT * FROM posts WHERE author = ?";
    db().query(queryString, [req.params.author],(error, rows, fields) => {
        
        if(error) {
            res.sendStatus(500);
            res.end();
            return;
        };
        
       const data = rows.map( (row) => {
           return {Id: row.id, Author: row.author, Title: row.title, body: row.body, Created: row.created_at, Updated: row.updated_at };
       });
       res.json(data);
    });
});

module.exports = router;