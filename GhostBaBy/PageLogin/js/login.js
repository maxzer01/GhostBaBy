
$(document).ready(function () {
    console.log("ready!");

    const signUP = document.getElementById('sign-up'),
        signIN = document.getElementById('sign-in'),
        loginIN = document.getElementById('login-in'),
        loginUP = document.getElementById('login-up');


    signUP.addEventListener('click', () => {
        loginIN.classList.remove('block');
        loginUP.classList.remove('none');

        loginIN.classList.add('none');
        loginUP.classList.add('block');
    });

    signIN.addEventListener('click', () => {
        loginIN.classList.remove('none');
        loginUP.classList.remove('block');

        loginIN.classList.add('block');
        loginUP.classList.add('none');
    });

});


$("#btn-singup").click(function () {

    var array = [];
    array.push({
        userName: $('#regis-username').val(),
        Name: $('#regis-name').val(),
        userPassword: $('#regis-userpassword').val()
    });
    console.log(array);
    console.log(JSON.stringify(array));

    $.ajax({
        url: "api/login/PostRegister",
        type: "post",
        dataType: 'json',
        contentType: 'application/json',
        data: JSON.stringify(array),
        success: function (d) {
            console.log(d);
        },
    });


});


$("#btn-login").click(function () {

    var userName = $('#login-Username').val();
    var userPassword = $('#login-Pasword').val();

    $.ajax({
        type: 'get',
        url: 'api/login/GetLogin?userName=' + userName + '&userPassword=' + userPassword + '',
        contentType: 'application/json',
        success: function (d) {
            console.log(d);

            var Check = Object.values(d).indexOf('Success');
            var result = Object.values(d);
            var userName = result[2];
            var link = "/PageIndex?userName=" + userName;

            if (Check > -1) {
                window.location = link;
            } else {
                ClearText();
                alert("Error Check Login");
            }

        },
    });


});


function ClearText() {
    $('input').val('');
}