<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Online Services Offered By VehicleService">
    <meta name="author" content="User">
    <title>VehicleService - Home</title>
    <asset:link rel="shortcut icon" href="" type="image/x-icon"/>

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
        <g:link class="navbar-brand font-weight-bold" style="color: #278ccc; font-size: 30px;" controller="online" action="home" name="home"><g:message
                code="default.application.title" default="Vehicle Service"/></g:link>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive"
                aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li id="home" class="nav-item active">
                    <g:link class="nav-link" controller="online" action="home" name="home">Home</g:link>
                </li>
                <li id="gallery" class="nav-item">
                    <g:link class="nav-link" controller="online" action="gallery">Gallery</g:link>
                </li>
                <li id="maintenance" class="nav-item">
                    <g:link class="nav-link" controller="online" action="home" params="[id: 'maintenace']">Repair & Maintenance</g:link>
                </li>
                <li id="breakdown" class="nav-item">
                    <g:link class="nav-link" controller="online" action="home" params="[id: 'breakdown']">24x7 Breakdwon Services</g:link>
                </li>
                <li id="services" class="nav-item">
                    <g:link class="nav-link" controller="online" action="services">Services</g:link>
                </li>
                <li id="contact" class="nav-item">
                    <g:link class="nav-link"controller="online" action="contact">Contact</g:link>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="tel:07554910000"><b>Call: <u>0755-4910000</u></b></a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<g:layoutBody/>

<!-- Footer -->
<footer class="py-4 bg-dark">
    <div class="container">
        <p class="pull-left" style="color: #278ccc;font-size: 30px; margin-top: -1%;">
            <a target="_blank" href=""><i class="fa fa-facebook-square"></i></a>
        </p>
        <p class="pull-left ml-2" style="color: #278ccc;font-size: 30px; margin-top: -1%;">
            <a href="mailto:vehicleservice.com@gmail.com"><i class="fa fa-envelope"></i></a>
        </p>
        <p class="m-0 text-center text-white">
            Copyright &copy; VehicleService 2017
        </p>
    </div>
    <!-- /.container -->
</footer>
<script type="text/javascript"> if( navigator.userAgent.match(/iPhone|iPad|iPod/i) ) { $('html').addClass('ios-device'); } </script> <style type="text/css"> .ios-device body.modal-open{position: fixed;} </style>
</body>
</html>