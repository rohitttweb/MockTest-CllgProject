const express = require('express')
const app = express()
const bodyParser = require('body-parser');
app.use(bodyParser.json());

app.use(express.static('public'));

const Login = require('./routes/login')
const API = require('./routes/api')



app.use('/login', Login)
app.use('/api', API)


app.get('/add', function (req, res) {
    res.sendFile('views/addQuestions.html', { root: __dirname })
})
app.get('/test', function (req, res) {
    console.log(req.query)
    res.sendFile('views/test.html', { root: __dirname })
})
app.get('/pdf', function (req, res) {
    res.sendFile('views/GetPdf.html', { root: __dirname })
})

app.get('/dashboard', function (req, res) {
    res.sendFile('views/dashboard.html', { root: __dirname })
})
app.get('/', function (req, res) {
    res.sendFile('views/index.html', { root: __dirname })
})
app.get('/signup', function (req, res) {
    res.sendFile('views/signup.html', { root: __dirname })
})
app.get('/logout', function (req, res) {
    res.sendFile('views/logout.html', { root: __dirname })
})


app.listen(3000)