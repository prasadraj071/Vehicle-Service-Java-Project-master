package com.vehicleservice.booking

import grails.transaction.Transactional
import groovy.sql.GroovyRowResult
import groovy.sql.Sql
import org.springframework.scheduling.annotation.Async

import javax.sql.DataSource

@Transactional
class BookingService {
    /** dependencies */
    DataSource dataSource
    def vehicleService
    def notificationService

    /**
     * This method inserts booking details in the database, sends sms and email notifications
     *
     * @author User
     * @since Nov, 2017
     * @param params
     * @throws Exception
     */
    def saveBooking(params) throws Exception{
        def customerName = params.name
        def address = params.address
        def phone = params.phone
        def vehicle = params.vehicle
        def date = params.date
        if(params.time == 'Please Select Time')
            params.time = ''
        def time = params.time
        def cupon = params.cupon
        if(!vehicleService.isValidCupon(cupon.toString())) {
            cupon = ''
            params.cupon = ''
        }
        def service_price = params.service_price
        Sql sql
        def bookingRef = generateBookingRef()
        boolean smsNotifiation
        String smsRef
        def query = 'INSERT INTO booking (booking_ref, customer_name, phone, address, cupon, vehicle, date, time, booking_status, bookingts, service_price, sms_notification, sms_reference) VALUES(:bookingRef, :name, :phone, :address, :cupon, :vehicle, :date, :time, :bookingStatus, CURRENT_TIMESTAMP(), :service_price, :smsNotifiation, :smsRef)'
        try{
            def smsResponse = notificationService.sendBookingConfirmationToCustomer(phone, customerName, bookingRef, vehicle, date, time)
            if(smsResponse?.responseEntity?.statusCode?.toString()?.equals('200') && smsResponse?.responseEntity?.body != null) {
                smsNotifiation = true
                smsRef = smsResponse.responseEntity.body.toString()
            }
            else {
                smsNotifiation = false
                smsRef = ''
            }
            sql = Sql.newInstance(dataSource)
            sql.execute(query, [bookingRef: bookingRef, name: customerName, phone: phone, address: address, cupon: cupon, vehicle: vehicle, date: date, time: time, bookingStatus: 'Received', service_price: service_price, smsNotifiation: smsNotifiation, smsRef: smsRef])
            sendComfiramtionEmail(customerName.toString(), params)
        }catch(Exception e){
            throw e
        }finally{
            sql.close()
        }
    }

    /**
     * This method sends email to Vehicle Service team for each booking
     *
     * @author User
     * @since Dec, 2017
     * @param customerName
     * @param params
     * @return
     */
    @Async
    def sendComfiramtionEmail(String customerName, params){
        try {
            sendMail {
                to ''
                subject 'New Booking - ' + customerName
                body(view: '/emails/internalBookingSuccessful', model: [params: params])
            }
        }catch(Exception e){
            println(e.getMessage())
        }
    }

    /**
     * This method checks for existing booking with the same phone number and status='Received'
     *
     * @author User
     * @since Nov, 2017
     * @param phone
     * @return
     */
    def isBookingPossible(phone){
        Sql sql
        def existingBooking
        def query = 'SELECT * FROM booking WHERE phone = :phone and booking_status = :received'
        try{
            sql = Sql.newInstance(dataSource)
            existingBooking = sql.firstRow(query, [phone: phone, received: 'Received'])
            if(existingBooking){
                return existingBooking
            }else{
                return null
            }
        }catch (Exception e){
            throw e
        }finally{
            sql.close()
        }
    }

    def generator = { String alphabet, int n ->
        new Random().with {
            (1..n).collect { alphabet[ nextInt( alphabet.length() ) ] }.join()
        }
    }

    /**
     * Random token generator
     * @return
     */
    private String generateBookingRef(){
        def token = generator( (('A'..'Z')+('0'..'9')).join(), 8 )
        def prefix = "VEHSER"
        def bookingRef = "${prefix}${token.toUpperCase()}"
        bookingRef
    }

    Map getBookingsByStatus(){
        List recievedBooking, inProgressBooking, completedBookings, delayedBookings
        Sql sql
        try{
            sql = Sql.newInstance(dataSource)
            recievedBooking = sql.rows('select * from booking where status = :status', [status: 'Recieved'])
            inProgressBooking = sql.rows('select * from booking where status = :status', [status: 'InProgress'])
            completedBookings = sql.rows('select * from booking where status = :status', [status: 'Complete'])
            if(inProgressBooking) {
                for (GroovyRowResult result : inProgressBooking){
                    Date today = new Date()
                    def bookingts = result.bookingts
                    if((today - bookingts) > 10){
                        delayedBookings.add(result)
                    }
                }
            }
        }catch(Exception e){
            return null
        }finally{
            sql.close()
        }
        [inProgressBooking: inProgressBooking, recievedBooking: recievedBooking, completedBookings: completedBookings, delayedBookings: delayedBookings]
    }
}
