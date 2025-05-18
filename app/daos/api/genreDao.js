const con = require('../../config/dbconfig')

const genreDao = {
    table: 'genre',

    findGenreByBook: (res, table, genre)=> {
        con.execute(
            `SELECT 
            b.book_id,
            b.title,
            g.genre
            FROM book b
            JOIN genre_to_book gb ON b.book_id = gb.book_id
            JOIN genre g ON gb.genre_id = g.genre_id
            WHERE g.genre = ?
            ORDER BY b.book_id;`,
            [genre],
            (error, rows) => {
                    if (!error) {
                        if (rows.length === 1) {
                            res.json(...rows)
                        } else {
                            res.json(rows)
                        }
                    } else {
                        console.log('Format DAO Error: ', error)
                    }
                }
        )
    }
}




module.exports = genreDao