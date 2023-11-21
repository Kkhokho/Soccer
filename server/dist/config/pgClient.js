"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const pg_1 = require("pg");
console.log(process.env.HOST);
const pool = new pg_1.Pool({
    host: 'localhost',
    port: 5432,
    database: 'Soccer_Demo2',
    user: 'postgres',
    password: 'postgre',
});
exports.default = pool;
