const con = require('../../config/dbconfig')

const authorDao = {
    table: 'author',

    findBooksByAuthorId: (res, table, id)=> {
        con.execute(
            `SELECT 
            b.book_id,
            b.title,
            a.author_name,
            b.edition,
            b.edition_year,
            b.copyright_year,
            p.company,
            b.cover_image,
            b.qty,
            f.format
            FROM book b
            JOIN author a ON b.author_id = a.author_id
            JOIN format f ON b.format_id = f.format_id
            JOIN publishing p USING (publishing_id)
            WHERE b.author_id = ?;`,
            [id],
            (error, rows) => {
                    if (!error) {
                        if (rows.length === 1) {
                            res.json(...rows)
                        } else {
                            res.json(rows)
                        }
                    } else {
                        console.log('Author DAO Error: ', error)
                    }
                }
        )
        }
    }

module.exports = authorDao