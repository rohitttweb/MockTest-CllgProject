const toggleBtn = document.querySelector('.nav-toggle');
const navMenu = document.querySelector('.nav-menu');
const navContainer = document.querySelector('.nav-container');

toggleBtn.addEventListener('click', () => {
    navMenu.classList.toggle('nav-active');
    navContainer.classList.toggle('nav-active');
});
const selectElement = document.getElementById('Test-length');
selectElement.addEventListener('change', function () {
    if (selectElement.value == 0) {
        localStorage.removeItem('TestLength')
        return
    }
    const selectedValue = selectElement.value;
    localStorage.setItem('TestLength', selectedValue);
})