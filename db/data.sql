INSERT INTO format (format)
VALUES ('physical');

INSERT INTO format (format)
VALUES ('audio'), ('e-book');

-- FORMAT DONE ✅

INSERT INTO language (language_name)
VALUES ('English');

INSERT INTO language (language_name)
VALUES ('Japanese'), ('Spanish'), ('French'), ('Korean');

-- language DONE ✅

INSERT INTO genre (genre) 
VALUES ('fiction');

INSERT INTO genre (genre) 
VALUES 
('non-fiction'),
('manga'),
('fantasy'),
('adventure'),
('dark fantasy'),
('supernatural'),
('martial arts'),
('comedy'),
('young adult fiction'),
('drama'),
('action'),
('science fiction'),
('tragedy'),
('mystery'),
('superhero'),
('post-apocalyptic'),
('horror fiction'),
('romance'),
('vampire'),
("children's book")
;

-- genre done

INSERT INTO publishing (company) 
VALUES ('Amulet Books');

INSERT INTO publishing (company) 
VALUES ('VIZ Media LLC'), 
("Charles Scribner's Sons"), 
('Scholastic, Inc.'), 
('Kodansha International'), 
('Little, Brown Books for Young Readers'), 
('Titan'),
('Aladdin');

INSERT INTO author (author) 
VALUES ('Koyoharu Gotouge'); -- 1

INSERT INTO author (author) 
VALUES 
('Gege Akutami'), 
('Jeff Kinney'), 
('F. Scott Fizgerald'), 
('Suzanne Collins'), 
('Tsugumi Ohba'), 
('Sui Ishida'), 
('Tite Kubo'), 
('Masashi Kishimoto'), 
('Yusuke Murata'), 
('Hajime Isayama'), 
('J.K. Rowling'), 
('R.L. Stine'), 
('Stephenie Meyer'), 
('Tim Waggoner'), 
('Rachel Renee Russell'); 


INSERT INTO book (title, author_id, pub_id,  copyright_year, edition, edition_year, binding, rating, language_id, num_pages, cover_image, format_id, qty)
VALUES 
('Jujutsu Kaisen, Vol 1', 2, 2, 2018, NULL, NULL, 'paperback', '4', 1, 192, 'https://prodimage.images-bn.com/pimages/9781974710027_p0_v1_s1200x630.jpg', 1, 13);


INSERT INTO book (title, author_id, pub_id,  copyright_year, edition, edition_year, binding, rating, language_id, num_pages, cover_image, format_id, qty)
VALUES 
('Demon Slayer: Kimestu No Yaiba, Vol 1', 1, 2, 2016, NULL, NULL, 'paperback', '4', 1, 192, 'https://prodimage.images-bn.com/pimages/9781974700523_p0_v1_s1200x630.jpg', 1, 7),
('Diary of a Wimpy Kid', 3, 1, 2007, NULL, NULL, 'hardback', '4', 1, 224, 'https://prodimage.images-bn.com/pimages/9781974700523_p0_v1_s1200x630.jpg', 1, 21),
('Diary of a Wimpy Kid', 3, 1, 2017, 'CHEESIEST edition', 2017, 'audio', '4', 1, 224, 'https://m.media-amazon.com/images/I/71zl4XJfvaL.jpg', 2, NULL);


INSERT INTO book (title, author_id, pub_id, copyright_year, edition, edition_year, binding, rating, language_id, num_pages, cover_image, format_id, qty)
VALUES 
('The Great Gatsby', 4, 3, 1925, NULL, NULL, 'hardback', '4', 1, 192, 'https://m.media-amazon.com/images/I/81TLiZrasVL._AC_UF1000,1000_QL80_.jpg', 1, 17),
('Death Note Vol 1', 6, 2, 2004, NULL, NULL, 'paperback', '4', 1, 200, 'https://m.media-amazon.com/images/I/81iDNjn-r3L.jpg', 1, 9),
('The Hunger Games', 5, 4, 2008, NULL, NULL, 'e-book', '4', 1, 384, 'https://m.media-amazon.com/images/I/61I24wOsn8L.jpg', 3, NULL),
('Tokyo Ghoul Vol 1', 7, 2, 2015, NULL, NULL, 'paperback', '4', 1, 224, 'https://m.media-amazon.com/images/I/81gv-D-LqhL.jpg', 1, 2);



INSERT INTO book (title, author_id, pub_id, copyright_year, edition, edition_year, binding, rating, language_id, num_pages, cover_image, format_id, qty)
VALUES 
('Bleach Vol 1', 8, 2, 2004, NULL, NULL, 'paperback', '4', 1, 192, 'https://prodimage.images-bn.com/pimages/9781591164418_p0_v3_s600x595.jpg', 1, 14), 
('Naruto Vol 1', 9, 2, 2003, NULL, NULL, 'paperback', '4', 1, 192, 'https://prodimage.images-bn.com/pimages/9781569319000_p0_v1_s1200x630.jpg', 1, 5),
('One Punch Man Vol 1', 10, 2, 2015, NULL, NULL, 'audio', 4, 1, 200, 'https://m.media-amazon.com/images/I/9165OyYF6xL._AC_UF1000,1000_QL80_.jpg', 2, NULL),
('Attack on Titan Vol 1', 11, 5, 2012, NULL, NULL, 'paperback', 4, 1, 208, 'https://m.media-amazon.com/images/I/81qPzeEO5IL.jpg', 1, 8);



INSERT INTO book (title, author_id, pub_id, copyright_year, edition, edition_year, binding, rating, language_id, num_pages, cover_image, format_id, qty)
VALUES 
("Harry Potter and the Sorcerer's Stone", 12, 4, 2020, 'MinaLima Edition', 2020, 'audio', '5', 1, 368, 'https://m.media-amazon.com/images/I/91pI+R+GE7L.jpg', 2, NULL),
('Harry Potter and the Chamber of Secrets', 12, 4, 1999, NULL, NULL, 'e-book', '4', 1, 352, 'https://m.media-amazon.com/images/I/918wxhKJaPL._AC_UF1000,1000_QL80_.jpg', 3, NULL),
('Goosebumps Night of the Living Dummy', 13, 4, 2008, NULL, NULL, 'paperback', '5', 1, 160, 'https://m.media-amazon.com/images/I/71ZBnBWhy8L._AC_UF1000,1000_QL80_.jpg', 1, 11),
('Goosebumps The Scarecrow Walks at Midnight', 13, 4, 2010, NULL, NULL, 'e-book', '5', 1, 160, 'https://m.media-amazon.com/images/I/7188GfXQn0L.jpg', 3, NULL),
('Goosebumps The Haunted Mask', 13, 4, 2008, NULL, NULL, 'paperback', '4', 1, 144, 'https://m.media-amazon.com/images/I/71mjO1o5SYL._AC_UF1000,1000_QL80_.jpg', 1, 3),
('Twilight', 14, 6, 2005, NULL, NULL, 'paperback', '3', 1, 416, 'https://m.media-amazon.com/images/I/615ZIxEDozL._AC_UF1000,1000_QL80_.jpg', 1, 12),
('Halloween Kills: The Official Movie Novelization', 15, 7, 2021, NULL, NULL, 'paperback', '5', 1, 320, 'https://m.media-amazon.com/images/I/81o0efdyD5L._AC_UF1000,1000_QL80_.jpg', 1, 15);

INSERT INTO book (title, author_id, pub_id, copyright_year, edition, edition_year, binding, rating, language_id, num_pages, cover_image, format_id, qty)
VALUES
('Goosebumps Say Cheese and Die!', 13, 4, 2009, NULL, NULL, 'paperback', '4', 1, 160, 'https://m.media-amazon.com/images/I/A1U0vDaVVnL._AC_UF894,1000_QL80_.jpg', 1, 10),
('Goosebumps Vampire Breath', 13, 4, 2011, NULL, NULL, 'paperback', '4', 1, 160, 'https://m.media-amazon.com/images/I/71iQS6ruHxL._AC_UF1000,1000_QL80_.jpg', 1, 24),
('Goosebumps One Day at Horrorland', 13, 4, 2008, NULL, NULL, 'e-book', '4', 1, 144, 'https://m.media-amazon.com/images/I/91BejN3u4bL._AC_UF1000,1000_QL80_.jpg', 3, NULL),
('Harry Potter and Goblet of Fire', 12, 4, 2019, 'The Illustraded Edition', 2019, 'hardback', '3', 1, 464, 'https://m.media-amazon.com/images/I/A1MKWNH6BaL.jpg', 1, 16),
('Dork Diaries Tales from a Not-So-Graceful Ice Princess', 16, 8, 2012, NULL, NULL, 'hardback', '4', 1, 368, 'https://m.media-amazon.com/images/I/81mZcUx+udL._UF1000,1000_QL80_.jpg', 1, 18),
('Diary of a Wimpy Kid Rodrick Rules', 3, 1, 2008, NULL, NULL, 'paperback', '5', 1, 224, 'https://m.media-amazon.com/images/I/81vrUdusP0L._AC_UF1000,1000_QL80_.jpg', 1, 23);

INSERT INTO genre_to_book (book_id, genre_id)
VALUES
(1, 5), (1, 6), (1, 7), (1, 3);

INSERT INTO genre_to_book (book_id, genre_id)
VALUES
(2, 3), (2, 5), (2, 8),
(3, 9), (3, 10), 
(4, 9), (4, 10),
(5, 14), 
(6, 3), (6, 15),
(7, 5),
(7, 13),
(8, 3), (8, 6),
(9, 3), (9, 5), (9, 7), (9, 8),
(10, 3), (10, 5), (10, 8), (10, 9),
(11, 9), (11, 12), (11, 16), 
(12, 6), (12, 12), (12, 17),
(13, 4),
(14, 4),
(15, 18),
(16, 18),
(17, 18),
(18, 4), (18, 19), (18, 20),
(19, 18), 
(20, 18),
(21, 18), 
(22, 18),
(23, 4),
(24, 9), (24, 21),
(25, 9), (25, 10);