<asset:javascript src="bootstrap-datepicker.min.js"/>
<asset:javascript src="typeahead.bundle.js"/>
<asset:javascript src="online.js"/>
<!-- Page Content -->
<div class="container">
    <!-- Jumbotron Header -->
    <header class="jumbotron my-4">
        <h1 class="display-3">Welcome</h1>

        <p class="lead"><g:message code="default.application.description"/></p>
        <button type="button" class="btn btn-info btn-lg" data-toggle="modal"
                data-target="#bookingForm">Book Service</button>
    </header>
    <!-- Modal for form page 1 -->
    <div id="bookingForm" class="modal fade" role="dialog">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Book Service</h4>
                    <button type="button" class="close" data-dismiss="modal" onclick="location.reload();">&times;</button>
                </div>

                <div class="modal-body">
                    <div id="serviceForm">
                        <g:render template="serviceForm"/>
                    </div>

                    <div id="serviceFormNext">
                        <g:render template="serviceFormNext"/>
                    </div>

                    <div id="bookingSuccessful">
                        <g:render template="bookingSuccessful"/>
                    </div>
                    <div id="processing">
                        <i class="fa fa-spinner fa-spin"></i> Processing.
                    </div>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-default right" id="back" onclick="back();">Back</button>
                    <button type="button" class="btn btn-info" id="next" onclick="validateServiceForm();">Next</button>
                    <button type="button" class="btn btn-info" id="book" onclick="book()">Book</button>
                    <button type="button" class="btn btn-default" id="close" data-dismiss="modal" onclick="location.reload();">Close</button>
                </div>
            </div>
        </div>
    </div>
    <!-- Page Features -->
    <div class="row text-center">

        <div class="col-lg-3 col-md-6 mb-4">
            <div class="card">
                <div style="position: relative"><asset:image src="bike-service.png" width="200" height="200"
                                                             alt="Bike Service"/></div>

                <div class="card-body">
                    <h4 class="card-title">Bike Service</h4>

                    <p class="card-text">We provide service and maintenance for all type of bikes.</p>
                </div>
            </div>
        </div>

        <div class="col-lg-3 col-md-6 mb-4">
            <div class="card">
                <div style="position: relative"><asset:image src="car-service.png" width="200" height="200"
                                                             alt="Car Service"/></div>

                <div class="card-body">
                    <h4 class="card-title">Car Service</h4>

                    <p class="card-text">We provide servicing and maintenance for all type of cars.</p>
                </div>
            </div>
        </div>

        <div class="col-lg-3 col-md-6 mb-4">
            <div class="card">
                <div style="position: relative"><asset:image src="towing-service.png" width="200" height="200"
                                                             alt="Towing Service"/></div>

                <div class="card-body">
                    <h4 class="card-title">Towing Service</h4>

                    <p class="card-text">Your vehicle needs towing, we are available 24x7.</p>
                </div>
            </div>
        </div>

        <div class="col-lg-3 col-md-6 mb-4">
            <div class="card">
                <div style="position: relative"><asset:image src="breakdown-service.png" width="200" height="200"
                                                             alt="Breakdown Service"/></div>

                <div class="card-body">
                    <h4 class="card-title">Breakdown Service</h4>

                    <p class="card-text">Stuck in the middle of nowhere, give us a call and we will help you out.</p>
                </div>
            </div>
        </div>

    </div>
    <!-- Maintenance -->
    <div class="row" id="maintenaceScroll">
        <header class="jumbotron my-3">
            <h2 class="display-5">Repair &amp; Maintenance Services</h2>

            <p class="lead">Believe it or not, sudden breakdowns in midway are indirect result of ignorance and poor
            regular maintenance and checkup of your vehicle from unprofessional and unskilled technicians.
            Automobile service industry is highly unorganized, thus delivering poor service quality. They
            hardly have proper service tools &amp; equipments to diagnose your vehicle. </p>
            <p class="lead">
            On the other side authorized workshops have failed in maintaining their quality standards, as
            well as transparency at execution level. Also, they don’t value your hard earned money by
            recommending unnecessary repair jobs to fulfill their sales targets.</p>
            <p class="lead">
                Our vision is to provide transparent, reliable and customer friendly services. We offer one stop
                solution, for your cars and two wheelers at our state of the art automated workshops.
            </p>
        </header>

    </div>
    <!-- 24x7 services -->
    <div class="row" id="breakdownScroll">
        <header class="jumbotron my-3">
            <h2 class="display-5">24/7 BREAKDOWN SERVICE</h2>

            <p class="lead">We are available for you round the clock. Our 24/7 breakdown service provides an ease of moving your
            vehicle with peace of mind. GadiRepair have a strong network of 400+ technicians in the city to deliver
            ultrafast onspot repair services for your vehicle issues like puncture, key lost, empty fuel tank, towing &amp;
            starting troubles. We are just a call away from you <a href="tel:07554910000">0755-4910000</a>. </p>
            <p class="lead">
                <ol>
                    <li>
                        <span style="font-weight: bold">Puncture Repair</span><span><i class="fa fa-wrench pl-3" style="font-size:24px; color: #278ccc;"></i></span>
                        <p>
                            On spot tyre puncture service &amp; stepney changing service anywhere &amp; anytime.
                        </p>
                    </li>
                    <li>
                        <span style="font-weight: bold">Emergency Fuel Assistance</span><span><i class="fa fa-tint pl-3" style="font-size:24px; color: #278ccc;"></i></span>
                        <p>
                            On Spot emergency fuel delivery, if you run out of fuel in the midway.
                        </p>
                    </li>
                    <li>
                        <span style="font-weight: bold">On Spot Repairs</span><span><i class="fa fa-road pl-3" style="font-size:24px; color: #278ccc;"></i></span>
                        <p>
                        Onsite repair of car &amp; two wheelers issues like jumpstarting a low battery, starting troubles,
                        control cable replacement etc.
                        </p>
                    </li>
                    <li>
                        <span style="font-weight: bold">Towing</span><span><i class="fa fa-truck pl-3" style="font-size:24px; color: #278ccc;"></i></span>
                        <p>
                        Best in class flatbed towing service to provide your car &amp; two wheeler safe and damage proof
                        towing.
                        </p>
                    </li>
                    <li>
                        <span style="font-weight: bold">
                            Key Lost Assistance</span><span><i class="fa fa-key pl-3" style="font-size:24px; color: #278ccc;"></i></span>
                        <p>
                        Vehicle lockout assistance by expert technicians in case of lost/misplaced keys or locked-out
                        situations.
                        </p>
                    </li>

                </ol>
        </header>

    </div>
</div>

<script>
    $(document).ready(function(){
        $("#carList").hide();
        $("#bikeList").hide();
        $("#serviceFormNext").hide();
        $("#bookingSuccessful").hide();
        $("#processing").hide();
        $("#back").hide();
        $("#book").hide();
        $("#close").hide();
        $("#serviceCostRow").hide();
        $("#cuponMessageValid").hide();
        $("#cuponMessageInValid").hide();
        $("#cuponMessageWaiting").hide();

        if(${id == 'maintenace'}){
            $('html, body').animate({
                scrollTop: $("#maintenaceScroll").offset().top
            }, 'fast');
            $("#services").removeClass('active');
            $("#home").removeClass('active');
            $("#gallery").removeClass('active');
            $("#contact").removeClass('active');
            $("#breakdown").removeClass('active');
            $("#maintenance").addClass('active');
        }
        if(${id == 'breakdown'}){
            $('html, body').animate({
                scrollTop: $("#breakdownScroll").offset().top
            }, 'fast');
            $("#services").removeClass('active');
            $("#home").removeClass('active');
            $("#gallery").removeClass('active');
            $("#contact").removeClass('active');
            $("#breakdown").addClass('active');
            $("#maintenance").removeClass('active');
        }

        var date_input = $('input[name="date"]');
        var options = {
            format: 'dd/mm/yyyy',
            todayHighlight: true,
            autoclose: true,
            startDate: new Date(),
            endDate: '+15d'
        };
        date_input.datepicker(options);

        // Type ahead section
        $('.typeahead').on('focus', function() {
            $(this).parent().siblings().addClass('active');
        }).on('blur', function() {
            if (!$(this).val()) {
                $(this).parent().siblings().removeClass('active');
            }
        });

        var test = '${vehicleNamesList}';
        var vehicle = test.split(', ');

        // Constructing the suggestion engine
        var vehicle = new Bloodhound({
            datumTokenizer: Bloodhound.tokenizers.whitespace,
            queryTokenizer: Bloodhound.tokenizers.whitespace,
            local: vehicle
        });

        // Initializing the typeahead
        $('#vehicleModelDiv .typeahead').typeahead({
                hint: true,
                highlight: true, /* Enable substring highlighting */
                minLength: 1 /* Specify minimum characters required for showing suggestions */
            },
            {
                name: 'cars',
                source: vehicle
            });

        $('#vehicleModel').bind('typeahead:selected', function(obj, datum, name) {
            var selected = $('#vehicleModel').val();
            var vehiclePriceMap = '${vehiclePriceMap}';
            var startIndex = vehiclePriceMap.indexOf(selected+'=') + selected.length + 1;
            var costString = vehiclePriceMap.substring(startIndex, startIndex + 3);
            if(isNaN(costString)) {
                $("#serviceCostRow").hide();
                $("#serviceCostRowPlaceHolder").show();
                return;
            }
            $("#serviceCost").html(costString);
            $("#serviceCostRow").show();
            $("#serviceCostRowPlaceHolder").hide();
        });

        $('#vehicleModel').on('change', function() {
            var selected = $('#vehicleModel').val();
            if(selected == '') {
                $("#serviceCostRow").hide();
                $("#serviceCostRowPlaceHolder").show();
                return;
            }
            var vehiclePriceMap = '${vehiclePriceMap}';
            var startIndex = vehiclePriceMap.indexOf(selected+'=') + selected.length + 1;
            var costString = vehiclePriceMap.substring(startIndex, startIndex + 3);
            if(isNaN(costString)) {
                $("#serviceCostRow").hide();
                $("#serviceCostRowPlaceHolder").show();
                return;
            }
            $("#serviceCost").html(costString);
            $("#serviceCostRow").show();
            $("#serviceCostRowPlaceHolder").hide();
        });

    });

    function on() {
        document.getElementById("overlay").style.display = "block";
    }

    function off() {
        document.getElementById("overlay").style.display = "none";
    }
</script>
</body>
</html>
