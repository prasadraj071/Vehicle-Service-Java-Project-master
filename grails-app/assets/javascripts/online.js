//author-User
//since-Nov, 2017
// Validation for first page of service booking
function validateServiceForm() {
    var name = $("#name").val();
    var phoneNumber = $("#phone").val();
    var flag = true;
    if (name == null || name == '') {
        flag = false;
        $("#name").addClass('error');
        $("#name").focus();
        return false;
    } else {
        $("#name").removeClass('error');
    }

    if (phoneNumber == null || phoneNumber.length < 10) {
        flag = false;
        $("#phone").addClass('error');
        $("#phone").focus();
        return false;
    } else {
        $("#phone").removeClass('error');
    }
    if (flag) {
        $("#serviceForm").hide();
        $("#serviceFormNext").show();
        $("#back").show();
        $("#book").show();
        $("#next").hide();
        $("#processing").hide();
    }
}

//back button stuff
function back() {
    $("#serviceForm").show();
    $("#serviceFormNext").hide();
    $("#back").hide();
    $("#book").hide();
    $("#close").hide();
    $("#next").show();
    $("#processing").hide();
}

//book button stuff and ajax submit for the service form
function book() {
    var validate = true;
    validate = validateForm(validate);
    if (validate) {
        $("#processing").show();
        $.post("save",
            {
                name: $("#name").val(),
                phone: $("#phone").val(),
                vehicle: $('#vehicleModel').val(),
                address: $("#address").val(),
                date: $("#date").val(),
                time: $("#time").val(),
                cupon: $("#cupon").val(),
                service_price: $("#serviceCost").html()
            },
            function (data, status, xhr) {
                if (xhr.status == 200) {
                    $("#bookingSuccessful").show();
                    $("#serviceFormNext").hide();
                    $("#success").show();
                    $("#back").hide();
                    $("#book").hide();
                    $("#close").show();
                    $("#processing").hide();
                    $("#afterBooking").html('Great, you’re done with booking! Call us at 0755-4910000 if\n' +
                        'you need help - Team VehicleService')
                }
                else if (xhr.status == 201) {
                    $("#bookingSuccessful").show();
                    $("#serviceFormNext").hide();
                    $("#success").show();
                    $("#back").hide();
                    $("#book").hide();
                    $("#close").show();
                    $("#processing").hide();
                    $("#afterBooking").html('You already have a booking with us. Please call 0755-4910000')
                }
                else {
                    $("#bookingSuccessful").show();
                    $("#serviceFormNext").hide();
                    $("#success").show();
                    $("#back").hide();
                    $("#book").hide();
                    $("#close").show();
                    $("#processing").hide();
                    $("#afterBooking").html('Something went wrong. Please call 0755-4910000')
                }
            }
        );
    }
}

// validation for second page of service form
function validateForm(flag) {
    if ($("#date").val() == null) {
        flag = false;
        $("#date").focus();
    }
    if ($("#time").val == null) {
        flag = false;
        $("#time").focus();
    }
    return flag;
}

function validateCupon(){
    var code = $("#cupon").val();
    $("#cuponMessageWaiting").show();
    if(!(code == '')){
        $.post("validateCupon",
            {
                code: code
            },
            function (data, status,xhr) {
                if (xhr.status == 200) {
                    $("#cuponMessageWaiting").hide();
                    $("#cuponMessageValid").show().delay(1500).fadeOut();
                }
                if (xhr.status == 201) {
                    $("#cuponMessageWaiting").hide();
                    $("#cuponMessageInValid").show().delay(1500).fadeOut();
                    $("#cupon").val('');
                }
            }
        );
    }else{
        $("#cuponMessageWaiting").hide();
        $("#cuponMessageInValid").show().delay(1500).fadeOut();
    }
}

function onlyAlphabets(value) {
    value = value.replace(/[^a-zA-Z ]+/, '');
    $("#name").val(value);
    checkNullName(value);
}

function checkNullName(value){
    if(!(value == '')){
        $("#name").removeClass('required');
    }else{
        $("#name").addClass('required');
    }
}

function checkNullPhone(value){
    if(!(value == '')){
        $("#phone").removeClass('required');
    }else{
        $("#phone").addClass('required');
    }
}