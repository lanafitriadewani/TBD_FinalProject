const pool = require('../../db'); // Mengimpor pool dari db.js untuk koneksi ke database
const queries = require('./queries'); // Mengimpor query dari queries.js

// Fungsi untuk mendapatkan semua buku dari database
const getBooks = (req, res) => {
    pool.query(queries.getBooks, (error, results) => {
        if (error) throw error;
        res.status(200).json(results.rows);
    });

    console.log("Getting Books");
};

// Fungsi untuk mendapatkan semua pelanggan dari database
const getCustomer = (req, res) => {
    pool.query(queries.getCustomer, (error, results) => {
        if (error) throw error;
        res.status(200).json(results.rows);
    });

    console.log("Getting Customer");
};

// Fungsi untuk mendapatkan semua wishlist pelanggan dari database
const getWishlist = (req, res) => {
    pool.query(queries.getWishlist, (error, results) => {
        if (error) throw error;
        res.status(200).json(results.rows);
    });

    console.log("Getting Wishlist");
};

// Fungsi untuk mendapatkan buku berdasarkan judul dari database
const getBookByTitle = (req, res) => {
    const title = req.params.title;
    pool.query(queries.getBookByTitle, [title], (error, results) => {
        if (error) throw error;
        res.status(200).json(results.rows);
    });

    console.log(`Getting Book with Title: ${title}`);
};

// Fungsi untuk mendapatkan buku berdasarkan nama penulis dari database
const getBookByAuthor = (req, res) => {
    const authorName = req.params.authorName;
    pool.query(queries.getBookByAuthor, [authorName], (error, results) => {
        if (error) throw error;
        res.status(200).json(results.rows);
    });

    console.log(`Getting Book by Author: ${authorName}`);
};

// Fungsi untuk memperbarui buku berdasarkan judul dan memanfaatkan transaksi
const updateBooks = async (req, res) => {
    const client = await pool.connect();
    const title = req.params.title;
    const { price, stock_quantity } = req.body;

    try {
        await client.query('BEGIN'); // Memulai transaksi
        await client.query(queries.updateBooks, [price, stock_quantity, title]);
        await client.query('COMMIT'); // Menyimpan transaksi

        const result = await client.query(queries.getBookByTitle, [title]);
        res.status(200).json(result.rows);
    } catch (error) {
        await client.query('ROLLBACK'); // Membatalkan transaksi jika terjadi kesalahan
        res.status(400).send("Failed to update book. Rolled back the transaction.");
        console.error(error);
    } finally {
        client.release();
    }

    console.log(`Updating Book with Title: ${title}`);
};

// Fungsi untuk menambahkan wishlist dan memanfaatkan transaksi
const addWishlist = async (req, res) => {
    const client = await pool.connect();
    try {
        const { wishlist_id, customer_id, book_title } = req.body;
        await client.query('BEGIN'); // Memulai transaksi
        await client.query(queries.addWishlist, [wishlist_id, customer_id, book_title]);
        await client.query('COMMIT'); // Menyimpan transaksi
        
        const result = await client.query(queries.getWishlist, [title]);
        res.status(200).json(result.rows);
    } catch (error) {
        await client.query('ROLLBACK'); // Membatalkan transaksi jika terjadi kesalahan
        res.status(400).send("Failed to add wishlist. Rolled back the transaction.");
        console.error(error);
    } finally {
        client.release();
    }
};

// Fungsi untuk menghapus wishlist berdasarkan ID dan memanfaatkan transaksi
const deleteWishlist = async (req, res) => {
    const client = await pool.connect();
    const wishlist_id = req.params.wishlist_id;

    try {
        await client.query('BEGIN'); // Memulai transaksi
        await client.query(queries.deleteWishlist, [wishlist_id]);
        await client.query('COMMIT'); // Menyimpan transaksi
        
        const result = await client.query(queries.getWishlist, [title]);
        res.status(200).json(result.rows);
    } catch (error) {
        await client.query('ROLLBACK'); // Membatalkan transaksi jika terjadi kesalahan
        res.status(400).send("Failed to delete wishlist. Rolled back the transaction.");
        console.error(error);
    } finally {
        client.release();
    }

    console.log(`Deleting Wishlist with ID: ${wishlist_id}`);
};

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
