const express = require('express')
const router = express.Router()

const bodyParser = require('body-parser');
const bcrypt = require('bcrypt');
const jwt = require('jsonwebtoken')


router.use(express.json())
router.use(bodyParser.json());
router.use(bodyParser.urlencoded({ extended: true }));



const mysql = require('mysql2');

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'project'
});


const addDataToSQL = (question, options, correct_ans, maintopic, subtopic) => {
    const sql = `INSERT INTO question_bank (question, option1, option2, option3, option4, correct_ans, maintopic, subtopic) VALUES (?, ?, ?, ?, ?, ?, ?, ?)`;
    connection.query(sql, [question, options[0], options[1], options[2], options[3], correct_ans, maintopic, subtopic], function (error, results, fields) {
        if (error) throw error;
        console.log("Data added successfully");
    });
};
const GetQuestions = async (topic, subtopic, length) => {
    const Questions = []
    const query = `SELECT * FROM question_bank WHERE maintopic = '${topic}' AND subtopic = '${subtopic}' ORDER BY RAND() LIMIT ${length}`

    const results = await new Promise((resolve, reject) => {
        connection.query(query, (error, results, fields) => {
            if (error) {
                reject(error)
            } else {
                resolve(results)
            }
        })
    })

    results.forEach(result => {
        const item = {
            "id": result.id,
            "question": result.question,
            "options": [
                result.option1,
                result.option2,
                result.option3,
                result.option4,
            ],
            'ans': result.correct_ans,
            'topic':result.maintopic
        }
        Questions.push(item)
    })

    return Questions
}



router.get('/questions', async function (req, res) {
    const testTopic = (req.query.Topic)
    const testSubTopic = (req.query.subTopic)
    const testlength = Number(req.query.testlength)
    console.log(req.query)
    if (!testlength) {
        return
    }
    let questions = await GetQuestions(testTopic, testSubTopic, testlength)
    console.log(questions)
    /* let verbal = await GetQuestions(testlength / 4, 'verbal');
    let GeneralAwareness = await GetQuestions(testlength / 4, 'general_awareness');
    let Aptitude = await GetQuestions(testlength / 4, 'aptitude');
    let Reasoning = await GetQuestions(testlength / 4, 'reasoning');
    const Questionsss = verbal.concat(GeneralAwareness, Aptitude, Reasoning) */
    res.send({
        'code': 200,
        'success': 'Data fetched successfully',
        'data': questions
    })
})
router.post('/add', function (req, res) {
    console.log(req.body)
    const { question, options, correct_ans, mainTopic, subTopic } = req.body
    addDataToSQL(question, options, correct_ans, mainTopic, subTopic)
    res.status(200).json({ status: 'success' });
})

router.post('/login', function (req, res) {
    console.log(req.body)
    const username = req.body.username
    const password = req.body.password
    const query = `SELECT * FROM users WHERE username = '${username}'`
    connection.query(query, function (error, results, fields) {
        if (error) throw error;
        if (results.length <= 0) return res.send('User Not Found')
        console.log(results)
        bcrypt.compare(password, results[0].password, function (err, result) {
            if (err) return res.sendStatus(500)
            if (!result) return res.status(401).json({ message: 'Wrrong passward' });
            const user = { name: username }
            const access_token = jwt.sign(user, "0c5acab34ef5e4c3b501d8aabbb4993b21d4dd1927f26f65e6b285c2a1e93782bc6a4b116b4ae57d283cbb6d4e9d30f2140051c851fa62953697ae3152844268")
            return res.status(200).json({ success: true, Accesstoken: access_token });
        });
    });

})
router.post('/register', function (req, res) {
    const name = req.body.name
    const username = req.body.username
    const password = req.body.password
    console.log(req.body)
    if (username.length < 5) return res.send("Username should be Greater then 5 letters")
    if (password.length < 8) return res.send("Password should be Greater then 8 letters")
    const query = `SELECT username FROM users WHERE username = '${username}'`
    connection.query(query, function (error, results, fields) {

        if (error) return res.sendStatus(500)
        if (results.length > 0) return res.send('username exists')
        bcrypt.hash(password, 10, async function (err, hash) {
            if (err) return res.sendStatus(500)
            const sql = `INSERT INTO users (username, password, name) VALUES (?, ?, ?)`;
            connection.query(sql, [username, hash, name], function (error, results, fields) {
                if (error) throw error;
                console.log("user added successfully");
            });
            return res.status(200).json({ success: true });
        });
    })
})
router.get('/whoami', authToken, function (req, res) {
    res.json(req.user).status(200)
})
router.post('/isexist', function (req, res) {
    const username = req.body.__username
    console.log(username)
    const query = `SELECT username FROM users WHERE username = '${username}'`
    connection.query(query, function (error, results, fields) {
        console.log('mmmmmmmmmmmm')
        if (error) throw error;
        if (results.length > 0) return res.send({message: "Username is not avalable"})
        return res.status(200).json({ success: true });

     
    });

    
})
function authToken(req, res, next) {
    //will return user from jwt token send with request
    const token = (req.headers.authorization).split(' ')[1]
    if (!token) return res.sendStatus(401)
    jwt.verify(token, "0c5acab34ef5e4c3b501d8aabbb4993b21d4dd1927f26f65e6b285c2a1e93782bc6a4b116b4ae57d283cbb6d4e9d30f2140051c851fa62953697ae3152844268", (err, user) => {
        if (err) return res.sendStatus(403)
        req.user = user // now req will have new object user 
        next()
    })
}


module.exports = router