function getUserToken() {
    const cookies = document.cookie.split("; ");
    for (let i = 0; i < cookies.length; i++) {
        const cookie = cookies[i].split("=");
        if (cookie[0] === "UserToken") {
            const Token = cookie[1];
            console.log("UserToken:", Token);
            return Token
        }
    }
    return false
}
const Token = getUserToken();
const params = new Proxy(new URLSearchParams(window.location.search), {
    get: (searchParams, prop) => searchParams.get(prop),
});

let ___Topic = params.Topic; 
let ___SubTopic = params.subTopic; 
let ___testlength = params.testlength;
const ListOfTpoics = {
    aptitude: [
        "Average", //final
        "Percentage", //final
        "Profit and Loss", //final
        "Ratios and Proportions", // final
        "Simple Interest", //final
        "Compound Interest",
        "Time and Work", //final
        "Time and Speed",
    ],
    reasoning: [
        "Coding Decoding",
        "Direction and Distance",

    ],
    general_awareness: [],
    verbal: [
        "Synonym",
        "Antonyms"
    ]
}
function checks(){
    if (!Token) {
        window.location.href = "/login"
    }
    if (!localStorage.getItem('TestToken')) {
        window.location.href = '/dashboard'
    }
    if (!ListOfTpoics.hasOwnProperty(___Topic) || !ListOfTpoics[___Topic].includes(___SubTopic) || ___testlength <= 0) {
        window.location.href = '/dashboard'
    }

}
checks();

let correctAnswers = []
const AnswerSheet = {}
const answers = {};
let currentQuestion = 0;
let TotalQuestion = 0;
let submited = true

const questionsContainer = document.querySelector('#questions');

const ResultDiv = document.getElementById('results')
ResultDiv.style.display = 'none'
const timer = document.getElementById('timer')
timer.style.display = 'none'
const testlength = document.getElementById('testlength')
testlength.innerHTML = `Test Length: ${___testlength}`

const QuestionData = fetch(`/api/questions?testlength=${___testlength}&Topic=${___Topic}&subTopic=${___SubTopic}`).then(response => response.json())

function printBoth(questionsDiv, resultDiv) {
    const questions = document.getElementsByClassName('question');

    for (let i = 0; i < questions.length; i++) {
        questions[i].style.display = 'block';

        const label = questions[i].getElementsByTagName('label')
        for (let j = 0; j < label.length; j++) {

            if (answers[`question${i + 1}`] == label[j].innerText) {
                if (correctAnswers[i] == answers[`question${i + 1}`]) {

                    label[j].style.border = '2px solid green'
                } else {
                    label[j].style.border = '2px solid red'

                }
                label[j].style.color = 'blue'
                label[j].style.padding = '10px'
                label[j].style.borderRadius = '5px'
            }
        }

        const headingTags = questions[i].getElementsByTagName('h2');
        for (let j = 0; j < headingTags.length; j++) {
            headingTags[j].style.fontSize = '30px';
        }

        const buttons = questions[i].getElementsByTagName('button');
        for (let j = 0; j < buttons.length; j++) {
            buttons[j].style.display = 'none';
        }

        const pTags = questions[i].getElementsByTagName('p');
        for (let j = 0; j < pTags.length; j++) {
            pTags[j].style.border = 'none';
        }

        const ans = document.createElement('p')
        ans.id = 'ans'
        ans.innerHTML = `<b>Correct Answer:</b> ${correctAnswers[i]}`

        questions[i].appendChild(ans)
    }

    const originalContents = document.body.innerHTML;

    const temp = document.createElement('div')

    const printtemp = document.getElementById('print')
    printtemp.style.display = 'none'

    const printContents1 = document.getElementById(questionsDiv);
    const printContents2 = document.getElementById(resultDiv);
    const timeTag = printContents2.querySelector('p')
    const time = new Date()
    timeTag.innerHTML = `Given on ${time.toString()}`


    const hr = document.createElement('hr')
    const br = document.createElement('br')
    printContents2.appendChild(br)
    printContents2.appendChild(hr)

    temp.appendChild(printContents2)
    temp.appendChild(printContents1)

    var win = window.open('', '_blank');
    win.document.write('<html><head><link rel="stylesheet" href="/TestPage/test.css"></head><body>');
    win.document.write(temp.innerHTML);     // Write contents in the new window.
    win.document.write('</body></html>');
    win.document.title = `Test Given on ${time.toString()}`
    win.focus()
    setTimeout(() => {
        win.print()
    }, 1200);
    win.document.close();
    document.body.innerHTML = originalContents;

    for (let i = 0; i < questions.length; i++) {
        const lastP = questions[i].lastElementChild;
        if (lastP.tagName === 'P') {
            questions[i].removeChild(lastP);
        }
        questions[i].style.display = 'none';
    }
}

function startCountdown(totalSeconds, minutesSpan, secondsSpan, btn) {
    const countDown = () => {
        const minutes = Math.floor(totalSeconds / 60);
        const seconds = totalSeconds % 60;

        minutesSpan.textContent = minutes < 10 ? '0' + minutes : minutes;
        secondsSpan.textContent = seconds < 10 ? '0' + seconds : seconds;

        if (--totalSeconds < 0) {
            clearInterval(counterInterval);
            btn.click()
        }
    };
    const counterInterval = setInterval(countDown, 1000);
    return counterInterval

}

function displayResult() {
    const inputs = document.querySelectorAll('input[type="radio"]:checked');
    for (const input of inputs) {
        answers[input.name] = input.value;
    }

    let CorrectAnswers = 0;
    let Wrong = 0;
    // totalquestion, correct, Wrong, unattemped, Total, 
    let topicScore = [0, 0, 0, 0, 0]

    const table = document.getElementById("resultTable");

    for (const Topic in AnswerSheet) {
        for (const question in AnswerSheet[Topic]) {
            topicScore[0]++
            if (AnswerSheet[Topic][question] === answers[question]) {
                CorrectAnswers++;
                topicScore[1]++
            } else if (answers[question] == undefined) {
                topicScore[3]++
            } else {
                Wrong++
                topicScore[2]++
            }
        }
        topicScore[4] = `${(CorrectAnswers) - (Wrong * 0.25)} / ${TotalQuestion}`
        let row = table.rows[0]
        let tr2 = row.cells[1]
        tr2.innerHTML = `${Topic.toUpperCase()} (${___SubTopic})`
        for (let i = 0; i < 5; i++) {
            row = table.rows[i + 1];
            tr2 = row.cells[1]
            tr2.innerHTML = topicScore[i]
        }
        topicScore = [0, 0, 0, 0, 0]


    }
    /*  const totalscore_row = table.rows[++index]
     const totalscore = totalscore_row.cells[1]
     totalscore.innerHTML = `${(CorrectAnswers) - (Wrong * 0.25)} / ${TotalQuestion}` */

}

const createQuestion = (question, index, TotalQuestion) => {
    const questionDiv = document.createElement('div');
    questionDiv.classList.add('question');
    questionDiv.id = `question${index + 1}`;

    const questionTitle = document.createElement('h2');
    questionTitle.textContent = `Question ${index + 1}`;

    const questionText = document.createElement('p');
    questionText.innerHTML = `${question.question.replace(/\n/g, '<br>')}`;
    const optionsContainer = document.createElement('div');
    optionsContainer.classList.add("options")
    question.options.forEach((option) => {

        const box = document.createElement('div')
        box.classList.add('options-box')

        const optionInput = document.createElement('input');
        optionInput.type = 'radio';
        optionInput.name = `question${index + 1}`;
        optionInput.value = option

        const optionLabel = document.createElement('label');
        optionLabel.innerHTML = option;

        box.appendChild(optionInput)
        box.appendChild(optionLabel)
        box.appendChild(document.createElement('br'));

        optionsContainer.appendChild(box)
    });

    questionDiv.appendChild(questionTitle);
    questionDiv.appendChild(questionText);
    questionDiv.appendChild(optionsContainer);

    if (index > 0) {
        const prevButton = document.createElement('button');
        prevButton.id = `prev${index + 1}`;
        prevButton.textContent = 'Prev';
        prevButton.addEventListener('click', function () {
            questionDiv.classList.remove('active');
            currentQuestion--;
            questionsContainer.children[currentQuestion].classList.add('active');
        });
        questionDiv.appendChild(prevButton);
    }

    if (index < TotalQuestion - 1) {
        const nextButton = document.createElement('button');
        nextButton.id = `next${index + 1}`;
        nextButton.textContent = 'Next';
        nextButton.addEventListener('click', function () {
            questionDiv.classList.remove('active');
            currentQuestion++;
            questionsContainer.children[currentQuestion].classList.add('active');
        });
        questionDiv.appendChild(nextButton);
    }
    return questionDiv

}

const createSubmitButton = () => {
    const submitButton = document.createElement('button');
    submitButton.id = 'submit';
    submitButton.textContent = 'Submit';

    return submitButton

}
const createJumpSelect = () => {
    const JumpSelect = document.createElement('select');
    JumpSelect.id = 'JumpSelect';
    for (let x = 0; x < ___testlength; x++) {

        const option = document.createElement('option')
        option.text = x + 1;
        option.value = x;
        JumpSelect.add(option)
    }
    JumpSelect.addEventListener('change', function () {
        questionsContainer.children[currentQuestion].classList.remove('active');
        currentQuestion = JumpSelect.value
        questionsContainer.children[currentQuestion].classList.add('active');

    })

    return JumpSelect

}


QuestionData.then((data) => {
    TotalQuestion = data.data.length
    data.data.forEach((question, index) => {
        correctAnswers.push(question.ans)
        if (!AnswerSheet[question.topic]) {
            AnswerSheet[question.topic] = []
        }
        AnswerSheet[question.topic][`question${index + 1}`] = question.ans
        const questionDiv = createQuestion(question, index, TotalQuestion)
        questionsContainer.appendChild(questionDiv);
    });
    const submitButton = createSubmitButton()
    const JumpSelect = createJumpSelect()

    submitButton.style.display = 'none'
    JumpSelect.style.display = 'none'
    questionsContainer.appendChild(JumpSelect);
    questionsContainer.appendChild(submitButton);

});

const startTest = () => {
    localStorage.removeItem('TestToken')

    submited = false
    let totalSeconds = Math.ceil((___testlength * 0.6) * 60);
    const minutesSpan = document.querySelector('#minutes');
    const secondsSpan = document.querySelector('#seconds');
    const submitbtn = document.getElementById('submit')
    const JumpSelect = document.getElementById('JumpSelect')
    testlength.style.display = 'none'
    submitbtn.style.display = 'block'
    JumpSelect.style.display = 'block'
    timer.style.display = 'block'
    const x = startCountdown(totalSeconds - 1, minutesSpan, secondsSpan, submitbtn)

    questionsContainer.children[0].classList.add('active');

    submitbtn.addEventListener('click', function (e) {
        e.preventDefault();
        ResultDiv.style.display = 'block'
        clearInterval(x)
        minutesSpan.textContent = 0
        secondsSpan.textContent = 0
        questionsContainer.children[currentQuestion].classList.remove('active');
        submited = true
        displayResult()
        submitbtn.style.display = 'none'
        JumpSelect.style.display = 'none'
    });
}

const tac = document.getElementById('tac')
const accept_tac = document.getElementById('accept_tac')
accept_tac.addEventListener('click', () => {
    accept_tac.style.display = 'none'
    tac.style.display = 'none'
    startTest()

});

window.onbeforeunload = function () {
    localStorage.removeItem('TestToken')

    return "Are you  ure you want to leave this page?";
};

window.addEventListener("blur", function () {
    if (!submited) {
        submited = true
        questionsContainer.children[currentQuestion].classList.remove('active');
        timer.style.display = 'none'
        const img = document.createElement('img');
        img.setAttribute('id', 'kyabhai');
        img.setAttribute('src', '/bhai.png');
        img.setAttribute('alt', 'image description');
        img.setAttribute('title', 'image title');

        document.body.appendChild(img);

        const sorrybtn = document.createElement('button')
        sorrybtn.id = 'sorrybtn';
        sorrybtn.textContent = 'Sorry!';
        document.body.appendChild(sorrybtn)

        const btn = document.getElementById('submit')
        const JumpSelect = document.getElementById('JumpSelect')
        btn.style.display = 'none'
        JumpSelect.style.display = 'none'
        sorrybtn.addEventListener('click', function () {

            alert("Too Late!!!!")
            img.remove()
            sorrybtn.remove('sorrybtn')
            btn.click()
        });
    }
});