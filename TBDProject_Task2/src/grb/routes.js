const { Router } = require('express');
const controller = require('./controller');

const router = Router();

router.get("/books", controller.getBooks);
router.get("/customer", controller.getCustomer);
router.get("/customer/wishlist", controller.getWishlist);
router.get("/books/title/:title", controller.getBookByTitle);
router.get("/books/author/:authorName", controller.getBookByAuthor);
router.put("/books/update/:title", controller.updateBooks);
router.post("/customer/wishlist/add", controller.addWishlist);

module.exports = router;
