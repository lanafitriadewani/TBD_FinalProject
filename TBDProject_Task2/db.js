const Pool = require('pg').Pool; // Mengimpor modul pg untuk koneksi PostgreSQL

// Mengkonfigurasi koneksi pool ke PostgreSQL
const pool = new Pool({
    user: "postgres",
    host: "localhost",
    database: "TBD_Project",
    password: "admin",
    port: 5432,
});

module.exports = pool; // Mengekspor pool untuk digunakan di file lain