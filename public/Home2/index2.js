const toggleBtn = document.querySelector('.nav-toggle');
const navMenu = document.querySelector('.nav-menu');
const navContainer = document.querySelector('.nav-container');

toggleBtn.addEventListener('click', () => {
    navMenu.classList.toggle('nav-active');
    navContainer.classList.toggle('nav-active');
});

let TopicLeft = 4

const addButton = document.querySelector('.addButton')
const selectContainer = document.querySelector('.select-container')
const TopicselectDiv = document.querySelector('.TopicselectDiv')
const TestType = document.getElementById('Test-Type');
function moniterChangeInTopicSelect() {
    const topicSelects = document.querySelectorAll(".topic-select");
    function handleChange(event) {
        const selectedValue = event.target.value;
        topicSelects.forEach((select) => {
            if (select !== event.target && select.value === selectedValue) {
                select.value = "null";

            }
        });
    }
    topicSelects.forEach((select) => {
        select.addEventListener("change", handleChange);
    });
}

function moniterChangeInNoOfQuestionSelect() {
    const selects = document.querySelectorAll('.topic-select-NoOfQuestion');

///////////////////////////////

}
let QuestionAvailable = 100
function createNumberOfQuestionSelect() {

    const NoOfQuestion = document.createElement("select");
    NoOfQuestion.classList.add("topic-select-NoOfQuestion");

    for (let x = 0; x < QuestionAvailable; x++) {
        const option = document.createElement("option");
        option.value = x;
        option.text = x;
        NoOfQuestion.add(option);
    }
    return NoOfQuestion

}

function createTopicSelect() {
    const TopicselectinnerDiv = document.createElement('div')
    TopicselectinnerDiv.classList.add('TopicselectinnerDiv')

    const TopicSelect = document.createElement("select");
    TopicSelect.classList.add("topic-select");

    const defatult_option_for_TopicSelect = document.createElement("option");
    defatult_option_for_TopicSelect.value = "null";
    defatult_option_for_TopicSelect.text = "Choose Topic";
    TopicSelect.add(defatult_option_for_TopicSelect);

    Topic.forEach(topic => {
        const option = document.createElement("option");
        option.value = topic.toLowerCase();
        option.text = topic.toUpperCase();
        TopicSelect.add(option);
    });
    TopicselectinnerDiv.appendChild(TopicSelect)
    let NoOfQuestion = createNumberOfQuestionSelect()

    TopicselectinnerDiv.appendChild(NoOfQuestion)



    TopicselectDiv.appendChild(TopicselectinnerDiv)
    TopicLeft--

}

TestType.addEventListener('change', function () {
    if (TestType.value == "null") {
        addButton.style.display = 'none'
        TopicselectDiv.innerHTML = ''
        TopicLeft = 4
        localStorage.removeItem('TestLength')
        return
    }
    if (TestType.value !== "custom") {
        addButton.style.display = 'none'
        TopicselectDiv.innerHTML = ''
        TopicLeft = 4
        const TestType_value = TestType.value;
        localStorage.setItem('TestLength', TestType_value);
        return
    } else {
        addButton.style.display = 'block'
        createTopicSelect()

    }
})

let Topic = ["Aptitude", "reasoning", "Gk", "verbal"]


addButton.addEventListener('click', function () {
    
    createTopicSelect()
    
    moniterChangeInNoOfQuestionSelect()
    moniterChangeInTopicSelect()

    if (TopicLeft < 1) {
        addButton.style.display = 'none'
        return
    }
});
