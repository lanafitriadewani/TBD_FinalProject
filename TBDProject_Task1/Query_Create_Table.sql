BEGIN;

CREATE TABLE IF NOT EXISTS public.users
(
    user_id integer,
    customer_id integer,
    username character varying,
    password_hash character varying,
    email character varying,
    full_name character varying,
    PRIMARY KEY (user_id)
);

CREATE TABLE IF NOT EXISTS public.authors
(
    author_id integer,
    name character varying,
    date_of_birth date,
    PRIMARY KEY (author_id)
);

CREATE TABLE IF NOT EXISTS public.publisher
(
    publisher_id integer,
    name character varying,
    address character varying,
    phone character varying,
    PRIMARY KEY (publisher_id)
);

CREATE TABLE IF NOT EXISTS public.books
(
    book_id integer,
    title character varying,
    author_id integer,
    publisher_id integer,
    "ISBN" character varying,
    publication_date date,
    price money,
    stock_quantity integer,
    PRIMARY KEY (book_id)
);

CREATE TABLE IF NOT EXISTS public.genres
(
    genre_id integer,
    name character varying,
    description text,
    PRIMARY KEY (genre_id)
);

CREATE TABLE IF NOT EXISTS public.customers
(
    customer_id integer,
    name character varying,
    address character varying,
    phone character varying,
    PRIMARY KEY (customer_id)
);

CREATE TABLE IF NOT EXISTS public.wishlist
(
    wishlist_id integer,
    customer_id integer,
    book_id integer,
    PRIMARY KEY (wishlist_id)
);

CREATE TABLE IF NOT EXISTS public.stores
(
    store_id integer,
    name character varying,
    address character varying,
    phone character varying,
    PRIMARY KEY (store_id)
);

CREATE TABLE IF NOT EXISTS public.inventory
(
    inventory_id integer,
    store_id integer,
    book_id integer,
    quantity integer,
    PRIMARY KEY (inventory_id)
);

CREATE TABLE IF NOT EXISTS public.staff
(
    staff_id integer,
    store_id integer,
    name character varying,
    "position" character varying,
    email character varying,
    phone character varying,
    salary money,
    PRIMARY KEY (staff_id)
);

CREATE TABLE IF NOT EXISTS public.sales
(
    sale_id integer,
    store_id integer,
    customer_id integer,
    total_amount money,
    sale_date date,
    PRIMARY KEY (sale_id)
);

CREATE TABLE IF NOT EXISTS public.sale_items
(
    sale_item_id integer,
    sale_id integer,
    book_id integer,
    quantity integer,
    price money,
    PRIMARY KEY (sale_item_id)
);

CREATE TABLE IF NOT EXISTS public.reviews
(
    review_id integer,
    user_id integer,
    book_id integer,
    rating numeric,
    comment text,
    PRIMARY KEY (review_id)
);

CREATE TABLE IF NOT EXISTS public.categories
(
    category_id integer,
    name character varying,
    description text,
    PRIMARY KEY (category_id)
);

CREATE TABLE IF NOT EXISTS public.books_categories
(
    books_book_id integer,
    categories_category_id integer
);

CREATE TABLE IF NOT EXISTS public.suppliers
(
    supplier_id integer,
    name character varying,
    email character varying,
    phone character varying,
    address character varying,
    PRIMARY KEY (supplier_id)
);

CREATE TABLE IF NOT EXISTS public.purchases
(
    purchase_id integer,
    supplier_id integer,
    purchase_date date,
    total_amount money,
    PRIMARY KEY (purchase_id)
);

CREATE TABLE IF NOT EXISTS public.purchase_items
(
    purchase_item_id integer,
    purchase_id integer,
    book_id integer,
    quantity integer,
    price_per_item money,
    PRIMARY KEY (purchase_item_id)
);

CREATE TABLE IF NOT EXISTS public.books_genres
(
    books_book_id integer,
    genres_genre_id integer
);

ALTER TABLE IF EXISTS public.users
    ADD CONSTRAINT customer_id FOREIGN KEY (customer_id)
    REFERENCES public.customers (customer_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.books
    ADD CONSTRAINT author_id FOREIGN KEY (author_id)
    REFERENCES public.authors (author_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.books
    ADD CONSTRAINT publisher_id FOREIGN KEY (publisher_id)
    REFERENCES public.publisher (publisher_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.wishlist
    ADD CONSTRAINT customer_id FOREIGN KEY (customer_id)
    REFERENCES public.customers (customer_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.wishlist
    ADD CONSTRAINT book_id FOREIGN KEY (book_id)
    REFERENCES public.books (book_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.inventory
    ADD CONSTRAINT store_id FOREIGN KEY (store_id)
    REFERENCES public.stores (store_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.inventory
    ADD CONSTRAINT book_id FOREIGN KEY (book_id)
    REFERENCES public.books (book_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.staff
    ADD CONSTRAINT store_id FOREIGN KEY (store_id)
    REFERENCES public.stores (store_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.sales
    ADD CONSTRAINT store_id FOREIGN KEY (store_id)
    REFERENCES public.stores (store_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.sales
    ADD CONSTRAINT customer_id FOREIGN KEY (customer_id)
    REFERENCES public.customers (customer_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.sale_items
    ADD CONSTRAINT sale_id FOREIGN KEY (sale_id)
    REFERENCES public.sales (sale_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.sale_items
    ADD CONSTRAINT book_id FOREIGN KEY (book_id)
    REFERENCES public.books (book_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.reviews
    ADD CONSTRAINT user_id FOREIGN KEY (user_id)
    REFERENCES public.users (user_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.reviews
    ADD CONSTRAINT book_id FOREIGN KEY (book_id)
    REFERENCES public.books (book_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.books_categories
    ADD FOREIGN KEY (books_book_id)
    REFERENCES public.books (book_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.books_categories
    ADD FOREIGN KEY (categories_category_id)
    REFERENCES public.categories (category_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.purchases
    ADD CONSTRAINT supplier_id FOREIGN KEY (supplier_id)
    REFERENCES public.suppliers (supplier_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.purchase_items
    ADD CONSTRAINT book_id FOREIGN KEY (book_id)
    REFERENCES public.books (book_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.purchase_items
    ADD CONSTRAINT purchase_id FOREIGN KEY (purchase_id)
    REFERENCES public.purchases (purchase_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.books_genres
    ADD FOREIGN KEY (books_book_id)
    REFERENCES public.books (book_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.books_genres
    ADD FOREIGN KEY (genres_genre_id)
    REFERENCES public.genres (genre_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;

END;