const express = require('express')
const router = express.Router()

const path = require('path');
const parentDir = path.join(__dirname, '..');

router.use((req, res, next) => {
  console.log('Time: ', Date.now())
  next()
})

router.get('/', (req, res) => {
    res.sendFile('views/login.html', { root: parentDir })

})
module.exports = router