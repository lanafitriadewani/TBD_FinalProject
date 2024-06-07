const pool = require('../../db');
const queries = require('./queries');

const getBooks = (req, res) => {
    pool.query(queries.getBooks, (error, results) => {
        if (error) throw error;
        res.status(200).json(results.rows);
    });

    console.log("Getting Books");
};

const getCustomer = (req, res) => {
    pool.query(queries.getCustomer, (error, results) => {
        if (error) throw error;
        res.status(200).json(results.rows);
    });

    console.log("Getting Customer");
};

const getWishlist = (req, res) => {
    pool.query(queries.getWishlist, (error, results) => {
        if (error) throw error;
        res.status(200).json(results.rows);
    });

    console.log("Getting Wishlist");
};

const getBookByTitle = (req, res) => {
    const title = req.params.title;
    pool.query(queries.getBookByTitle, [title], (error, results) => {
        if (error) throw error;
        res.status(200).json(results.rows);
    });

    console.log(`Getting Book with Title: ${title}`);
};

const getBookByAuthor = (req, res) => {
    const authorName = req.params.authorName;
    pool.query(queries.getBookByAuthor, [authorName], (error, results) => {
        if (error) throw error;
        res.status(200).json(results.rows);
    });

    console.log(`Getting Book by Author: ${authorName}`);
};

const updateBooks = async (req, res) => {
    const client = await pool.connect();
    const title = req.params.title;
    const { price, stock_quantity } = req.body;

    try {
        await client.query('BEGIN');
        await client.query(queries.updateBooks, [price, stock_quantity, title]);
        await client.query('COMMIT');

        // Setelah pembaruan, ambil data dari books_information
        const result = await client.query(queries.getBookByTitle, [title]);
        res.status(200).json(result.rows);
    } catch (error) {
        await client.query('ROLLBACK');
        res.status(400).send("Failed to update book. Rolled back the transaction.");
        console.error(error);
    } finally {
        client.release();
    }

    console.log(`Updating Book with Title: ${title}`);
};

const addWishlist = async (req, res) => {
    const client = await pool.connect();
    try {
        const { wishlist_id, customer_id, book_title } = req.body;
        await client.query('BEGIN');
        await client.query(queries.addWishlist, [wishlist_id, customer_id, book_title]);
        await client.query('COMMIT');
        res.status(200).send("Wishlist added and committed successfully.");
    } catch (error) {
        await client.query('ROLLBACK');
        res.status(400).send("Failed to add wishlist. Rolled back the transaction.");
        console.error(error);
    } finally {
        client.release();
    }
};

module.exports = {
    getBooks,
    getCustomer,
    getWishlist,
    getBookByTitle,
    getBookByAuthor,
    updateBooks,
    addWishlist,
};
