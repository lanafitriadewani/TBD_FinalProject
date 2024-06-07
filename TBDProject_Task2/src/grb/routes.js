const { Router } = require('express'); // Mengimpor Router dari modul Express
const controller = require('./controller'); // Mengimpor controller untuk menangani logika bisnis

const router = Router(); // Membuat instance Router

router.get("/books", controller.getBooks); // Route untuk mendapatkan semua buku
router.get("/customer", controller.getCustomer); // Route untuk mendapatkan semua pelanggan
router.get("/customer/wishlist", controller.getWishlist); // Route untuk mendapatkan semua wishlist pelanggan
router.get("/books/title/:title", controller.getBookByTitle); // Route untuk mendapatkan buku berdasarkan judul
router.get("/books/author/:authorName", controller.getBookByAuthor); // Route untuk mendapatkan buku berdasarkan nama penulis
router.put("/books/update/:title", controller.updateBooks); // Route untuk memperbarui buku berdasarkan judul
router.post("/customer/wishlist/add", controller.addWishlist); // Route untuk menambahkan wishlist baru
router.delete("/customer/wishlist/delete/:wishlist_id", controller.deleteWishlist); // Route untuk menghapus wishlist berdasarkan ID

module.exports = router; // Mengekspor router untuk digunakan di file lain