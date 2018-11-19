package com.vehicleservice

import grails.plugins.rest.client.RestBuilder
import grails.transaction.Transactional

@Transactional
class NotificationService {
    def username = ''
    def password = ''
    def from = ''

    def sendBookingConfirmationToCustomer(phone, customerName, bookingRef, vehicle, date, time){
        RestBuilder rest = new RestBuilder()
        def message

        if(!vehicle && !date && !time)
            message = 'Hi ' + customerName + ',\nBooking processed successfully. Our representatives will get in touch shortly. Booking' +
                ' reference is ' + bookingRef + '.\nThank you, VehicleService team.'
        else if(vehicle && !date || !time){
            message = 'Hi ' + customerName + ', \nThanks for your request. We have received booking for ' +
                    vehicle + '. Call us anytime at 0755-491000 if you need assistance.\n- VehicleService'
        }else if(vehicle && date && time){
            message = 'Hi ' + customerName + ', \nThanks for your request. We have received booking for ' +
                    vehicle.toString() + ' on ' + date.toString() + ' at ' + time.toString() + '. Call us anytime at 0755-491000 if you need assistance.\n- VehicleService'
        }
        def resp = rest.get('http://136.243.73.170/quicksms/api.php?username={username}&password={password}&to={to}&from={from}&message={message}', [username: username, password: password, to: phone, from: from, message: message])
    }
}
