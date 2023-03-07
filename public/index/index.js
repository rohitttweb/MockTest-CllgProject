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
            return Token
        }
    }
    return false
}
const Token = getUserToken();






const main_btn = document.querySelector('#main_btn')
const topRightBtn = document.querySelector('#topRightBtn')
const proof = document.querySelector('#proof')
if (Token) {
    fetch('/api/whoami', {
        method: 'GET',
        headers: {
            'Content-Type': 'application/json',
            'Authorization': `Bearer ${Token}`
        }
    }).then(response => response.json()).then((data) => {
        proof.innerHTML = `Loged in as ${data.name}`
    })
    main_btn.innerHTML = 'Dashboard >>'
    main_btn.href = '/dashboard'
    topRightBtn.innerHTML = "Log out"
    topRightBtn.href = '/logout'
}













document.addEventListener('scroll', function () {
    navMenu.classList.remove('nav-active');
    navContainer.classList.remove('nav-active');
})