const { format } = require('mysql2')
const daoCommon = require('./common/daoCommon')

const bookDao = {
    ...daoCommon,
    ...require('./api/bookDao')
}

const authorDao = {
    ...daoCommon,
    ...require('./api/authorDao')
}

const formatDao = {
    ...daoCommon,
    ...require('./api/formatDao')
}

const genreDao = {
    ...daoCommon,
    ...require('./api/genreDao')
}


const publishingDao = {
    ...daoCommon,
    ...require('./api/publishingDao')
}


module.exports = {
    bookDao,
    authorDao,
    formatDao,
    genreDao,
    publishingDao
}