CREATE VIEW customer_wishlist AS
	SELECT 
    c.name AS customer_name, 
    b.title AS book_title
	FROM 
	public.customers c
	JOIN 
    public.wishlist w ON c.customer_id = w.customer_id
	JOIN 
    public.books b ON w.book_id = b.book_id;

CREATE VIEW books_information AS
	SELECT
	b.book_id, 
    b.title, 
    a.name AS author_name, 
    p.name AS publisher_name, 
    g.name AS genre_name, 
    c.name AS category_name
	FROM 
    public.books b
	JOIN 
    public.authors a ON b.author_id = a.author_id
	JOIN 
    public.publisher p ON b.publisher_id = p.publisher_id
	JOIN 
    public.books_genres bg ON b.book_id = bg.books_book_id
	JOIN 
    public.genres g ON bg.genres_genre_id = g.genre_id
	JOIN 
    public.books_categories bc ON b.book_id = bc.books_book_id
	JOIN 
    public.categories c ON bc.categories_category_id = c.category_id;

CREATE VIEW sales_information AS
	SELECT
    s.sale_id,
    s.sale_date,
    c.name AS customer_name,
    b.title AS book_title,
    si.quantity,
    si.price
	FROM
    public.sales s
	JOIN
    public.customers c ON s.customer_id = c.customer_id
	JOIN
    public.sale_items si ON s.sale_id = si.sale_id
	JOIN
    public.books b ON si.book_id = b.book_id
	ORDER BY
    s.sale_id, si.sale_item_id;
