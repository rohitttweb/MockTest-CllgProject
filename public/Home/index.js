const toggleBtn = document.querySelector('.nav-toggle');
const navMenu = document.querySelector('.nav-menu');
const navContainer = document.querySelector('.nav-container');

toggleBtn.addEventListener('click', () => {
    navMenu.classList.toggle('nav-active');
    navContainer.classList.toggle('nav-active');
});


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
const userLogingDiv = document.querySelector('.userLogingDiv')

const selectContainer = document.querySelector('.select-container')
const Greeting = document.querySelector('.Greeting')
const SubGreeting = document.querySelector('.Sub-Greeting')
const Profile_Info = document.querySelector('.Profile_Info')
const LogoutButton = document.querySelector('.Logout-button')

LogoutButton.addEventListener('click', function() {
    document.cookie = "UserToken=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/;";
    window.location.reload()
})

if (Token) {
    const userIcon = document.createElement('img')
    userIcon.setAttribute('id', 'UserIcon');
    userIcon.setAttribute('src', '/usericon.jpg');
    userIcon.setAttribute('alt', 'image description');
    userIcon.setAttribute('title', 'image title');
    userLogingDiv.appendChild(userIcon)

    fetch('/api/whoami', {
        method: 'GET',
        headers: {
            "Authorization": `Bearer ${Token}`
        },
    })
        .then(response => {
            if (!response.ok) {
                throw new Error("Network response was not ok");
            }
            return response.json();
        })
        .then(data => {
            console.log(data);
            Greeting.innerHTML = `Hey!!! 🙌 @${data.name}...`
            SubGreeting.innerHTML = `Test YourSelf`
            Profile_Info.querySelector('h3').innerHTML = `${data.name}`
        })
        .catch(error => {
            console.error('Error:', error);
        });
        
        const profileIcon = document.getElementById("UserIcon");
        const profileWindow = document.querySelector(".profile-container");
        const closeButton = profileWindow.querySelector(".close-button");
        
        profileIcon.addEventListener("click", function(event) {
            event.preventDefault();
            profileWindow.style.display = "block";
          
        });
        
        closeButton.addEventListener("click", function() {
          profileWindow.style.display = "none";
        });
        

} else {
    selectContainer.style.display = 'none'
    const LoginBtn = document.createElement('button')
    LoginBtn.id = "LoginBtn"
    LoginBtn.textContent = "Log In"
    userLogingDiv.appendChild(LoginBtn)
    LoginBtn.addEventListener('click', function () {
        if (localStorage.getItem('user')) {
            localStorage.removeItem('user')
            window.location.reload()
        } else {

            window.location.href = '/login'
        }
    })
}









const TestType = document.getElementById('Test-Type')
const TestLength = document.getElementById('Test-Length')
const TakeATest = document.getElementById('TakeATest')
TestType.addEventListener('change', function(){
    if(TestType.value == "null"){
        TestLength.value = "null"
        TestLength.style.display = 'none'
    }else{
        localStorage.setItem('TestTopic', TestType.value)
        TestLength.style.display = 'block'
    }
})
TestLength.addEventListener('change', function(){
    if(TestLength.value == "null"){
        TakeATest.style.display = 'none'
    }else{
        localStorage.setItem('TestLength', TestLength.value)
        TakeATest.style.display = 'block'
    }
})
