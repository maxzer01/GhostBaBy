

$(document).ready(function () {
    console.log("ready!");

    const navMenu = document.getElementById('nav-menu');
    const navToggle = document.getElementById('nav-toggle');
    const navClose = document.getElementById('nav-close');

    if (navToggle) {
        navToggle.addEventListener('click', () => {
            navMenu.classList.add('show-menu');
        });
    }

    if (navClose) {
        navClose.addEventListener('click', () => {
            navMenu.classList.remove('show-menu');
        });
    }

    /*=========== REMOVE MENU MOBILE ===========*/
    const navLink = document.querySelectorAll('.nav__link');
    navLink.forEach(n => n.addEventListener('click', linkAction));


    window.addEventListener('scroll', scrollHeader);


    /*breakpoints max-with*/
    var swiperPopular = new Swiper(".popular__container", {
        loop: true,
        speceBetween: 24,
        slidesPerView: 'auto',
        grabCursor: true,
        pagination: {
            el: ".swiper-pagination",
            dynamicBullets: true,
        },
        breakpoints: {
            321: {
                slidesPerView: 2,
                spaceBetween: 40,
            },
            1024: {
                slidesPerView: 3,
                spaceBetween: 48,
            },
        }
    });



    window.addEventListener('scroll', scrollUp);

    window.addEventListener('scroll', scrollActive);


    checkLogin();

});


function linkAction() {
    const navMenu = document.getElementById('nav-menu');

    navMenu.classList.remove('show-menu');
}

function scrollHeader() {
    const header = document.getElementById('header');
    if (this.scrollY >= 50) {
        header.classList.add('scroll-header');
    }
    else {
        header.classList.remove('scroll-header');
    }
}

function scrollUp() {
    const scrollUp = document.getElementById('scroll-up');
    if (this.scrollY >= 350) {
        scrollUp.classList.add('scroll-up');
    }
    else {
        scrollUp.classList.remove('scroll-up');
    }
}



function scrollActive() {
    const section = document.querySelectorAll('section[id]');
    const scrollY = window.pageYOffset;

    section.forEach(current => {
        const sectionHeight = current.offsetHeight;
        const sectionTop = current.offsetTop - 58;
        const sectionId = current.getAttribute('id');

        if (scrollY > sectionTop && scrollY <= sectionTop + sectionHeight) {
            document.querySelector('.nav__menu a[href*=' + sectionId + ']').classList.add('active-link');
        }
        else {
            document.querySelector('.nav__menu a[href*=' + sectionId + ']').classList.remove('active-link');
        }
    });
}




$("#btnLogin").click(function () {

    var link = "/PageLogin/Page_Login";
    window.location = link;

});


function checkLogin() {
    const urlParams = new URLSearchParams(window.location.search);
    const myParam = urlParams.get('userName');

    if (myParam != null) {
        $("#btnLogin").html(myParam);
    }



}