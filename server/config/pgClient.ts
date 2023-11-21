import { Pool } from 'pg'

console.log( process.env.HOST);


const pool = new Pool({
  host: 'localhost',
  port: 5432,
  database: 'Soccer_Demo2',
  user: 'postgres',
  password: 'postgre',
})

export default pool
