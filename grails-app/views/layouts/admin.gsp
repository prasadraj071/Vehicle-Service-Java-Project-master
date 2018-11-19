<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Online Services Offered By VehicleService">
    <meta name="author" content="User">
    <title>VehicleService - Admin</title>
    <asset:link rel="shortcut icon" href="logo.png" type="image/x-icon"/>

    <!-- Bootstrap core CSS -->
    <asset:stylesheet src="bootstrap-4.0.0.min.css"/>
    <asset:javascript src="jquery.min.js"/>
    <script src="https://use.fontawesome.com/aa36b8bfc8.js"></script>
    <!-- Custom styles for this page -->
    <asset:stylesheet src="heroic-features.css"/>
    <asset:javascript src="bootstrap.bundle.min.js"/>


</head>

<body>

<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
        <g:link class="navbar-brand" controller="admin" action="login" name="home"><g:message
                code="admin.application.title" default="Vehicle Service"/></g:link>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive"
                aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <!--<div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <g:link class="nav-link" controller="online" action="home" name="home">Home</g:link>
                </li>
                <li class="nav-item">
                    <g:link class="nav-link" controller="online" action="gallery" name="workshop">Workshop</g:link>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Services</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Contact</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="tel:07554910000"><b>Call: <u>0755-4910000</u></b></a>
                </li>
            </ul>
        </div> -->
    </div>
</nav>

<g:layoutBody/>

<!-- Footer -->
<footer class="py-3 bg-dark">
    <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; VehicleService 2017</p>
    </div>
    <!-- /.container -->
</footer>

<script type="text/javascript"> if( navigator.userAgent.match(/iPhone|iPad|iPod/i) ) { $('html').addClass('ios-device'); } </script> <style type="text/css"> .ios-device body.modal-open{position: fixed;} </style>
</body>
</html>