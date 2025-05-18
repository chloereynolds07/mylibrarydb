DROP DATABASE IF EXISTS librarydb;
CREATE DATABASE librarydb;
USE librarydb;

CREATE TABLE format (
    format_id TINYINT UNSIGNED AUTO_INCREMENT NOT NULL, 
    format VARCHAR(20) NOT NULL,
    date_created TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT pk_format PRIMARY KEY (format_id)
);

CREATE TABLE publishing (
    pub_id TINYINT UNSIGNED AUTO_INCREMENT NOT NULL,
    company VARCHAR(30) NOT NULL,
    date_created TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT pk_publishing PRIMARY KEY (pub_id)
);

ALTER TABLE publishing DROP CONSTRAINT pk_publishing


CREATE TABLE author (
    author_id SMALLINT UNSIGNED AUTO_INCREMENT NOT NULL,
    author VARCHAR(40) NOT NULL,
    date_created TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT pk_author PRIMARY KEY (author_id)
);

CREATE TABLE genre (
    genre_id SMALLINT UNSIGNED AUTO_INCREMENT NOT NULL,
    genre VARCHAR(60) NOT NULL,
    date_created TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT pk_genre PRIMARY KEY (genre_id)
);

CREATE TABLE language (
    language_id TINYINT UNSIGNED AUTO_INCREMENT NOT NULL,
    language_name VARCHAR(30) NOT NULL,
    date_created TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT pk_language PRIMARY KEY (language_id)
);


CREATE TABLE book (
    book_id SMALLINT UNSIGNED AUTO_INCREMENT NOT NULL,
    title VARCHAR(100) NOT NULL,
    author_id SMALLINT UNSIGNED NOT NULL ,
    pub_id TINYINT UNSIGNED NOT NULL,
    copyright_year YEAR,
    edition VARCHAR(40),
    edition_year YEAR,
    binding ENUM('paperback', 'hardback', 'e-book', 'audio') NOT NULL,
    rating ENUM('1', '2', '3', '4', '5') NOT NULL,
    language_id TINYINT UNSIGNED NOT NULL,
    num_pages SMALLINT UNSIGNED NOT NULL,
    cover_image MEDIUMTEXT,
    format_id TINYINT UNSIGNED NOT NULL,
    qty SMALLINT UNSIGNED NOT NULL,
    date_created TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    CONSTRAINT pk_book PRIMARY KEY (book_id),
    CONSTRAINT fk_author FOREIGN KEY (author_id) REFERENCES author (author_id),
    CONSTRAINT fk_publishing FOREIGN KEY (pub_id) REFERENCES publishing (pub_id),
    CONSTRAINT fk_language FOREIGN KEY (language_id) REFERENCES language (language_id),
    CONSTRAINT fk_format FOREIGN KEY (format_id) REFERENCES format (format_id)
);

CREATE TABLE genre_to_book (
    book_id SMALLINT UNSIGNED NOT NULL,
    genre_id SMALLINT UNSIGNED NOT NULL,
    date_created TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    CONSTRAINT fk_book_gtb FOREIGN KEY (book_id) REFERENCES book (book_id),
    CONSTRAINT fk_genre_bg FOREIGN KEY (genre_id) REFERENCES genre (genre_id)
);

-- ALTER TABLE author 
-- MODIFY COLUMN author VARCHAR(90);


-- DELETE from publishing;

-- ALTER TABLE publishing AUTO_INCREMENT = 1;


-- ALTER TABLE book 
-- MODIFY qty SMALLINT UNSIGNED; 

-- ALTER TABLE publishing CHANGE pub_id publishing_id TINYINT UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE publishing
MODIFY publishing_id TINYINT UNSIGNED NOT NULL AUTO_INCREMENT;


-- stephen king, j.k rowling, r.l stine, jeffery patrick kinney, (coraline) neil gaiman, 

-- ALTER TABLE publishing
-- DROP PRIMARY KEY,
-- ADD CONSTRAINT pk_publishing PRIMARY KEY (publishing_id);

-- ALTER TABLE book
-- ADD CONSTRAINT fk_publishing
-- FOREIGN KEY (publishing_id) REFERENCES publishing(publishing_id);

-- SELECT
--     TABLE_NAME,
--     COLUMN_NAME,
--     CONSTRAINT_NAME, 
--     REFERENCED_TABLE_NAME,
--     REFERENCED_COLUMN_NAME
-- FROM 
--     INFORMATION_SCHEMA.KEY_COLUMN_USAGE
-- WHERE REFERENCED_TABLE_NAME = 'publishing'
-- AND TABLE_SCHEMA = 'librarydb';

SELECT title, qty FROM book 
WHERE qty > 10;

SELECT title, binding FROM book 
WHERE binding = 'paperback';

SELECT title, binding FROM book 
WHERE binding = 'hardback';

SELECT title, binding FROM book 
WHERE binding = 'audio';

SELECT title, binding FROM book 
WHERE binding = 'e-book';

SELECT binding, COUNT(*) AS total
FROM book 
GROUP BY binding;

SELECT b.title
FROM book b 
JOIN author a ON b.author_id = a.author_id 
WHERE a.author = 'Suzanne Collins';

SELECT b.title
FROM book b 
JOIN author a ON b.author_id = a.author_id 
WHERE a.author = 'Gege Akutami'
ORDER BY b.book_id;

SELECT b.title
FROM book b 
JOIN author a ON b.author_id = a.author_id 
WHERE a.author = 'Jeff Kinney';

ALTER TABLE author RENAME COLUMN author TO author_name;