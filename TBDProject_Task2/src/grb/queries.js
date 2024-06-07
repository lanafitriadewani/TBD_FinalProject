const getBooks = "SELECT * FROM books_information"; // Query untuk mendapatkan semua buku dari view books_information
const getCustomer = "SELECT * FROM customers"; // Query untuk mendapatkan semua pelanggan dari tabel customers
const getWishlist = "SELECT * FROM customer_wishlist"; // Query untuk mendapatkan semua wishlist dari view customer_wishlist
const getBookByTitle = "SELECT * FROM books_information WHERE title = $1"; // Query untuk mendapatkan buku berdasarkan judul
const getBookByAuthor = "SELECT * FROM books_information WHERE author_name = $1"; // Query untuk mendapatkan buku berdasarkan nama penulis
const updateBooks = "UPDATE books SET price = $1, stock_quantity = $2 WHERE title = $3"; // Query untuk memperbarui buku berdasarkan judul
const addWishlist = "INSERT INTO wishlist (wishlist_id, customer_id, book_id) VALUES ($1, $2, (SELECT book_id FROM books WHERE title = $3))"; // Query untuk menambahkan wishlist baru
const deleteWishlist = "DELETE FROM wishlist WHERE wishlist_id = $1"; // Query untuk menghapus wishlist berdasarkan ID

module.exports = {
    getBooks,
    getCustomer,
    getWishlist,
    getBookByTitle,
    getBookByAuthor,
    updateBooks,
    addWishlist,
    deleteWishlist,
};