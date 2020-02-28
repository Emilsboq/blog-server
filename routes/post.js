const express = require("express");
const router = express.Router();
const db = require("../db/dbConn");

router.get("/api/post/:id",(req,res)=>{
    db().query("SELECT * FROM posts WHERE id = ?",[req.params.id], (err,rows,fields)=>{
        if(!err)
        res.send(rows);
    })
});

module.exports = router;