package com.vehicleservice.vehicle

import grails.transaction.Transactional
import groovy.sql.GroovyRowResult
import groovy.sql.Sql

import javax.sql.DataSource

@Transactional
class VehicleService {
    DataSource dataSource

    /**
     * List of all the vehicles (cars and bikes) in the system.
     * @author User
     * @since Nov , 2017
     * @return list of cars and bikes
     */
    List getVehicleList() throws Exception {
        List<GroovyRowResult> vehicleList = new ArrayList<>()
        Sql sql
        try {
            sql = Sql.newInstance(dataSource)
            vehicleList = sql.rows('SELECT all_vehicle_id, company, name, engine_capacity, service_price FROM all_vehicles')
        } catch (Exception e) {
            throw e
        } finally {
            sql.close()
        }
        vehicleList
    }

    /**
     *  List of time values available for booking.
     *
     * @author User
     * @since Nov, 2017
     * @return
     */
    def getTimeList(){
        List timeList = new ArrayList()
        timeList.add('Please Select Time')
        timeList.add('10:00 AM')
        timeList.add('11:00 AM')
        timeList.add('12:00 PM')
        timeList.add('1:00 PM')
        timeList.add('2:00 PM')
        timeList.add('3:00 PM')
        timeList.add('4:00 PM')
        timeList.add('5:00 PM')
        timeList.add('6:00 PM')

        timeList
    }

    /**
     * Ajax method to check for validity of a cupon
     *
     * @author User
     * @since Dec, 2017
     * @param cupon
     * @return
     */
    Boolean isValidCupon(cupon){
        def result
        Sql sql
        try {
            sql = Sql.newInstance(dataSource)
            result = sql.firstRow('SELECT 1 FROM cupons where code = :code and valid_through > current_date', [code: cupon])
        } catch (Exception e) {
            throw e
        } finally {
            sql.close()
        }
        if(result)
            return true
        else
            return false
    }
}
