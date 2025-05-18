const express = require('express')
const router = express.Router()


const { bookDao: dao } = require('../../daos/dao')

router.get('/', (req, res)=> {
    dao.findBooks(res, dao.table)
})

router.get('/:id', (req, res) => {
    dao.findBooksById(res, dao.table, req.params.id)
})


module.exports = router