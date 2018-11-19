function adminLogin(){
    var validate = false;
    validate=validateLoginForm(validate);
    if(validate){
        $.post("getAdmin",
            {
                username: $("#username").val(),
                password: $("#password").val()
            },
            function (data, status,xhr) {
                if (xhr.status == 201) {
                    $("#loginMessageInValid").show().delay(1500).fadeOut();
                    $("#username").val('');
                    $("#password").val('');

                }else if(xhr.status == 202){
                    $("#loginMessageInValid").show().delay(1500).fadeOut();
                }else if(xhr.status == 200){
                    $("#adminLoginForm").modal('hide');
                }
            }
        );
    }
}

function validateLoginForm(flag) {
    if ($("#username").val() == '') {
        flag = false;
        $("#username").focus();
    }else if ($("#password").val == '') {
        flag = false;
        $("#password").focus();
    }else if($("#username").val() != null && $("#password").val() != null ){
        flag = true;
    }
    return flag;
}