<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>Demo</title>
    <meta name="description" content=""/>
    <meta name="viewport" content="width=device-width"/>
    <base href="/"/>
    <link rel="stylesheet" type="text/css" href="/webjars/bootstrap/css/bootstrap.min.css"/>
    <script type="text/javascript" src="/webjars/jquery/jquery.min.js"></script>
    <script type="text/javascript" src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<h1 class="m-5">Welcome to Spring Boot Application</h1>

<div class="container unauthenticated">
    <a href="./oauth2/authorization/facebook" type="submit" class="btn btn-lg btn-success"
       style="align : center">Continue with Facebook</a>
</div>
<div class="container authenticated" style="display:none">
    <h2> Logged in as: <span id="user" class="text-primary"></span></h2>
</div>
</body>
</html>