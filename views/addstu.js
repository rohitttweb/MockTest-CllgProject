

function addstu() {
    var stuname = document.getElementById('stuname')
    var stuemail = document.getElementById('stuemail')
    var stupass = document.getElementById('stupass')
    const data = {
        stusignup: "stusignup",
        stuname: stuname.value,
        stuemail: stuemail.value,
        stupass: stupass.value
    }
    fetch('/StudentData/addstudent.php', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(data)
    }).then(response => response.json()).then(data => {
        if (data == 'ok') {
            document.getElementById('successMsg').innerHTML('<span>Registration Succesful!!!</span>')
        } else {
            document.getElementById('successMsg').innerHTML('<span>Unable To Register</span>')

        }
    }).catch(error => {
        // handle any errors that occur during the fetch request
        console.error('Error:', error);
    });
}
