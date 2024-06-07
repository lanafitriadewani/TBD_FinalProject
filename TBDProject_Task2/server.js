const express = require('express'); // Mengimpor modul Express
const grbRoutes = require('./src/grb/routes'); // Mengimpor rute dari folder src/grb/routes
const app = express(); // Membuat instance aplikasi Express
const port = 3000; // Menentukan port yang akan digunakan oleh server

app.use(express.json()); // Middleware untuk parsing JSON di body request

// Rute root untuk menguji server berjalan
app.get("/", (req, res) => {
    res.send("Currently using localhost3000");
});

// Middleware untuk rute dengan prefix /api/grb
app.use('/api/grb', grbRoutes);

// Menjalankan server pada port yang telah ditentukan
app.listen(port, () =>
    console.log(`App listening at http://localhost:${port}`)
);