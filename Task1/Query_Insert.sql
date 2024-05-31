INSERT INTO public.authors (author_id, name, date_of_birth) 
	VALUES
	(1, 'Pramoedya Ananta Toer', '1925-02-06'),
	(2, 'Andrea Hirata', '1967-10-24'),
	(3, 'Dewi Lestari', '1976-01-20'),
	(4, 'Ahmad Tohari', '1948-06-13'),
	(5, 'Tere Liye', '1979-05-21'),
	(6, 'Ayu Utami', '1968-11-21'),
	(7, 'Goenawan Mohamad', '1941-07-29'),
	(8, 'Mira W', '1951-09-13'),
	(9, 'Sapardi Djoko Damono', '1940-03-20'),
	(10, 'Habiburrahman El Shirazy', '1976-09-30'),
	(11, 'J.K. Rowling', '1965-07-31'),
	(12, 'George Orwell', '1903-06-25'),
	(13, 'Jane Austen', '1775-12-16'),
	(14, 'Mark Twain', '1835-11-30'),
	(15, 'Ernest Hemingway', '1899-07-21'),
	(16, 'Agatha Christie', '1890-09-15'),
	(17, 'F. Scott Fitzgerald', '1896-09-24'),
	(18, 'Gabriel Garcia Marquez', '1927-03-06'),
	(19, 'Haruki Murakami', '1949-01-12'),
	(20, 'Leo Tolstoy', '1828-09-09');

INSERT INTO public.publisher (publisher_id, name, address, phone) 
	VALUES
	(1, 'Lentera Dipantara', 'Jakarta, Indonesia', '021-53650110'),
	(2, 'Bentang Pustaka', 'Yogyakarta, Indonesia', '0274-555000'),
	(3, 'Gramedia Pustaka Utama', 'Jakarta, Indonesia', '021-7273717'),
	(4, 'Republika', 'Jakarta, Indonesia', '021-53699814'),
	(5, 'Grafiti Pustaka Utama', 'Jakarta, Indonesia', '021-53698201'),
	(6, 'Kompas Gramedia', 'Jakarta, Indonesia', '021-53694000'),
	(7, 'Falcon Publishing', 'Jakarta, Indonesia', '021-53697200'),
	(8, 'Bhuana Ilmu Populer', 'Jakarta, Indonesia', '021-53693210'),
	(9, 'Kepustakaan Populer Gramedia', 'Jakarta, Indonesia', '021-53696100'),
	(10, 'Noura Books', 'Jakarta, Indonesia', '021-53697300'),
	(11, 'Bloomsbury Publishing', 'London, UK', '+44-20-7631-5600'),
	(12, 'Secker & Warburg', 'London, UK', '+44-20-7139-4000'),
	(13, 'Collins Crime Club', 'New York, USA', '+1-212-207-7000'),
	(14, 'American Publishing Company', 'New York, USA', '+1-212-782-9000'),
	(15, 'Macmillan Publishers', 'London, UK', '+44-20-7833-4000'),
	(16, 'Simon & Schuster', 'New York, USA', '+1-212-698-7000'),
	(17, 'Charles Scribners Sons', 'New York, USA', '+1-212-364-1100'),
	(18, 'Harper Perennial Modern Classics', 'New York, USA', '+1-212-343-6100'),
	(19, 'Knopf Doubleday Publishing Group', 'New York, USA', '+1-212-206-5300'),
	(20, 'Alfred A. Knopf', 'New York, USA', '+1-212-572-2000');

INSERT INTO public.books (book_id, title, author_id, publisher_id, "ISBN", publication_date, price, stock_quantity) 
	VALUES
	(1, 'Bumi Manusia', 1, 1, '9978-979-97312-3-4', '1980-08-01', 100000, 50),
	(2, 'Laskar Pelangi', 2, 2, '979-3062-79-7', '2005-09-01', 85000, 60),
	(3, 'Supernova: Kesatria, Putri, & Bintang Jatuh', 3, 2, '978-602-291-052-7', '2001-02-16', 150000, 40),
	(4, 'Ronggeng Dukuh Paruk', 4, 3, '978-979-22-0196-3', '1982-03-01', 90000, 30),
	(5, 'Hafalan Shalat Delisa', 5, 4, ' 979-321-060-5', '2005-04-01', 75000, 70),
	(6, 'Saman', 6, 9, '979-9023-17-3', '1998-04-01', 35000, 20),
	(7, 'Catatan Pinggir', 7, 5, '979-9065-17-8', '1982-06-01', 85000, 60),
	(8, 'Cinta Dalam Gelas', 2, 2, '978-602-8811-31-6', '2011-07-01', 70000, 90),
	(9, 'Hujan Bulan Juni', 9, 3, '978-602-03-1843-1', '1994-08-01', 65000, 80),
	(10, 'Ayat-ayat Cinta', 10, 4, '979-3601-02-6', '2007-09-01', 80000, 50),
	(11, 'Harry Potter and the Sorcerer''s Stone', 11, 11, '979-655-851-3', '1997-06-26', 150000, 200),
	(12, '1984', 12, 12, '978-144-3434-97-3', '1949-06-08', 120000, 150),
	(13, 'Pride and Prejudice', 13, 16, '978-014-1439-51-8', '1813-01-28', 100000, 100),
	(14, 'The Adventures of Tom Sawyer', 14, 14, '978-602-0384-79-5', '1876-04-30', 90000, 110),
	(15, 'The Old Man and the Sea', 15, 15, '978-068-4801-22-3', '1952-09-01', 85000, 120),
	(16, 'Murder on the Orient Express', 16, 13, '978-979-2229-80-6', '1934-01-01', 95000, 130),
	(17, 'The Great Gatsby', 17, 17, '978-074-327-356-5', '1925-04-10', 100000, 140),
	(18, 'One Hundred Years of Solitude', 18, 18, '978-006-112-009-1', '1967-06-05', 130000, 80),
	(19, 'Kafka on the Shore', 19, 19, '978-140-007-927-8', '2002-09-12', 140000, 70),
	(20, 'War and Peace', 20, 20, '978-071-399-833-7', '1869-01-01', 180000, 60);

INSERT INTO public.genres (genre_id, name, description) 
	VALUES
	(1, 'Fiksi', 'Karya sastra yang menceritakan kejadian imajinatif.'),
	(2, 'Non-Fiksi', 'Buku berdasarkan fakta dan kejadian nyata.'),
	(3, 'Misteri', 'Cerita yang berpusat pada penyelidikan dan pengungkapan.'),
	(4, 'Fiksi Ilmiah', 'Cerita yang melibatkan ilmu pengetahuan dan teknologi.'),
	(5, 'Fantasi', 'Cerita yang mengandung unsur magis dan dunia imajinatif.'),
	(6, 'Romansa', 'Cerita cinta dan hubungan romantis.'),
	(7, 'Horror', 'Cerita yang menakutkan dan mengerikan.'),
	(8, 'Biografi', 'Kisah hidup seseorang yang ditulis oleh orang lain.'),
	(9, 'Sejarah', 'Buku yang membahas kejadian di masa lalu.'),
	(10, 'Petualangan', 'Cerita tentang perjalanan dan eksplorasi.'),
	(11, 'Thriller', 'Cerita yang penuh ketegangan dan aksi.'),
	(12, 'Drama', 'Cerita yang fokus pada konflik emosional.'),
	(13, 'Komedi', 'Cerita yang lucu dan menghibur.'),
	(14, 'Pendidikan', 'Buku yang bertujuan untuk mendidik pembaca.'),
	(15, 'Filsafat', 'Buku yang membahas tentang pemikiran dan kehidupan.'),
	(16, 'Agama', 'Buku yang berhubungan dengan keyakinan dan praktik keagamaan.'),
	(17, 'Psikologi', 'Buku yang membahas tentang pikiran dan perilaku manusia.'),
	(18, 'Puisi', 'Karya sastra dalam bentuk puisi.'),
	(19, 'Kesehatan', 'Buku yang membahas tentang kesehatan dan kesejahteraan.'),
	(20, 'Teknologi', 'Buku yang berhubungan dengan perkembangan teknologi.');

INSERT INTO public.categories (category_id, name, description) 
	VALUES
	(1, 'Sastra Indonesia', 'Karya sastra dari penulis Indonesia.'),
	(2, 'Sastra Dunia', 'Karya sastra dari penulis internasional.'),
	(3, 'Buku Anak', 'Buku yang ditujukan untuk anak-anak.'),
	(4, 'Buku Remaja', 'Buku yang ditujukan untuk remaja.'),
	(5, 'Ensiklopedia', 'Buku referensi dengan informasi umum dari berbagai bidang.'),
	(6, 'Kamus', 'Buku referensi yang berisi daftar kata dan maknanya.'),
	(7, 'Panduan Belajar', 'Buku yang membantu pembaca belajar suatu topik.'),
	(8, 'Komik', 'Buku yang berisi cerita bergambar.'),
	(9, 'Buku Masak', 'Buku yang berisi resep dan panduan memasak.'),
	(10, 'Seni dan Desain', 'Buku yang berhubungan dengan seni dan desain.'),
	(11, 'Bisnis dan Ekonomi', 'Buku yang membahas tentang bisnis dan ekonomi.'),
	(12, 'Travel', 'Buku panduan perjalanan dan destinasi wisata.'),
	(13, 'Fotografi', 'Buku yang membahas tentang seni fotografi.'),
	(14, 'Politik', 'Buku yang membahas tentang politik dan pemerintahan.'),
	(15, 'Hukum', 'Buku yang berhubungan dengan hukum dan peraturan.'),
	(16, 'Musik', 'Buku yang membahas tentang musik dan musisi.'),
	(17, 'Olahraga', 'Buku yang membahas tentang olahraga dan kebugaran.'),
	(18, 'Peternakan dan Pertanian', 'Buku yang berhubungan dengan peternakan dan pertanian.'),
	(19, 'Lingkungan', 'Buku yang membahas tentang lingkungan dan konservasi.'),
	(20, 'Arsitektur', 'Buku yang berhubungan dengan desain dan konstruksi bangunan.');

INSERT INTO public.books_genres (books_book_id, genres_genre_id) 
	VALUES
	(1, 9),  -- 'Bumi Manusia' - Sejarah
	(2, 12),  -- 'Laskar Pelangi' - Drama
	(3, 4),  -- 'Supernova' - Fiksi Ilmiah
	(4, 9),  -- 'Ronggeng Dukuh Paruk' - Sejarah
	(5, 16),  -- 'Hafalan Shalat Delisa' - Agama
	(6, 6),  -- 'Saman' - Romansa
	(7, 2),  -- 'Catatan Pinggir' - Non-Fiksi
	(8, 12),  -- 'Cinta Dalam Gelas' - Drama
	(9, 6),  -- 'Hujan Bulan Juni' - Romansa
	(10, 16), -- 'Ayat-ayat Cinta' - Agama
	(11, 5), -- 'Harry Potter and the Sorcerer's Stone' - Fantasi
	(12, 3), -- '1984' - Misteri
	(13, 6), -- 'Pride and Prejudice' - Romansa
	(14, 10),-- 'The Adventures of Tom Sawyer' - Petualangan
	(15, 11),-- 'The Old Man and the Sea' - Thriller
	(16, 3), -- 'Murder on the Orient Express' - Misteri
	(17, 11),-- 'The Great Gatsby' - Thriller
	(18, 4), -- 'One Hundred Years of Solitude' - Fiksi Ilmiah
	(19, 5), -- 'Kafka on the Shore' - Fantasi
	(20, 9); -- 'War and Peace' - Sejarah

INSERT INTO public.books_categories (books_book_id, categories_category_id) 
	VALUES
	(1, 1),  -- 'Bumi Manusia' - Sastra Indonesia
	(2, 1),  -- 'Laskar Pelangi' - Sastra Indonesia
	(3, 1),  -- 'Supernova' - Sastra Indonesia
	(4, 1),  -- 'Ronggeng Dukuh Paruk' - Sastra Indonesia
	(5, 1),  -- 'Hafalan Shalat Delisa' - Sastra Indonesia
	(6, 1),  -- 'Saman' - Sastra Indonesia
	(7, 1),  -- 'Catatan Pinggir' - Sastra Indonesia
	(8, 1),  -- 'Cinta Dalam Gelas' - Sastra Indonesia
	(9, 1),  -- 'Hujan Bulan Juni' - Sastra Indonesia
	(10, 1), -- 'Ayat-ayat Cinta' - Sastra Indonesia
	(11, 2), -- 'Harry Potter and the Sorcerer''s Stone' - Sastra Dunia
	(12, 2), -- '1984' - Sastra Dunia
	(13, 2), -- 'Pride and Prejudice' - Sastra Dunia
	(14, 2), -- 'The Adventures of Tom Sawyer' - Sastra Dunia
	(15, 2), -- 'The Old Man and the Sea' - Sastra Dunia
	(16, 2), -- 'Murder on the Orient Express' - Sastra Dunia
	(17, 2), -- 'The Great Gatsby' - Sastra Dunia
	(18, 2), -- 'One Hundred Years of Solitude' - Sastra Dunia
	(19, 2), -- 'Kafka on the Shore' - Sastra Dunia
	(20, 2); -- 'War and Peace' - Sastra Dunia

INSERT INTO public.customers (customer_id, name, address, phone) 
	VALUES
	(1, 'Ahmad Fauzi', 'Jl. Merdeka No. 10, Yogyakarta', '081234567890'),
	(2, 'Budi Santoso', 'Jl. Diponegoro No. 5, Jakarta', '081234567891'),
	(3, 'Citra Dewi', 'Jl. Sudirman No. 7, Bandung', '081234567892'),
	(4, 'Dewi Lestari', 'Jl. Malioboro No. 3, Semarang', '081234567893'),
	(5, 'Eko Prasetyo', 'Jl. Kaliurang No. 20, Bali', '081234567894'),
	(6, 'Fajar Nugroho', 'Jl. Godean No. 15, Makassar', '081234567895'),
	(7, 'Gita Ramadhani', 'Jl. Parangtritis No. 8, Surabaya', '081234567896'),
	(8, 'Hendra Wijaya', 'Jl. Magelang No. 12, Pontianak', '081234567897'),
	(9, 'Ika Putri', 'Jl. Solo No. 14, Padang', '081234567898'),
	(10, 'Joko Susilo', 'Jl. Ringroad Utara No. 6, Yogyakarta', '081234567899'),
	(11, 'Kartika Sari', 'Jl. Monjali No. 16, Jakarta', '081234567800'),
	(12, 'Lia Rahmawati', 'Jl. Pandega No. 18, Bandung', '081234567801'),
	(13, 'Maya Sari', 'Jl. Kenari No. 11, Semarang', '081234567802'),
	(14, 'Nurul Huda', 'Jl. Wijilan No. 22, Bali', '081234567803'),
	(15, 'Oki Setiawan', 'Jl. Timoho No. 19, Makassar', '081234567804'),
	(16, 'Putri Ayu', 'Jl. Tamansari No. 25, Surabaya', '081234567805'),
	(17, 'Qori Anwar', 'Jl. Maguwoharjo No. 13, Pontianak', '081234567806'),
	(18, 'Rina Febriani', 'Jl. Selokan Mataram No. 21, Padang', '081234567807'),
	(19, 'Sari Wulandari', 'Jl. Colombo No. 9, Yogyakarta', '081234567808'),
	(20, 'Taufik Hidayat', 'Jl. Gejayan No. 17, Jakarta', '081234567809');

INSERT INTO public.users (user_id, customer_id, username, password_hash, email, full_name) 
	VALUES
	(1, 1, 'ahmad_fauzi', 'hash1', 'ahmad.fauzi@example.com', 'Ahmad Fauzi'),
	(2, 2, 'budi_santoso', 'hash2', 'budi.santoso@example.com', 'Budi Santoso'),
	(3, 3, 'citra_dewi', 'hash3', 'citra.dewi@example.com', 'Citra Dewi'),
	(4, 4, 'dewi_lestari', 'hash4', 'dewi.lestari@example.com', 'Dewi Lestari'),
	(5, 5, 'eko_prasetyo', 'hash5', 'eko.prasetyo@example.com', 'Eko Prasetyo'),
	(6, 6, 'fajar_nugroho', 'hash6', 'fajar.nugroho@example.com', 'Fajar Nugroho'),
	(7, 7, 'gita_ramadhani', 'hash7', 'gita.ramadhani@example.com', 'Gita Ramadhani'),
	(8, 8, 'hendra_wijaya', 'hash8', 'hendra.wijaya@example.com', 'Hendra Wijaya'),
	(9, 9, 'ika_putri', 'hash9', 'ika.putri@example.com', 'Ika Putri'),
	(10, 10, 'joko_susilo', 'hash10', 'joko.susilo@example.com', 'Joko Susilo'),
	(11, 11, 'kartika_sari', 'hash11', 'kartika.sari@example.com', 'Kartika Sari'),
	(12, 12, 'lia_rahmawati', 'hash12', 'lia.rahmawati@example.com', 'Lia Rahmawati'),
	(13, 13, 'maya_sari', 'hash13', 'maya.sari@example.com', 'Maya Sari'),
	(14, 14, 'nurul_huda', 'hash14', 'nurul.huda@example.com', 'Nurul Huda'),
	(15, 15, 'oki_setiawan', 'hash15', 'oki.setiawan@example.com', 'Oki Setiawan'),
	(16, 16, 'putri_ayu', 'hash16', 'putri.ayu@example.com', 'Putri Ayu'),
	(17, 17, 'qori_anwar', 'hash17', 'qori.anwar@example.com', 'Qori Anwar'),
	(18, 18, 'rina_febriani', 'hash18', 'rina.febriani@example.com', 'Rina Febriani'),
	(19, 19, 'sari_wulandari', 'hash19', 'sari.wulandari@example.com', 'Sari Wulandari'),
	(20, 20, 'taufik_hidayat', 'hash20', 'taufik.hidayat@example.com', 'Taufik Hidayat');

INSERT INTO public.wishlist (wishlist_id, customer_id, book_id) 
	VALUES
	(1, 1, 3), -- 
	(2, 1, 8), -- 
	(3, 2, 3), -- 
	(4, 3, 16), -- 
	(5, 5, 1), -- 
	(6, 5, 19), -- 
	(7, 6, 10), -- 
	(8, 7, 4), -- 
	(9, 8, 6), -- 
	(10, 8, 13), -- 
	(11, 8, 17), -- 
	(12, 10, 1), -- 
	(13, 11, 4), -- 
	(14, 11, 15) ,-- 
	(15, 12, 2), -- 
	(16, 13, 20), --
	(17, 14, 7), --
	(18, 16, 9), -- 
	(19, 19, 11), -- 
	(20, 19, 18); -- 

INSERT INTO public.stores (store_id, name, address, phone) 
	VALUES
	(1, 'The GRB Cabang Yogyakarta', 'Jl. Malioboro No. 1, Yogyakarta', '0274-123456'),
	(2, 'The GRB Cabang Jakarta 1', 'Jl. Sudirman No. 2, Jakarta', '021-123456'),
	(3, 'The GRB Cabang Jakarta 2', 'Jl. Thamrin No. 3, Jakarta', '021-234567'),
	(4, 'The GRB Cabang Bandung 1', 'Jl. Dago No. 4, Bandung', '022-123456'),
	(5, 'The GRB Cabang Bandung 2', 'Jl. Riau No. 5, Bandung', '022-234567'),
	(6, 'The GRB Cabang Surabaya 1', 'Jl. Tunjungan No. 6, Surabaya', '031-123456'),
	(7, 'The GRB Cabang Surabaya 2', 'Jl. Pemuda No. 7, Surabaya', '031-234567'),
	(8, 'The GRB Cabang Semarang', 'Jl. Pemuda No. 8, Semarang', '024-123456'),
	(9, 'The GRB Cabang Bali 1', 'Jl. Kuta No. 9, Bali', '0361-123456'),
	(10, 'The GRB Cabang Bali 2', 'Jl. Sanur No. 10, Bali', '0361-234567'),
	(11, 'The GRB Cabang Makassar', 'Jl. Pettarani No. 11, Makassar', '0411-123456'),
	(12, 'The GRB Cabang Pontianak', 'Jl. Gajah Mada No. 12, Pontianak', '0561-123456'),
	(13, 'The GRB Cabang Padang', 'Jl. S. Parman No. 13, Padang', '0751-123456'),
	(14, 'The GRB Cabang Yogyakarta 2', 'Jl. Gejayan No. 14, Yogyakarta', '0274-234567'),
	(15, 'The GRB Cabang Jakarta 3', 'Jl. Rasuna Said No. 15, Jakarta', '021-345678'),
	(16, 'The GRB Cabang Bandung 3', 'Jl. Setiabudi No. 16, Bandung', '022-345678'),
	(17, 'The GRB Cabang Surabaya 3', 'Jl. Diponegoro No. 17, Surabaya', '031-345678'),
	(18, 'The GRB Cabang Bali 3', 'Jl. Ubud No. 18, Bali', '0361-345678'),
	(19, 'The GRB Cabang Makassar 2', 'Jl. Alauddin No. 19, Makassar', '0411-234567'),
	(20, 'The GRB Cabang Pontianak 2', 'Jl. Diponegoro No. 20, Pontianak', '0561-234567');

INSERT INTO public.staff (staff_id, store_id, name, "position", email, phone, salary) 
	VALUES
	(1, 1, 'Ahmad Hidayat', 'Manager', 'ahmad.hidayat@grb.com', '081234567890', 5000000),
	(2, 2, 'Budi Wibowo', 'Assistant Manager', 'budi.wibowo@grb.com', '081234567891', 4500000),
	(3, 3, 'Citra Lestari', 'Cashier', 'citra.lestari@grb.com', '081234567892', 3000000),
	(4, 4, 'Dewi Andini', 'Sales', 'dewi.andini@grb.com', '081234567893', 3200000),
	(5, 5, 'Eko Rahardjo', 'Stock Manager', 'eko.rahardjo@grb.com', '081234567894', 3500000),
	(6, 6, 'Fajar Setiawan', 'Cashier', 'fajar.setiawan@grb.com', '081234567895', 3000000),
	(7, 7, 'Gita Pertiwi', 'Sales', 'gita.pertiwi@grb.com', '081234567896', 3200000),
	(8, 8, 'Hendra Wijaya', 'Cashier', 'hendra.wijaya@grb.com', '081234567897', 3000000),
	(9, 9, 'Ika Novita', 'Stock Manager', 'ika.novita@grb.com', '081234567898', 3500000),
	(10, 10, 'Joko Sugiarto', 'Manager', 'joko.sugiarto@grb.com', '081234567899', 5000000),
	(11, 11, 'Kartika Sari', 'Sales', 'kartika.sari@grb.com', '081234567800', 3200000),
	(12, 12, 'Lia Pratiwi', 'Assistant Manager', 'lia.pratiwi@grb.com', '081234567801', 4500000),
	(13, 13, 'Maya Fitriani', 'Cashier', 'maya.fitriani@grb.com', '081234567802', 3000000),
	(14, 14, 'Nurul Huda', 'Sales', 'nurul.huda@grb.com', '081234567803', 3200000),
	(15, 15, 'Oki Setiawan', 'Manager', 'oki.setiawan@grb.com', '081234567804', 5000000),
	(16, 16, 'Putri Ayu', 'Assistant Manager', 'putri.ayu@grb.com', '081234567805', 4500000),
	(17, 17, 'Qori Anwar', 'Stock Manager', 'qori.anwar@grb.com', '081234567806', 3500000),
	(18, 18, 'Rina Febriani', 'Cashier', 'rina.febriani@grb.com', '081234567807', 3000000),
	(19, 19, 'Sari Wulandari', 'Sales', 'sari.wulandari@grb.com', '081234567808', 3200000),
	(20, 20, 'Taufik Hidayat', 'Manager', 'taufik.hidayat@grb.com', '081234567809', 5000000);

INSERT INTO public.inventory (inventory_id, store_id, book_id, quantity) 
	VALUES
	(1, 1, 1, 50),
	(2, 1, 2, 30),
	(3, 2, 3, 20),
	(4, 2, 4, 25),
	(5, 3, 5, 40),
	(6, 3, 6, 35),
	(7, 4, 7, 45),
	(8, 4, 8, 50),
	(9, 5, 9, 55),
	(10, 5, 10, 60),
	(11, 6, 11, 25),
	(12, 6, 12, 30),
	(13, 7, 13, 35),
	(14, 7, 14, 40),
	(15, 8, 15, 45),
	(16, 8, 16, 50),
	(17, 9, 17, 55),
	(18, 9, 18, 60),
	(19, 10, 19, 65),
	(20, 10, 20, 70);

INSERT INTO public.reviews (review_id, user_id, book_id, rating, comment) 
	VALUES
	(1, 1, 1, 8.5, 'Buku yang sangat menginspirasi dan penuh wawasan.'),
	(2, 2, 2, 7.0, 'Ceritanya menarik, namun agak lambat di tengah-tengah.'),
	(3, 3, 3, 9.0, 'Sangat mendetail dan informatif.'),
	(4, 4, 4, 6.5, 'Cukup bagus, tapi ada beberapa bagian yang membingungkan.'),
	(5, 5, 5, 7.5, 'Bagus untuk referensi akademik.'),
	(6, 6, 6, 8.0, 'Gaya penulisannya sangat menyenangkan untuk dibaca.'),
	(7, 7, 7, 9.5, 'Buku yang luar biasa, saya sangat merekomendasikannya.'),
	(8, 8, 8, 7.8, 'Informasi yang disajikan sangat berharga.'),
	(9, 9, 9, 8.2, 'Sangat menyenangkan, saya banyak belajar dari buku ini.'),
	(10, 10, 10, 6.8, 'Cukup bagus, tapi ada bagian yang kurang jelas.'),
	(11, 11, 11, 8.9, 'Luar biasa, sangat menginspirasi.'),
	(12, 12, 12, 7.3, 'Buku yang bagus untuk pemula.'),
	(13, 13, 13, 9.7, 'Saya sangat menikmati setiap halaman dari buku ini.'),
	(14, 14, 14, 6.7, 'Menarik, tapi tidak sesuai ekspektasi saya.'),
	(15, 15, 15, 8.4, 'Penulisan yang sangat baik dan mudah dipahami.'),
	(16, 16, 16, 7.9, 'Cukup informatif, namun ada beberapa kekurangan.'),
	(17, 17, 17, 9.1, 'Sangat direkomendasikan untuk semua orang.'),
	(18, 18, 18, 6.9, 'Cukup bagus, tapi ada beberapa kesalahan kecil.'),
	(19, 19, 19, 8.6, 'Sangat detail dan kaya informasi.'),
	(20, 20, 20, 7.6, 'Bagus, tapi bisa lebih baik di beberapa bagian.');

INSERT INTO public.sales (sale_id, store_id, customer_id, total_amount, sale_date) 
	VALUES
	(1, 2, 20, 375000, '2024-01-01'),
	(2, 5, 12, 200000, '2024-01-01'),
	(3, 13, 18, 150000, '2024-01-01'),
	(4, 4, 3, 120000, '2024-01-03'),
	(5, 11, 15, 100000, '2024-01-05'),
	(6, 18, 14, 140000, '2024-01-05'),
	(7, 3, 11, 150000, '2024-01-06'),
	(8, 1, 19, 300000, '2024-01-07'),
	(9, 7, 7, 300000, '2024-01-07'),
	(10, 12, 8, 85000, '2024-01-10'),
	(11, 2, 11, 100000, '2024-01-12'),
	(12, 4, 12, 95000, '2024-01-12'),
	(13, 14, 10, 150000, '2024-01-13'),
	(14, 4, 3, 245000, '2024-01-14'),
	(15, 8, 13, 220000, '2024-01-15'),
	(16, 15, 20, 130000, '2024-01-15'),
	(17, 6, 7, 170000, '2024-01-17'),
	(18, 20, 8, 190000, '2024-01-17'),
	(19, 9, 5, 160000, '2024-01-21'),
	(20, 10, 14, 140000, '2024-01-21');

INSERT INTO public.sale_items (sale_item_id, sale_id, book_id, quantity, price) 
	VALUES
	(1, 1, 3, 1, 150000),
	(2, 1, 5, 1, 75000),
	(3, 1, 11, 1, 150000),
	(4, 2, 13, 2, 100000),
	(5, 3, 2, 1, 85000),
	(6, 3, 9, 1, 65000),
	(7, 4, 12, 1, 120000),
	(8, 5, 1, 1, 100000),
	(9, 6, 19, 1, 140000),
	(10, 7, 8, 1, 70000),
	(11, 7, 10, 1, 80000),
	(12, 8, 12, 1, 120000),
	(13, 8, 14, 2, 90000),
	(14, 9, 11, 2, 150000),
	(15, 10, 7, 1, 85000),
	(16, 11, 1, 1, 100000),
	(17, 12, 16, 1, 95000),
	(18, 13, 11, 1, 150000),
	(19, 14, 9, 1, 65000),
	(20, 14, 20, 1, 180000);

INSERT INTO public.suppliers (supplier_id, name, email, phone, address) 
	VALUES
	(1, 'PT Gramedia', 'contact@gramedia.com', '021-12345678', 'Jl. Palmerah Barat No. 29-37, Jakarta'),
	(2, 'Mizan Pustaka', 'info@mizan.com', '022-98765432', 'Jl. Cinambo No. 135, Bandung'),
	(3, 'Erlangga', 'support@erlangga.co.id', '021-23456789', 'Jl. H. Baping Raya No. 100, Jakarta'),
	(4, 'Bentang Pustaka', 'admin@bentangpustaka.com', '0274-567890', 'Jl. Pandean Sari Blok IV/10, Yogyakarta'),
	(5, 'Tiga Serangkai', 'cs@tigaserangkai.com', '0271-3456789', 'Jl. Dr. Rajiman No. 550, Surakarta'),
	(6, 'Kompas Penerbit', 'publishing@kompas.com', '021-34567890', 'Gedung Kompas Gramedia, Jl. Palmerah Selatan No. 3, Jakarta'),
	(7, 'Agromedia', 'info@agromedia.net', '021-45678901', 'Jl. Kalibata Timur IV No. 4, Jakarta'),
	(8, 'Bukune', 'contact@bukune.com', '021-56789012', 'Jl. Kramat III No. 11, Jakarta'),
	(9, 'Bhuana Ilmu Populer', 'support@bip.co.id', '021-67890123', 'Gedung Kompas Gramedia, Lantai 3, Jl. Palmerah Selatan No. 3, Jakarta'),
	(10, 'Kanisius', 'info@kanisiusmedia.com', '0274-789012', 'Jl. Cempaka 9, Deresan, Caturtunggal, Depok, Sleman, Yogyakarta'),
	(11, 'Andi Offset', 'customer@andipublisher.com', '0274-123456', 'Jl. Beo No. 38, Demangan Baru, Yogyakarta'),
	(12, 'Pustaka Al-Kautsar', 'info@alkautsar.co.id', '021-78901234', 'Jl. Batu Ampar III No. 50, Condet, Jakarta'),
	(13, 'Bintang Pustaka', 'contact@bintangpustaka.com', '022-1234567', 'Jl. Leuwi Panjang No. 60, Bandung'),
	(14, 'Gema Insani Press', 'cs@gemainsani.co.id', '021-8901234', 'Jl. Jagakarsa Raya No. 40, Jakarta'),
	(15, 'Elex Media Komputindo', 'support@elexmedia.co.id', '021-9012345', 'Gedung Kompas Gramedia, Jl. Palmerah Selatan No. 3, Jakarta'),
	(16, 'Diva Press', 'admin@divapress.com', '0274-1234567', 'Jl. Wonosari No. 168, Yogyakarta'),
	(17, 'Transmedia', 'info@transmedia.co.id', '021-1234567', 'Jl. Kapten Tendean Kav 12-14 A, Jakarta'),
	(18, 'Pustaka Jaya', 'contact@pustakajaya.com', '021-12345678', 'Jl. Duren Tiga Raya No. 20, Jakarta'),
	(19, 'Media Kita', 'cs@mediakita.com', '021-2345678', 'Jl. Duren Tiga Raya No. 20, Jakarta'),
	(20, 'Visimedia', 'support@visimedia.com', '021-3456789', 'Jl. Puri Mutiara Raya No. 72, Cipete, Jakarta');

INSERT INTO public.purchases (purchase_id, supplier_id, purchase_date, total_amount) 
	VALUES
	(1, 1, '2023-01-01', 18500000),
	(2, 3, '2023-01-01', 7400000),
	(3, 11, '2023-01-01', 3150000),
	(4, 4, '2023-02-01', 3325000),
	(5, 8, '2023-02-01', 6475000),
	(6, 2, '2023-03-01', 7500000),
	(7, 13, '2023-03-01', 5700000),
	(8, 9, '2023-04-01', 1500000),
	(9, 15, '2023-04-01', 700000),
	(10, 1, '2023-05-01', 1800000),
	(11, 8, '2023-05-01', 6150000),
	(12, 19, '2023-05-01', 1600000),
	(13, 7, '2023-06-01', 7200000),
	(14, 5, '2023-07-01', 5400000),
	(15, 10, '2023-08-01', 2000000),
	(16, 20, '2023-08-01', 500000),
	(17, 11, '2023-09-01', 6050000),
	(18, 3, '2023-10-01', 2300000),
	(19, 11, '2023-11-01', 1250000),
	(20, 5, '2023-12-01', 750000);

INSERT INTO public.purchase_items (purchase_item_id, purchase_id, book_id, quantity, price_per_item) 
	VALUES
	(1, 1, 11, 50, 150000),
	(2, 1, 12, 50, 120000),
	(3, 1, 13, 50, 100000),
	(4, 2, 1, 40, 100000),
	(5, 2, 2, 40, 85000),
	(6, 3, 14, 35, 90000),
	(7, 4, 16, 35, 95000),
	(8, 5, 15, 35, 85000),
	(9, 5, 17, 35, 100000),
	(10, 6, 3, 50, 150000),
	(11, 7, 7, 20, 85000),
	(12, 7, 8, 20, 70000),
	(13, 7, 9, 40, 65000),
	(14, 8, 5, 20, 75000),
	(15, 9, 6, 20, 35000),
	(16, 10, 4, 20, 90000),
	(17, 11, 18, 25, 50000),
	(18, 11, 19, 35, 140000),
	(19, 12, 10, 20, 80000),
	(20, 13, 20, 40, 180000);