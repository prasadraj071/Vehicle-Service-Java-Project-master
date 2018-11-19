<g:form name="myForm" action="checkCredentials" id="loginForm">
<div class="form-group form-inline">

    <div class="input-group ">
        <span class="input-group-addon">
            <i class="fa fa-user"></i>
        </span>
        <input type="text" class="form-control" id="username" name="username"
               placeholder="Enter Username"
               required="required">
    </div>

</div>

<div class="form-group form-inline">

    <div class="input-group">
        <span class="input-group-addon">
            <i class="fa fa-lock"></i>
        </span>
        <input type="password" class="form-control" id="password" name="password" placeholder="Enter Password"
               onkeyup="" required="required">
    </div>

</div>

<div class="input-group">
    <div class="checkbox">
        <label>
            <input id="login-remember" type="checkbox" name="remember" value="1"> Remember me
        </label>
    </div>
</div>
<div class="form-group form-inline">
    <div class="form-control">
        <g:submitButton name="submit"/>
    </div>
</div>

</g:form>
