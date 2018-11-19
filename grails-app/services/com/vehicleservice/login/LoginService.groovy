package com.vehicleservice.login

import grails.transaction.Transactional
import groovy.sql.Sql
import javax.sql.DataSource

@Transactional
class LoginService {

    DataSource dataSource
    boolean isAdmin = false;

    /**
     * This method checks for Admin in the database by using his login credentials
     * @author User
     * @since Nov , 2017
     * @param name,pass
     * @return isAdmin
     */
    boolean adminExists(String username, String password) throws Exception {
        Sql sql
        try {
            if(name != null && password != null){
                sql = Sql.newInstance(dataSource)
                def query = 'SELECT 1 FROM admin WHERE admin_name = :admin_name AND password = :password'
                isAdmin = sql.firstRow(query, [admin_name: username, password: password])
                return isAdmin
            }else{
                return false
            }

        } catch (Exception e) {
            throw e
        } finally {
            sql.close()
        }
        false;
    }
}
