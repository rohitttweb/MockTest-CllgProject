const express = require('express')
const app = express()

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


app.get('/questions', function (req, res) {
    res.send(Questions)
})
app.get('/', function (req, res) {
    res.sendFile('views/test.html', { root: __dirname })
})

app.listen(3000)