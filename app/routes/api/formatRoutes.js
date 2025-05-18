const express = require('express')
const router = express.Router()


const { formatDao: dao } = require('../../daos/dao')

router.get('/', (req, res)=> {
    dao.findAll(res, dao.table)
})

router.get('/:format', (req, res)=> {
    dao.findBookByFormat(res, dao.table, req.params.format)
})

router.get('/:id', (req, res) => {
    dao.findById(res, dao.table, req.params.id)
})


module.exports = router