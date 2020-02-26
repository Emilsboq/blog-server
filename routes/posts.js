const express = require("express");
const router = express.Router();
const db = require("../db/dbConn");


router.get("/api/post", (req, res) => {
    res.send("<h1>Post</h>");
});

router.get("/api/post/all", (req, res) => {
    res.send("<h1>All posts</h>");

    

});

router.get("/api/posts/all", (req, res) => {
    let queryString = "SELECT * FROM blog_db ORDER BY author DESC";
    db().query(queryString, (error, rows, fields) => {
        
        if(error) {
            res.sendStatus(500);
            res.end();
            return;
        };
        
       const data = rows.map( (row) => {
           return {Id: row.id, author: row.author, body: row.body, created: row.created, title: row.title};
       });
       res.json(data);
    });
});

module.exports = router;