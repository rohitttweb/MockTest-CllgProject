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

if (!Token) {
	window.location.href = '/login'
}



const allSideMenu = document.querySelectorAll('#sidebar .side-menu.top li a');
const recentTest = document.querySelector('#recentTest');
const tableData = document.querySelector('.table-data');

const TopicList = {
	aptitude: [
		"Averages",
		"Percentages",
		"Profit and Loss",
		"Ratios and Proportions",
		"Simple Interest and Compound Interest",
		"Time and Work",
		"Time and Speed",
	],
	reasoning: [],
	general_awareness: [],
	verbal: ["Synonym  Antonyms"]
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

		console.log(TopicList[item.id])
		box.innerHTML = ''
		TopicList[item.id].forEach(x => {
			console.log(x)
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
recentTest.addEventListener('click', function () {
	if (tableData.style.display == 'flex') {

		tableData.style.display = 'none'
		recentTest.classList.remove('active')
	} else {
		tableData.style.display = 'flex'
		recentTest.classList.add('active')

	}

})




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

const logoutBtn = document.querySelector('.logout')
logoutBtn.addEventListener('click', function () {
	document.cookie = "UserToken=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/;";
	window.location.href = '/'
})