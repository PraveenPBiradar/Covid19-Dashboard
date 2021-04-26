<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>covid19appreg</title>
    <link rel="stylesheet" href="css/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script type="text/javascript" src="/webjars/jquery/jquery.min.js"></script>
    <script type="text/javascript" src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <!---we had linked our css file----->
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
        }

        * {
            box-sizing: border-box;
        }

        /* style the container */
        .container {
            position: relative;
            border-radius: 5px;
            background-color: #f2f2f2;
            padding: 20px 0 30px 0;
        }

        /* style inputs and link buttons */
        input,
        .btn {
            width: 100%;
            padding: 12px;
            border: none;
            border-radius: 4px;
            margin: -2px 0;
            opacity: 0.75;
            display: inline-block;
            font-size: 17px;
            line-height: 20px;
            text-decoration: none; /* remove underline from anchors */
        }

        input:hover,
        .btn:hover {
            opacity: 1;
        }

        /* add appropriate colors to fb, twitter and google buttons */
        .google {
            background-color: #e60000;
            color: white;
        }

        .fb {
            background-color: #3B5998;
            color: white;
        }

        /* style the submit button */
        input[type=submit] {
            background-color: #4CAF50;
            color: white;
            cursor: pointer;
        }

        input[type=submit]:hover {
            background-color: #45a049;
        }

        /* Two-column layout */
        .col {
            float: left;
            width: 50%;
            margin: auto;
            padding: 0 50px;
            margin-top: 6px;
        }

        /* Clear floats after the columns */
        .row:after {
            content: "";
            display: table;
            clear: both;
        }

        /* vertical line */
        .vl {
            position: absolute;
            left: 50%;
            transform: translate(-50%);
            border: 2px solid #ddd;
            height: 175px;
        }

        /* text inside the vertical line */
        .vl-innertext {
            position: absolute;
            top: 50%;
            transform: translate(-50%, -50%);
            background-color: #f1f1f1;
            border: 1px solid #ccc;
            border-radius: 50%;
            padding: 8px 10px;
        }

        /* hide some text on medium and large screens */
        .hide-md-lg {
            display: none;
        }

        /* bottom container */
        .bottom-container {
            text-align: center;
            background-color: #666;
            border-radius: 0px 0px 4px 4px;
        }

        /* Responsive layout - when the screen is less than 650px wide, make the two columns stack on top of each other instead of next to each other */
        @media screen and (max-width: 650px) {
            .col {
                width: 100%;
                margin-top: 0;
            }

            /* hide the vertical line */
            .vl {
                display: none;
            }

            /* show the hidden text on small screens */
            .hide-md-lg {
                display: block;
                text-align: center;
            }
        }
    </style>
</head>
<body>
<div class="full-page" style="background-image: url('img/covind13.jpeg');">
    <div class="navbar">
        <nav>
        </nav>
    </div>
    <div id='login-form' class='login-page'>
        <div class="form-box">
            <div class='button-box'>
                <div id='btn'></div>
                <button type='button' onclick='login()' class='toggle-btn' style="color: #ff0000">Log In</button>
                <button type='button' onclick='register()' class='toggle-btn' style="color: #ff0000 ">Register</button>
            </div>
            <div id="googlebtn" style="padding-left: 60px;padding-right: 60px">
                <a href="/oauth2/authorization/facebook" class="fb btn">
                    <i class="fa fa-facebook fa-fw"></i> Login with Facebook
                </a></div>
            <%--<div class="container unauthenticated">
                <a href="/oauth2/authorization/facebook" type="submit" class="btn btn-lg btn-success"
                   style="align : center">Continue with Facebook</a>
            </div>--%>
            <form id='login' class='input-group-login' action="/home" method="post" style="padding-top: 20px">
                <input type='text' id="name" name="name" class='input-field' placeholder='Enter Name' required>
                <input type='password' id="pwd" name="pwd" class='input-field' placeholder='Enter Password'
                       onchange="return validateUserLogin();" required>
                <input type='checkbox' class='check-box'><span>Remember Password</span>
                <button type='submit' onclick='loginwithdetails()' class='submit-btn'>Log in</button>
            </form>
            <form id='register' class='input-group-register' action="" method="post">
                <input type='text' class='input-field' id="uname" name="uname"
                       onkeypress="return blockSpecialChar(event)" placeholder='User Name'
                       onchange="return validateUsername();" required>
                <input type='email' class='input-field' id="email" name="email" onchange="return validateEmail();"
                       placeholder='Email Id' required>
                <input type='password' class='input-field' id="password" name="password" placeholder='Enter Password'
                       required>
                <input type='checkbox' class='check-box' style="width: fit-content"><span>I agree to the terms and conditions</span>
                <button type='button' class='submit-btn' onclick="submitUserDeatils();">Register</button>
            </form>
        </div>
    </div>
</div>
<script>
    var x = document.getElementById('login');
    var y = document.getElementById('register');
    var z = document.getElementById('btn');

    function register() {
        x.style.left = '-400px';
        y.style.left = '50px';
        z.style.left = '110px';
        $('#googlebtn').hide();
    }

    function login() {
        $('#googlebtn').show();
        x.style.left = '50px';
        y.style.left = '450px';
        z.style.left = '0px';
    }
</script>
<script>
    var modal = document.getElementById('login-form');
    window.onclick = function (event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }
</script>
<script type="text/javascript"
        src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js">
</script>
<script type="text/javascript">
    function blockSpecialChar(e) {
        var k;
        document.all ? k = e.keyCode : k = e.which;
        return ((k > 64 && k < 91) || (k > 96 && k < 123));
    }

    function validateEmail() {
        var email = $('#email').val();
        var reg = /^(?:[\w\!\#\$\%\&\'\*\+\-\/\=\?\^\`\{\|\}\~]+\.)*[\w\!\#\$\%\&\'\*\+\-\/\=\?\^\`\{\|\}\~]+@(?:(?:(?:[a-zA-Z0-9](?:[a-zA-Z0-9\-](?!\.)){0,61}[a-zA-Z0-9]?\.)+[a-zA-Z0-9](?:[a-zA-Z0-9\-](?!$)){0,61}[a-zA-Z0-9]?)|(?:\[(?:(?:[01]?\d{1,2}|2[0-4]\d|25[0-5])\.){3}(?:[01]?\d{1,2}|2[0-4]\d|25[0-5])\]))$/;
        if (!email.match(reg)) {
            swal("Invalid Email Address", "Try Using @ and .in/.com", "error");
            $('#email').val('');
        } else {
            $.ajax
            ({
                type: "GET",
                url: "./validateEmail/" + email,
                async: false,
                dataType: "JSON",
                success: function (response) {
                    if (response == 1) {
                        swal('Email Already In Use!!! ', "Try Different One", "error");
                        $('#email').val('');
                    }
                }
            });
        }
    }

    function validateUsername() {
        var uname = $('#uname').val();
        $.ajax
        ({
            type: "GET",
            url: "./validateUsername/" + uname,
            async: false,
            dataType: "JSON",
            success: function (response) {
                if (response == 1) {
                    swal('Username Provided Is Already In Use !!!', 'Try Different One', "error");
                    $('#uname').val('');
                } else {
                    return true;
                }
            }
        });
    }

    function validateUserLogin() {
        var name = $('#name').val();
        var pwd = $('#pwd').val();
        $.ajax
        ({
            type: "GET",
            url: "./validateUserLogin/" + name + "/" + pwd,
            async: false,
            dataType: "JSON",
            success: function (response) {
                if (response == 0) {
                    swal('Bad Credentials !!!', 'No User Found For This Data', "error");
                    $('#name').val('');
                    $('#pwd').val('');
                } else {
                    return true;
                }
            }
        });
    }

    function submitUserDeatils() {
        var uname = $('#uname').val();
        var email = $('#email').val();
        var password = $('#password').val();
        var millisecondsToWait = 2000;
        $.ajax
        ({
            type: "POST",
            url: "./userreg",
            dataType: "text",
            data: {
                uname: uname,
                email: email,
                password: password,
            },
            success: function (response) {
                if (response == "Success") {
                    swal('User Details Submitted successfully', 'Thank You For Registering', 'success');
                    document.getElementById("register").reset();
                    setTimeout(function () {
                        loadLoginPage();
                    }, millisecondsToWait);
                }
                if (response == "Failed") {
                    swal('Failed To Submit Details', 'Try Again After Sometime', 'error');
                    document.getElementById("register").reset();
                }
            }
        });
    }

    function loadLoginPage() {
        location.reload();
    }
</script>
<script type="text/javascript"
        src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js">
</script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</body>
</html>