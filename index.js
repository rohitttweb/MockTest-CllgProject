const express = require('express')
const app = express()
const bodyParser = require('body-parser');
app.use(bodyParser.json());
const Questions = {

    "questions": [
        {
            "id": 1,
            "question": "What is your favorite color?",
            "options": [
                "Red",
                "Green",
                "Blue",
                "Yellow"
            ],
            'ans': 'Yellow'
        },
        {
            "id": 2,
            "question": "What is your favorite food?",
            "options": [
                "Pizza",
                "Hamburger",
                "Sushi",
                "Tacos"
            ],
            'ans': 'Hamburger'
        },
        {
            "id": 3,
            "question": "What is your favorite animal?",
            "options": [
                "Cat",
                "Dog",
                "Elephant",
                "Giraffe"
            ],
            "ans": "Dog"
        },
        {
            "id": 4,
            "question": "What is your favorite movie?",
            "options": [
                "The Shawshank Redemption",
                "The Godfather",
                "The Dark Knight",
                "Pulp Fiction"
            ],
            'ans': 'The Shawshank Redemption'
        },
        {
            "id": 5,
            "question": "What is your favorite book?",
            "options": [
                "To Kill a Mockingbird",
                "The Great Gatsby",
                "Pride and Prejudice",
                "1984"
            ],
            'ans': 'The Great Gatsby'
        }
    ]
}
const mysql = require('mysql2');

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'project'
});


const addDataToSQL = (question, options, correct_ans) => {
    connection.connect();
    const sql = `INSERT INTO question_bank_temp (question, option1, option2, option3, option4, correct_ans) VALUES (?, ?, ?, ?, ?, ?)`;
    connection.query(sql, [question, options[0], options[1],options[2],options[3], correct_ans], function (error, results, fields) {
        if (error) throw error;
        console.log("Data added successfully");
    });
    connection.end();
};


app.get('/api/questions', function (req, res) {
    res.send(Questions)
})
app.post('/api/add', function (req, res) {
    console.log(req.body)
    const {question, options, correct_ans} = req.body
    //addDataToSQL(question, options, correct_ans)
    res.status(200).json({ status: 'success' });
})
app.get('/add', function (req, res) {
    res.sendFile('views/addQuestions.html', { root: __dirname })
})
app.get('/test', function (req, res) {
    res.sendFile('views/test.html', { root: __dirname })
})

app.listen(3000)