<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PageIndex.aspx.cs" Inherits="GhostBaBy.PageIndex" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>BaBy Ghost</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" />
    <link rel="stylesheet" href="Content/swiper-bundle.min.css" />
    <link rel="stylesheet" href="css/PageIndex.css" />

    <script type="text/javascript" src="Scripts/jquery-3.4.1.min.js"></script>
    <script type="text/javascript" src="Scripts/swiper-bundle.min.js"></script>

</head>
<body>

    <form id="form1" runat="server">

        <asp:ScriptManager ID="ScriptManager2" runat="server" EnablePageMethods="true" />

        <header class="header" id="header">
            <nav class="nav container">
                <a href="#" class="nav__logo">
                    <img src="img/logo.png" alt="" class="nav__logo-img" />
                </a>

                <div class="nav__menu" id="nav-menu">
                    <ul class="nav__list">
                        <li class="nav_item">
                            <a href="#home" class="nav__link">Home</a>
                        </li>
                        <li class="nav_item">
                            <a href="#about" class="nav__link">About</a>
                        </li>                     
                        <li class="nav_item">
                            <a href="#ghostmember" class="nav__link">Ghostmember</a>
                        </li>
                        <li class="nav_item">
                            <a href="#popular" class="nav__link">Popula sale</a>
                        </li>
                        <li class="nav_item">
                            <a runat="server" href="#" class="nav__link" id="btnLogin">Login</a>
                        </li>
                    </ul>

                    <div class="nav__close" id="nav-close">
                        <i class="ri-close-line"></i>
                    </div>
                </div>

                <div class="nav__toggle" id="nav-toggle">
                    <i class="ri-menu-line"></i>
                </div>
            </nav>
        </header>


        <main class="main">
            <section class="section home" id="home">
                <img src="img/bghalloween.png" alt="" class="home__bg" />

                <div class="home__data container">
                    <h1 class="home__title">Welcome To</h1>
                    <h2 class="home__subtitle">BABY GHOST</h2>
                </div>

                <div class="home__container container grid">
                    <div class="home__show-img">
                        <img src="img/HOME.png" alt="" class="home__img" />
                    </div>
                </div>
            </section>


            <section class="section about" id="about">
                <div class="about__container container grid">
                    <div class="about__data">
                        <h2 class="section__title about__title">ABOUT
                            <br />
                            BABY GHOSTS
                        </h2>
                        <p class="about__description">
                            When a wraith daddy and a banshee mommy love each other very much, something magical happens. Out of the cabbage patch next to the graveyard rises a brand new generation of revenants! At pre-K, Baby Ghosts make friends and discover the world, until one day, the whole daycare is exorcised and all Baby Ghosts are released!
                        </p>
                        <a href="#" class="btn button">know more </a>
                    </div>
                </div>
            </section>



            <section class="section ghostmember" id="ghostmember">
                <h2 class="section__title">Ghost Menber</h2>

                <div class="ghostmember__container container grid" id="GhostMemberList">

                    <%--<div class="ghostmember__content">
                        <img src="image/post-img1.png" alt="" class="ghostmember__img" />
                        <h3 class="ghostmember_title">LOKII</h3>
                        <span class="ghostmember_subtitle">Co-founder and father of the Baby Ghosts</span>

                        <div class="ghostmember__icon">
                            <a href="#" class="ghostmember__icon-link">
                               <i class="ri-file-edit-line"></i>
                            </a>
                            <a href="#" class="ghostmember__icon-link">
                                <i class="ri-discord-fill"></i>
                            </a>
                            <a href="#" class="ghostmember__icon-link">
                                <i class="ri-messenger-fill"></i>
                            </a>
                        </div>
                    </div>--%>
                  
                    

                </div>
            </section>



            <section class="section popular" id="popular">
                <h2 class="section__title">POPULAR SALE</h2>

                <div class="popular__container container swiper">

                    <div class="swiper-wrapper">
                        <div class="popular__content swiper-slide">
                            <img src="img/trick-treat1-img.png" alt="" class="popular__img" />
                            <h1 class="popular__title">Toffee</h1>
                            <span class="popular__subtitle">Candy</span>
                            <span class="popular__price">$11.99</span>

                            <button class="button popular__button">
                                <i class="ri-shopping-cart-2-line popular__icon"></i>
                            </button>
                        </div>

                        <div class="popular__content swiper-slide">
                            <img src="img/trick-treat2-img.png" alt="" class="popular__img" />
                            <h1 class="popular__title">Bone</h1>
                            <span class="popular__subtitle">Accessory</span>
                            <span class="popular__price">$8.98</span>

                            <button class="button popular__button">
                                <i class="ri-shopping-cart-2-line popular__icon"></i>
                            </button>
                        </div>

                        <div class="popular__content swiper-slide">
                            <img src="img/trick-treat3-img.png" alt="" class="popular__img" />
                            <h1 class="popular__title">Scarecrow</h1>
                            <span class="popular__subtitle">Accessory</span>
                            <span class="popular__price">$15.99</span>

                            <button class="button popular__button">
                                <i class="ri-shopping-cart-2-line popular__icon"></i>
                            </button>
                        </div>

                        <div class="popular__content swiper-slide">
                            <img src="img/trick-treat4-img.png" alt="" class="popular__img" />
                            <h1 class="popular__title">Candy Cane</h1>
                            <span class="popular__subtitle">Candy</span>
                            <span class="popular__price">$7.99</span>

                            <button class="button popular__button">
                                <i class="ri-shopping-cart-2-line popular__icon"></i>
                            </button>
                        </div>

                        <div class="popular__content swiper-slide">
                            <img src="img/trick-treat5-img.png" alt="" class="popular__img" />
                            <h1 class="popular__title">Pumkin</h1>
                            <span class="popular__subtitle">Accessory</span>
                            <span class="popular__price">$15.99</span>

                            <button class="button popular__button">
                                <i class="ri-shopping-cart-2-line popular__icon"></i>
                            </button>
                        </div>

                        <div class="popular__content swiper-slide">
                            <img src="img/trick-treat6-img.png" alt="" class="popular__img" />
                            <h1 class="popular__title">Ghost</h1>
                            <span class="popular__subtitle">Accessory</span>
                            <span class="popular__price">$11.99</span>

                            <button class="button popular__button">
                                <i class="ri-shopping-cart-2-line popular__icon"></i>
                            </button>
                        </div>
                    </div>

                    <div class="swiper-pagination"></div>

                </div>
            </section>



            <section class="section footer">
                <div class="footer__container container grid">

                    <div class="footer__content">
                        <a href="#" class="footer__logo">
                            <i class="ri-ghost-2-line"></i>Ghost
                        </a>
                        <p class="footer__description">
                            Now lost spirits and spread to the wind,
                            <br />
                            Baby Ghosts are free to haunt throughout the Earth.
                        </p>
                    </div>

                    <div class="footer__content">
                        <h3 class="footer__title">Company</h3>

                        <ul class="footer__links">
                            <li>
                                <a href="#" class="footer__link">About</a>
                            </li>
                            <li>
                                <a href="#" class="footer__link">History</a>
                            </li>
                            <li>
                                <a href="#" class="footer__link">Shop</a>
                            </li>
                        </ul>
                    </div>

                    <div class="footer__content">
                        <h3 class="footer__title">Information</h3>

                        <ul class="footer__links">
                            <li>
                                <a href="#" class="footer__link">Request a quote</a>
                            </li>
                            <li>
                                <a href="#" class="footer__link">Contact us</a>
                            </li>
                            <li>
                                <a href="#" class="footer__link">Service</a>
                            </li>
                        </ul>
                    </div>

                    <div class="footer__content">
                        <h3 class="footer__title">Follow us</h3>

                        <div class="footer__social">
                            <a href="https://www.facebook.com/" class="footer__socail-link" target="_blank">
                                <i class="ri-facebook-fill"></i>
                            </a>
                            <a href="https://www.instagram.com/" class="footer__socail-link" target="_blank">
                                <i class="ri-instagram-line"></i>
                            </a>
                            <a href="https://www.twitter.com/" class="footer__socail-link" target="_blank">
                                <i class="ri-twitter-line"></i>
                            </a>
                        </div>
                    </div>

                </div>

                <span class="footer__copy">&#169; All rigths reserved
                </span>
            </section>


            <a href="#" class="scrollup" id="scroll-up">
                <i class="ri-arrow-up-line"></i>
            </a>



        </main>




    </form>



    <script type="text/javascript" src="js/PageIndex.js"></script>



</body>
</html>
