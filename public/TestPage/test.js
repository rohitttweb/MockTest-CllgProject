if (!localStorage.getItem('TestLength')) {
    window.location.replace('/')
}
let correctAnswers = []

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
    win.document.title =`Test Given on ${time.toString()}`
    win.document.close();
    win.focus()
    setTimeout(() => {
        win.print()
    },1200);
    document.body.innerHTML = originalContents;

    for (let i = 0; i < questions.length; i++) {
        const lastP = questions[i].lastElementChild;
        if (lastP.tagName === 'P') {
            questions[i].removeChild(lastP);
        }
        questions[i].style.display = 'none';
    }
}

const AnswerSheet = {
    Verbal: {},
    GeneralAwareness: {},
    Aptitude: {},
    Reasoning: {}
}
let submited = true
const timer = document.getElementById('timer')
timer.style.display = 'none'
const ResultDiv = document.getElementById('results')
ResultDiv.style.display = 'none'

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

const questionsContainer = document.querySelector('#questions');
let currentQuestion = 0;
let TotalQuestion = 0;

const answers = {};
function displayResult() {
    const inputs = document.querySelectorAll('input[type="radio"]:checked');
    for (const input of inputs) {
        answers[input.name] = input.value;
    }

    let correctAnswers = 0;
    let Wrong = 0;
   
    // totalquestion, correct, Wrong, unattemped, 
    let topicScore = [0, 0, 0, 0]

    let index = 0
    const table = document.getElementById("resultTable");

    for (const Topic in AnswerSheet) {
        index++
        for (const question in AnswerSheet[Topic]) {
            topicScore[0]++
            if (AnswerSheet[Topic][question] === answers[question]) {
                correctAnswers++;
                topicScore[1]++
            } else if (answers[question] == undefined) {

                topicScore[3]++
            } else {
                Wrong++
                topicScore[2]++
            }
        }

        const row = table.rows[index];

        const __totalquestion = row.cells[1]
        const __Correct = row.cells[2];
        const __Wrong = row.cells[3];
        const __Unattempted = row.cells[4]
        const __Score = row.cells[5];

        __totalquestion.innerHTML = topicScore[0]
        __Correct.innerHTML = topicScore[1]
        __Wrong.innerHTML = topicScore[2]
        __Unattempted.innerHTML = topicScore[3]

        __Score.innerHTML = topicScore[1] * 4;
        topicScore = [0, 0, 0, 0]


    }
    const totalscore_row = table.rows[5]
    const totalscore = totalscore_row.cells[1]
    totalscore.innerHTML = `${(correctAnswers * 4) - (Wrong * 1)} / ${TotalQuestion * 4}`

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
        optionLabel.textContent = option;

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
    for (let x = 0; x < localStorage.getItem('TestLength'); x++) {

        const option = document.createElement('option')
        option.text = x +1 ;
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


const testlength = document.getElementById('testlength')
testlength.innerHTML = `Test Length: ${localStorage.getItem('TestLength')}`


const QuestionData = fetch(`/api/questions?testlength=${localStorage.getItem('TestLength')}`).then(response => response.json())

QuestionData.then((data) => {
    TotalQuestion = data.data.length
    data.data.forEach((question, index) => {
        correctAnswers.push(question.ans)
        if (index + 1 <= TotalQuestion / 4) {
            AnswerSheet['Verbal'][`question${index + 1}`] = question.ans;

        } else if (index + 1 > TotalQuestion / 4 && index + 1 <= ((TotalQuestion / 4) * 2)) {
            AnswerSheet['GeneralAwareness'][`question${index + 1}`] = question.ans;

        } else if (index + 1 > ((TotalQuestion / 4) * 2) && index + 1 <= ((TotalQuestion / 4) * 3)) {
            AnswerSheet['Aptitude'][`question${index + 1}`] = question.ans;

        } else {
            AnswerSheet['Reasoning'][`question${index + 1}`] = question.ans;

        }
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

    submited = false
    let totalSeconds = (localStorage.getItem('TestLength') * 0.6) *60;
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
        localStorage.removeItem('TestLength')
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
    return "Are you  ure you want to leave this page?";
};

window.addEventListener("blur", function () {
    if (!submited) {
        submited = true
        questionsContainer.children[currentQuestion].classList.remove('active');
        timer.style.display = 'none'
        const img = document.createElement('img');
        img.setAttribute('id', 'kyabhai');
        img.setAttribute('src', '/fashya.jpeg');
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