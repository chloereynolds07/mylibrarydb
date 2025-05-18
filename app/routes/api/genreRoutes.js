const express = require('express')
const router = express.Router()

const { genreDao: dao } = require('../../daos/dao')

router.get('/', (req, res)=> {
    dao.findAll(res, dao.table)
})

router.get('/:genre', (req, res)=> {
    dao.findGenreByBook(res, dao.table, req.params.genre)
})

router.get('/:id', (req, res) => {
    dao.findById(res, dao.table, req.params.id)
})



module.exports = router