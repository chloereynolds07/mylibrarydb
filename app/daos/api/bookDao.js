const con = require('../../config/dbconfig')

const bookDao = {
    table: 'book',

    findBooks: (res, table)=> {
        con.execute(
            `SELECT ${table}.book_id, ${table}.title, ${table}.copyright_year, ${table}.edition,
            ${table}.edition_year, f.format_id,
            ${table}.cover_image, ${table}.qty
            FROM ${table}
            JOIN format f USING (format_id)
            ORDER BY ${table}.book_id;`,
            (error, rows)=> {
                if (!error) {
                    if (rows.length === 1) {
                        res.json(...rows)
                    } else {
                        res.json(rows)
                    }
                } else {
                    console.log('Book DAO Error: ', error)
                }
            }
        )
    },

    findBooksById: (res, table, id)=> {
            con.execute(
                `SELECT 
                b.book_id, 
                b.title, 
                a.author_name, 
                p.company,
                b.copyright_year, 
                b.edition,
                b.edition_year, 
                l.language_name, 
                b.num_pages, 
                b.cover_image, 
                f.format, 
                b.qty,
                GROUP_CONCAT(g.genre SEPARATOR ' | ') AS genres
                FROM book b
                JOIN author a USING (author_id)
                JOIN publishing p USING (publishing_id)
                JOIN language l USING (language_id)
                JOIN format f USING (format_id)
                JOIN genre_to_book gb ON b.book_id = gb.book_id
                JOIN genre g ON gb.genre_id = g.genre_id
                WHERE b.book_id = ?
                GROUP BY b.book_id;`,
                [id],
                
                (error, rows) => {
                rows.forEach(book=> {
                    if (book.genres) {
                        book.genres = book.genres.split(' | ').map(g => g.trim())
                    }
                })
                if (!error) {
                    if (rows.length === 1) {
                        res.json(...rows)
                    } else {
                        res.json(rows)
                    }
                } else {
                    console.log('Book DAO Error: ', error)
                }
            }
        )
    }
}

module.exports = bookDao