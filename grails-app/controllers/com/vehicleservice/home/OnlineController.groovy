package com.vehicleservice.home

import groovy.sql.GroovyRowResult

class OnlineController {

    /** dependencies */
    def vehicleService
    def bookingService

    /**
     * This action redirects to action home.
     *
     * @author User
     * @since Dec, 2017
     */
    def index() {
        redirect(action: "home")
    }

    /**
     * This action opens homepage with list of vehicles in the database.
     *
     * @author User
     * @since Nov, 2017
     */
    def home() {
        def id = params.id
        def timeList
        List vehicleNamesList = new ArrayList()
        Map vehiclePriceMap = new HashMap()
        List<GroovyRowResult> vehicleList = new ArrayList<>()
        if (session != null)
            session.invalidate()
        try {
            vehicleList = vehicleService.getVehicleList()
            for(Map vehicle : vehicleList){
                def engineCapacity = vehicle.engine_capacity == "" ? '' : ' ' +  vehicle.engine_capacity
                vehicleNamesList = vehicleNamesList + [(vehicle.company + ' ' + vehicle.name + engineCapacity).trim()]
                vehiclePriceMap.put((vehicle.company + ' ' + vehicle.name + engineCapacity).trim(), vehicle.service_price)
            }
            timeList = vehicleService.getTimeList()
        } catch (Exception e) {
            println e.getMessage()
            render(status: 409, text: 'Something went wrong.')
        }
        render(view: 'home', layout: 'VehicleService', model: [timeList: timeList, vehicleNamesList: vehicleNamesList, vehiclePriceMap: vehiclePriceMap, id: id])
    }

    /**
     * Save the booking details
     *
     * @author User
     * @since Nov, 2017
     */
    def save() {
        try {
            def existingBooking
            if (null == (existingBooking = bookingService.isBookingPossible(params.phone))) {
                bookingService.saveBooking(params)
                render text: 'Booking successful.', status: 200
            }else{
                render text: 'Booking already exists.', status: 201
            }
        } catch (Exception e) {
            render text: 'Something went wrong.', status: 409
        }
    }

    /**
     * This action is to open workshop gallery.
     *
     * @author User
     * @since Dec, 2017
     */
    def gallery(){
        render view: 'gallery', layout: 'VehicleService'
    }

    def services(){
        render view: 'services', layout: 'VehicleService'
    }

    def contact(){
        render view: 'contact', layout: 'VehicleService'
    }

    /**
     * action to validate cupon entered by the user. This is invoked by ajax call.
     *
     * @author User
     * @since Dec 2017
     */
    def validateCupon(){
        def cuponCode = params.code.toString().trim()
        if(vehicleService.isValidCupon(cuponCode)){
            render status: 200
        }else{
            render status: 201
        }
    }
}
