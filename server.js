const express = require('express')
const server = express()
const router = require('./app/routes/router')
const PORT = process.env.PORT || 3004
const helmet = require('helmet')
const cors = require('cors')

server.use('/', router)
server.set('view engine')

server.listen(PORT, ()=> console.log(`port ${PORT} is connected`))

server.use(helmet.contentSecurityPolicy({
    useDefaults: true,
    crossOriginResourcePolicy: false,
    crossOriginEmbedderPolicy: false,
    directives: {
        "img-src": ["'self'", "https: data"],
        "scriptSrc": ["'self'", "cdn.jsdelivr.net"]
    }
})
)

server.use(cors())
    .use(express.json())
    .use(express.urlencoded({ extended: true }))
