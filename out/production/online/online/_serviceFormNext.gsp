<style>
    a:hover{
        text-decoration: none;
    }
</style>
<div class="form-group form-inline">
    <label class="control-label col-sm-2 col-lg-3" for="date">Date:</label>

    <div class="col-sm-8 col-lg-6">
        <input class="form-control col-lg-6" style="background-color: white" id="date" name="date" placeholder="Select Date" type="text" readonly="true"/>
    </div>
</div>

<div class="form-group form-inline">
    <label class="control-label col-sm-2 col-lg-3" for="time">Time:</label>

    <div class="col-sm-8 col-lg-6">
        <g:select id="time" class="form-control col-lg-6 selectpicker" name="time" from="${timeList}"/>
    </div>
</div>

<div class="form-group form-inline">
    <label class="control-label col-sm-2 col-lg-3" for="cupon">Coupon:</label>

    <div class="col-sm-4 col-lg-3">
        <div>
            <input type="text" class="form-control pr-0" style="text-transform: uppercase;" id="cupon" name="cupon" maxlength="10" placeholder="Enter Code Here"/>
        </div>

    </div>
    <div id="cuponCodeValidate" class="text-center col-sm-4 pt-3" >
        <a href="#" onclick="validateCupon();"><i id="check" class="fa fa-check-square-o" style="font-size:24px; color: #278ccc;"></i>
            <p class="outline" style="color: #138496">Check Validity</p></a>
    </div>
    <div id="cuponMessageWaiting" class="text-center col-sm-2" style="color: #278ccc;">
        <span><i class="fa fa-spinner fa-spin"></i>
        </span>
    </div>
    <div id="cuponMessageValid" class="text-center col-sm-2" style="color: #278ccc;">
        <span>Valid Cupon</span>
    </div>
    <div id="cuponMessageInValid" class="text-center col-sm-2" style="color: red;">
        <span>Invalid Cupon</span>
    </div>
</div>