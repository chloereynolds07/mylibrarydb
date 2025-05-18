const con = require('../../config/dbconfig')

const publishingDao = {
    table: 'publishing',
    
    findBooksbyPublisherId: (res, table, id)=> {
        con.execute(
            `SELECT 
            b.book_id, b.title, p.company
            FROM book b
            JOIN publishing p ON b.publishing_id = p.publishing_id
            WHERE p.publishing_id = ?
            ORDER BY b.book_id;`,
            [id],
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


module.exports = publishingDao




