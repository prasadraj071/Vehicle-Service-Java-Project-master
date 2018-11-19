<%@ page contentType="text/html" %>
<div>
    <p>
        Hi,
    <br><br>
        There is a new booking. Details are as follows:
    <br><br>
            <strong>Name:</strong>${params.name}
        <br>
            <strong>Vehicle:</strong> ${params.vehicle}
        <br>
            <strong>Phone:</strong> ${params.phone}
        <br>
        <strong>Address:</strong> ${params.address}
        <br>
            <strong>Schedule:</strong> ${params.date} ${params.time}
        <br>
            <strong>Cupon:</strong> ${params.cupon}
        <br>
            <strong>Service Price:</strong> ${params.service_price}
    <br>
    <br>
        <strong>This is a system generated email. Please do not reply.</strong>
    <br>
        <strong>Thank you from GadiRepair team.</strong>
    </p>
</div>