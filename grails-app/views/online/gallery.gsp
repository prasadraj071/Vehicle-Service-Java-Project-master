<!-- Page Content -->
<style>
    .max-width{
        max-width: 100%;
    }
</style>
<div class="container" style="background-color: lightgray">
    <div class="row py-5 text-center">
        <div class="col-sm-12">
            <div id="demo" class="carousel slide" data-ride="carousel">

                <!-- Indicators -->
                <ul class="carousel-indicators">
                    <li data-target="#demo" data-slide-to="0" class="active"></li>
                    <li data-target="#demo" data-slide-to="1"></li>
                    <li data-target="#demo" data-slide-to="2"></li>
                    <li data-target="#demo" data-slide-to="3"></li>
                    <li data-target="#demo" data-slide-to="4"></li>
                    <li data-target="#demo" data-slide-to="5"></li>
                    <li data-target="#demo" data-slide-to="6"></li>
                    <li data-target="#demo" data-slide-to="7"></li>
                    <li data-target="#demo" data-slide-to="8"></li>
                    <li data-target="#demo" data-slide-to="9"></li>
                </ul>

                <!-- The slideshow -->
                <div class="carousel-inner display-control thumbnail">
                    <div class="carousel-item text-center">
                        <asset:image class="img-responsive max-width" src="/gallery/img7.jpeg"
                                     alt="Vehicle Service - car and bike servicing workshop" width="583" height="450"/>
                    </div>

                    <div class="carousel-item text-center">
                        <asset:image class="img-responsive max-width" src="/gallery/img3.jpeg"
                                     alt="Vehicle Service - car and bike servicing workshop" width="583" height="450"/>
                    </div>

                    <div class="carousel-item active text-center">
                        <asset:image class="img-responsive max-width" src="/gallery/img4.jpeg"
                                     alt="Vehicle Service car and bike servicing workshop" width="583" height="450"/>
                    </div>

                    <div class="carousel-item text-center">
                        <asset:image class="img-responsive max-width" src="/gallery/img5.jpeg"
                                     alt="Vehicle Service car and bike servicing workshop" width="583" height="450"/>
                    </div>

                    <div class="carousel-item text-center">
                        <asset:image class="img-responsive max-width" src="/gallery/img6.jpeg"
                                     alt="Vehicle Service car and bike servicing workshop" width="583" height="450"/>
                    </div>

                    <div class="carousel-item text-center">
                        <asset:image class="img-responsive max-width" src="/gallery/img2.jpeg"
                                     alt="Vehicle Service car and bike servicing workshop" width="583" height="450"/>
                    </div>

                    <div class="carousel-item text-center">
                        <asset:image class="img-responsive max-width" src="/gallery/img8.jpeg"
                                     alt="Vehicle Service car and bike servicing workshop" width="583" height="450"/>
                    </div>

                    <div class="carousel-item text-center">
                        <asset:image class="img-responsive max-width" src="/gallery/img9.jpeg"
                                     alt="Vehicle Service car and bike servicing workshop" width="583" height="450"/>
                    </div>

                    <div class="carousel-item text-center">
                        <asset:image class="img-responsive max-width" src="/gallery/img10.jpeg"
                                     alt="Vehicle Service car and bike servicing workshop" width="583" height="450"/>
                    </div>

                    <div class="carousel-item text-center thumbnail">
                        <asset:image class="img-responsive max-width" src="/gallery/img1.jpeg"
                                     alt="Vehicle Service car and bike servicing workshop" width="583" height="450"/>
                    </div>
                </div>

                <!-- Left and right controls -->
                <a class="carousel-control-prev" href="#demo" data-slide="prev">
                    <i class="fa fa-arrow-circle-left" style="color: #278ccc; font-size: 30px;"></i>
                </a>
                <a class="carousel-control-next" href="#demo" data-slide="next">
                    <i class="fa fa-arrow-circle-right" style="color: #278ccc; font-size: 30px;"></i>
                </a>
            </div>
        </div>
    </div>
</div>
<!-- /.container -->
<script>
    $(document).ready(function () {
        $("#services").removeClass('active');
        $("#home").removeClass('active');
        $("#gallery").addClass('active');
        $("#contact").removeClass('active');
        $("#breakdown").removeClass('active');
        $("#maintenance").removeClass('active');
        // Activate Carousel
        $(".carousel").carousel();

// Enable Carousel Indicators
        $(".item").click(function () {
            $(".carousel").carousel(1);
        });

// Enable Carousel Controls
        $(".left").click(function () {
            $(".carousel").carousel("prev");
        });
    });
</script>
</body>
</html>