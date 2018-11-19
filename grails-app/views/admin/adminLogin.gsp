<div class="container-fluid table-cell">
    <div class="row py-5 pl-5" >
        <div class="col-lg-4 pr-3" style="background-color: lightgray; border: double; border-radius: 1%;">
            <div>
                <h5>Admin Login</h5>
            </div>

            <div id="loginForm" class="modal-title">
                <g:render template="loginForm"/>
            </div>
            <g:if test="${loginStatus=='failed'}">
                <div id="loginError">Unable to login, Try agin.</div>
            </g:if>
            <g:if test="${loginStatus=='error'}">
                <div id="invalidCredentials">Invalid Credentials</div>
            </g:if>
        </div>
        <div class="col-lg-7 pl-3 text-center" style="background-color: lightgray; border: double; border-radius: 1%;">
            <h1 class="py-5">VehicleService</h1>
            <p>
                Admin Workspace for order management and Tracking
            </p>
        </div>
    </div>
<div class="row pb-5 pl-5" >
    <div class="col-lg-11" style="background-color: lightgray; border: double; border-radius: 1%;">
        <p class="lead" style="text-decoration: dashed; font-weight: bolder">
            Our vision is to provide transparent, reliable and customer friendly services. We offer one stop
            solution, for cars and two wheelers at our state of the art automated workshops.
        </p>
    </div>
</div>

</div>