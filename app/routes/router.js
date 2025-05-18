const express = require('express')
const router = express.Router()
const PORT = process.env.PORT || 3004

router.get('/api', (req, res)=> {
    res.json({
        'Books': `http://localhost:${PORT}/api/book`,
        'Authors': `http://localhost:${PORT}/api/author`,
        'Formats': `http://localhost:${PORT}/api/format`,
        'Genres': `http://localhost:${PORT}/api/genre`,
        'Publishers': `http://localhost:${PORT}/api/publishing`
    })
})

const endpoints = [
    'book',
    'author',
    'format',
    'genre',
    'publishing'
]

endpoints.forEach(endpoint => {
    router.use(`/api/${endpoint}`, require(`./api/${endpoint}Routes`))
})

module.exports = router