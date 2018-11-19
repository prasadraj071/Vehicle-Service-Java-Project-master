<asset:javascript src="bootstrap-datepicker.min.js"/>
<asset:javascript src="typeahead.bundle.js"/>
<asset:javascript src="admin.js"/>
<script src="http://rendro.github.io/easy-pie-chart/javascripts/jquery.easy-pie-chart.js"></script>
<!-- Page Content -->
<style>
    .modal-footer>:not(:last-child) {
        margin-right: 3.25rem;
}

</style>

<div class="container">

    <!-- Jumbotron Header -->
    <header class="jumbotron my-2" style="opacity: 0.8">
    <!-- Page Features -->
    <div class="row text-center">

        <div class="col-lg-3 col-md-6 mb-4">
            <div class="card border-primary">
                <h5 class="card-header text-white bg-primary">
                   Bookings Recieved
                </h5>
                <div class="card-body text-white bg-dark">
                    <h6 class="card-title">No of Bookings: 100</h6>
                    <div class="text-center">
                        <span  class="min-chart" id="chart-sales" data-percent="90"></span>

                    </div>
                </div>
            </div>
        </div>

        <div class="col-lg-3 col-md-6 mb-4">
            <div class="card border-secondary">
                <h5 class="card-header text-white bg-secondary">
                    Bookings InProgess
                </h5>

                <div class="card-body text-white bg-dark">
                    <h6 class="card-title">No of Bookings: 100</h6>
                    <div class="text-center">
                        <!--<span  class="min-chart" id="chart-sales" data-percent="90"></span>-->
                    </div>
                </div>
            </div>
        </div>

        <div class="col-lg-3 col-md-6 mb-4">
            <div class="card border-success">
                <h5 class="card-header text-white bg-success">
                    Bookings Completed
                </h5>
                <div class="card-body text-white bg-dark">
                    <h6 class="card-title">No of Bookings: 100</h6>
                    <div class="text-center">
                        <!--<span  class="min-chart" id="chart-sales" data-percent="90"></span>-->
                    </div>
                </div>

            </div>
        </div>

        <div class="col-lg-3 col-md-6 mb-4">
            <div class="card border-danger">
                <h5 class="card-header text-white bg-danger">
                    Delayed Bookings
                </h5>
                <div class="card-body text-white bg-dark">
                    <h6 class="card-title">No of Bookings: 100</h6>
                    <div class="text-center">
                        <!--<span  class="min-chart" id="chart-sales" data-percent="90"></span>-->
                    </div>
                </div>
            </div>
        </div>
    </div>
    </header>
</div>
</body>
</html>
