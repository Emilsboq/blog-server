const mysql = require("mysql");

module.exports = function getConnection() {
    return mysql.createPool(
        {
            connectionLimit: 10,
            host: process.env.HOST || "127.0.0.1",
            user: process.env.USER || "localhost",
            password: process.env.PASSWORD || "lösenord",
            database: process.env.DATABASE || "blog_db"
        }
    );
}