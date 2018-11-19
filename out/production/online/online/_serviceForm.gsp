<asset:stylesheet src="online.css"/>
<asset:stylesheet src="datepicker.css"/>
<style>
#overlay {
    position: fixed; /* Sit on top of the page content */
    color: white;
    display: none; /* Hidden by default */
    width: 100%; /* Full width (cover the whole page) */
    height: 100%; /* Full height (cover the whole page) */
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background-color: #278ccc; /* Black background with opacity */
    z-index: 2; /* Specify a stack order in case you're using a different order for other elements */
    cursor: pointer; /* Add a pointer on hover */
}
</style>

<div class="form-group form-inline">
    <label class="control-label col-sm-2" for="name">Name:</label>

    <div class="col-sm-8">
        <input type="text" class="form-control" style="width: 80%" id="name" name="name" placeholder="Name" onkeyup="onlyAlphabets(this.value)">
    </div>
</div>

<div class="form-group form-inline">
    <label class="control-label col-sm-2" for="phone">Phone:</label>

    <div class="col-sm-8">
        <input type="text" class="form-control" style="width: 80%;" id="phone"  placeholder="Phone Number"
               maxlength="10" onkeyup="this.value=this.value.replace(/[^\d]+/,''); checkNullPhone(this.value);">
    </div>
</div>

<div class="form-group form-inline">
    <label class="control-label col-sm-2" for="vehicleModel">Vehicle:</label>

    <div id="vehicleModelDiv" class="col-sm-8">
        <input id="vehicleModel" class="form-control typeahead" style="width: 80%; text-transform: uppercase;" type="text" placeholder="Start Typing Vehicle Name">
    </div>
</div>

<div id="serviceCostRow" class="form-group form-inline py-1">
    <label class="control-label col-sm-2" for="serviceCost">Service Cost:</label>

    <div class="col-sm-3" style="color: #278ccc;">
        <span class="pl-2">Rs. </span><span id="serviceCost"></span>
    </div>
    <div class="col-sm-4" style="color: #278ccc;">
        <span id="knowMore"><a class="pl-2" style="text-decoration: none">Know More</a><span><i class="fa fa-external-link pl-2" style="font-weight:bold; font-size:18px; color: #278ccc;"></i></span></span>
    </div>
</div>
<div id="serviceCostRowPlaceHolder">
    <br/><br/>
</div>

<div class="form-group form-inline">
    <label class="control-label col-sm-2" for="phone">Address:</label>

    <div class="col-sm-8">
        <g:textArea id="address" class="form-control" style="width: 80%" name="address" maxlength="100"/>
    </div>
</div>

<div id="overlay" class="container-fluid">
    <div class="row">
        <div class="col-sm-6 pt-3">
            <span><i class="fa fa-motorcycle pull-left pl-4" style="font-size:32px;"></i></span><h4 class="pl-2">Bike Service</h4>
            <div class="text-left pt-2">
                <ol>
                    <li>Detailed vehicle check up and inspection</li>
                    <li>Wheel bearings cleaning and greasing</li>
                    <li>Breaks cleaning and greasing</li>
                    <li>Washing and Polishing</li>
                    <li>Chain adjustment and lubrication</li>
                    <li>Air filter and spark plug cleaning</li>
                    <li>Control cables Check-up</li>
                    <li>Engine oil replacement</li>
                    <li>Clutch free play adjustment</li>
                    <li>Carburetor drain and tuning</li>
                </ol>
            </div>
        </div>
        <div class="col-sm-6 pt-3">
            <span><i class="fa fa-car pull-left pl-4" style="font-size:32px;"></i></span><h4 class="pl-2">Car Service</h4>
            <div class="text-left pt-2">
                <ol>
                    <li>Full body wash and vacuuming</li>
                    <li>Dashboard cleaning and polishing</li>
                    <li>Washing and Polishing</li>
                    <li>Under chassis inspection</li>
                    <li>Suspension checkup</li>
                    <li>Electrical checkup</li>
                    <li>Engine oil replacement</li>
                    <li>Gear oil replacement</li>
                    <li>Break inspection and cleaning</li>
                    <li>Coolant change</li>
                    <li>Power break and steering fluid top up</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="row pt-2">
        <div class="col-sm-12 text-center">
            <h6>Click to close.</h6>
        </div>
    </div>
</div>

<script>
    $(document).ready(function () {
       $("#knowMore").on('click', function () {
            on();
       });
        $("#overlay").on('click', function () {
            off();
        });
    });
</script>