const express = require('express')
const router = express.Router()

const { authorDao: dao } = require('../../daos/dao')

router.get('/', (req, res)=> {
    dao.findAll(res, dao.table)
})

router.get('/:id/books', (req, res)=> {
    dao.findBooksByAuthorId(res, dao.table, req.params.id)
})


router.get('/:id', (req, res)=> {
    dao.findById(res, dao.table, req.params.id)
})



module.exports = router