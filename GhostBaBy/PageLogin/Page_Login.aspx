<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page_Login.aspx.cs" Inherits="GhostBaBy.PageLogin.Page_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Page_Login</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" />
    <link rel="stylesheet" href="css/login.css" />
    <script type="text/javascript" src="../Scripts/jquery-3.4.1.min.js"></script>

</head>
<body>

    <form id="form1" runat="server">

        <div class="login">
            <img src="img/bghalloween.png" class="ghost__bg" />

            <div class="login__content">
                <div class="login__img">
                    <img src="img/img1.png" alt="" />
                </div>

                <div class="login__forms">

                    <div class="login__register" id="login-in">
                        <h1 class="login__title">Sign In</h1>

                        <div class="login__box">
                            <i class="ri-user-line login__icon"></i>
                            <input id="login-Username" type="text" placeholder="Username" class="login__input" />
                        </div>

                        <div class="login__box">
                            <i class="ri-lock-line login__icon"></i>
                            <input id="login-Pasword" type="password" placeholder="Password" class="login__input" />
                        </div>

                        <a class="login__button" id="btn-login">Sing In</a>

                        <div>
                            <span class="login__account">Don't have an Account?</span>
                            <span class="login_signin" id="sign-up">Sign Up</span>
                        </div>
                    </div>

                    <div class="login__create none" id="login-up">
                        <h1 class="login__title">Create Account</h1>

                        <div class="login__box">
                            <i class="ri-user-line login__icon"></i>
                            <input id="regis-username" type="text" placeholder="Username" class="login__input" />
                        </div>

                        <div class="login__box">
                            <i class="ri-file-user-fill login__icon"></i>
                            <input id="regis-name" type="text" placeholder="Name" class="login__input" />
                        </div>

                        <div class="login__box">
                            <i class="ri-lock-line login__icon"></i>
                            <input id="regis-userpassword" type="password" placeholder="Password" class="login__input" />
                        </div>

                        <a class="login__button" id="btn-singup">Sing Up</a>

                        <div>
                            <span class="login__account">Already have an Account?</span>
                            <span class="login_signup" id="sign-in">Sign In</span>
                        </div>

                        <div class="login__social">
                            <a href="#" class="login__social-icon"><i class="ri-facebook-fill"></i></a>
                            <a href="#" class="login__social-icon"><i class="ri-twitch-fill"></i></a>
                            <a href="#" class="login__social-icon"><i class="ri-google-fill"></i></a>
                        </div>
                    </div>

                </div>
            </div>
        </div>

    </form>


    <script type="text/javascript" src="js/login.js"></script>

</body>
</html>
