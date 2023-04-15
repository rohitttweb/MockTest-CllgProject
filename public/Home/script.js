function getUserToken() {
	const cookies = document.cookie.split("; ");
	for (let i = 0; i < cookies.length; i++) {
		const cookie = cookies[i].split("=");
		if (cookie[0] === "UserToken") {
			const Token = cookie[1];
			return Token
		}
	}
	return false
}
const Token = getUserToken();

if (!Token) {
	window.location.href = '/login'
}
if (localStorage.getItem('admin')) {
	const ulElement = document.querySelector('#bottom-menu');
	const li2Element = document.querySelector('#logout');

	// create a new <li> element
	const li = document.createElement('li');
	// set the properties and attributes of the new <li> element
	li.innerHTML = '<a href="/add"><i class="bx bxs-cog"></i><span class="text">Admin ?</span></a>';

	// insert the new <li> element in between the two existing <li> elements
	ulElement.insertBefore(li, li2Element);


}


const allSideMenu = document.querySelectorAll('#sidebar .side-menu.top li a');

const TopicList = {
	aptitude: [
		"Average", //final
		"Percentage", //final
		"Profit and Loss", //final
		"Ratios and Proportions", //final
		"Simple Interest", //final
		"Compound Interest",
		"Time and Work", // final
		"Time and Speed",
	],
	reasoning: [
		"Coding Decoding",//final
		"Direction and Distance",//final
		"Number and Letter Series",
		"Ranking and Arrangements",
		"Syllogism"

	],
	general_awareness: [
		"History",
		"Geography",
		"Indian Polity and Constitution",
		"Indian Economy and Budget",
		"Science and Technology",
		"Sports and Games",
		"Awards and Honours",
		"Books and Authors",
		"Important Days and Dates",
		"Art and Culture"
	],
	verbal: [
		"Synonym and Antonyms",
		"Grammar and sentence structure",
		"Idioms and phrases",
		"Vocabulary",
		"Reading comprehension",
		"Error detection and correction",
		"Analogies",
		"Sentence completion",
	]
}
const box = document.querySelector('.box-info')
const mainTopic = document.querySelector('#mainTopic')
const mainTopicNext = document.querySelector('#mainTopicNext')
const testlength = document.querySelector('#testlenght')
testlength.addEventListener('change', function () {
	box.innerHTML = "<h2>Chosse Topic From Sidebar</h2>"
	mainTopic.innerHTML = '~'
	mainTopicNext.innerHTML = '~'
})
allSideMenu.forEach(item => {
	const li = item.parentElement;
	item.addEventListener('click', function () {

		box.innerHTML = ''
		TopicList[item.id].forEach(x => {
			const listitem = document.createElement('li')
			const span = document.createElement('span')
			span.classList.add('text')
			const aTag = document.createElement('a')
			aTag.innerHTML = x
			aTag.href = `/test?Topic=${item.id}&subTopic=${x}&testlength=${testlength.value}`
			aTag.addEventListener('click', function () {
				localStorage.setItem("TestToken", true)
			})
			span.appendChild(aTag)
			listitem.appendChild(span)
			box.appendChild(listitem)
		})

		allSideMenu.forEach(i => {
			i.parentElement.classList.remove('active');
		})
		li.classList.add('active');
		mainTopic.innerHTML = item.id
		mainTopicNext.innerHTML = 'topics'
	})
});



// TOGGLE SIDEBAR
const menuBar = document.querySelector('#content nav .bx.bx-menu');
const sidebar = document.getElementById('sidebar');

menuBar.addEventListener('click', function () {
	sidebar.classList.toggle('hide');
})







const searchButton = document.querySelector('#content nav form .form-input button');
const searchButtonIcon = document.querySelector('#content nav form .form-input button .bx');
const searchForm = document.querySelector('#content nav form');

searchButton.addEventListener('click', function (e) {
	if (window.innerWidth < 576) {
		e.preventDefault();
		searchForm.classList.toggle('show');
		if (searchForm.classList.contains('show')) {
			searchButtonIcon.classList.replace('bx-search', 'bx-x');
		} else {
			searchButtonIcon.classList.replace('bx-x', 'bx-search');
		}
	}
})





if (window.innerWidth < 768) {
	sidebar.classList.add('hide');
} else if (window.innerWidth > 576) {
	searchButtonIcon.classList.replace('bx-x', 'bx-search');
	searchForm.classList.remove('show');
}


window.addEventListener('resize', function () {
	if (this.innerWidth > 576) {
		searchButtonIcon.classList.replace('bx-x', 'bx-search');
		searchForm.classList.remove('show');
	}
})



const switchMode = document.getElementById('switch-mode');

switchMode.addEventListener('change', function () {
	if (this.checked) {
		document.body.classList.add('dark');
	} else {
		document.body.classList.remove('dark');
	}
})

