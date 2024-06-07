const getBooks = "SELECT * FROM books_information";
const getCustomer = "SELECT * FROM customers";
const getWishlist = "SELECT * FROM customer_wishlist";
const getBookByTitle = "SELECT * FROM books_information WHERE title = $1";
const getBookByAuthor = "SELECT * FROM books_information WHERE author_name = $1";
const updateBooks = "UPDATE books SET price = $1, stock_quantity = $2 WHERE title = $3";
const addWishlist = "INSERT INTO wishlist (wishlist_id, customer_id, book_id) VALUES ($1, $2, (SELECT book_id FROM books WHERE title = $3))";

module.exports = {
    getBooks,
    getCustomer,
    getWishlist,
    getBookByTitle,
    getBookByAuthor,
    updateBooks,
    addWishlist,
};
