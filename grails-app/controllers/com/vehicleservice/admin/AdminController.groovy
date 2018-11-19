/*
package com.VehicleService.admin

class AdminController {
    */
/** dependencies *//*

    def loginService
    def bookingService

    def index(){
        redirect(action: "login")
    }

    def login() {
        render view: 'adminLogin', layout: 'admin'
    }

    */
/**
     * Login action
     * @return
     *//*

    def checkCredentials(){
        def username = params.username
        def password = params.password
        try {
            if (loginService.adminExists(username.toString(), password.toString())) {
                Map bookings = bookingService.getBookingsByStatus()
                render view: 'adminHome', layout: 'admin', model: bookings
            } else {
                forward(controller: "admin", action: "login", model: [loginStatus: 'failed'])
            }
        }catch(Exception e){
            forward(controller: "admin", action: "login", model: [loginStatus: 'error'])
        }
    }

    def getAdmin(){
        def userName = params.username
        def password = params.password
        try {
            if (loginService.adminExists(userName.toString(), password.toString())) {
                render status: 200
                return
            } else {
                render status: 201
            }
        }catch(Exception e){
            render status: 202
        }

    }




}
*/
