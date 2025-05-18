const con = require('../../config/dbconfig')

const formatDao = {
    table: 'format',

    findBookByFormat: (res, table, format)=> {
        con.execute(
            `SELECT 
            b.book_id,
            b.title,
            f.format
            FROM book b
            JOIN author a ON b.author_id = a.author_id
            JOIN format f ON b.format_id = f.format_id
            JOIN publishing p USING (publishing_id)
            WHERE f.format = ?
            ORDER BY b.book_id;`,
            [format],
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

module.exports = formatDao