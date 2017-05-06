/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hela.beans;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Madhuranga
 */
public class adminBean {
    
    
    
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    private String username;
    private String password;

 
      Connection con;
    Statement stmt;
    
    
     public adminBean(){
    
    DBconnector mydb = new DBconnector();
    con=mydb.DBconnect();
   
    }
    
    public boolean admin(String u, String p){
        boolean flag=false;
        
        String sqlquery="SELECT * FROM admin WHERE username ='"+u+"' and password='"+p+"'";
        try {
            stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery(sqlquery);
            while(rs.next()){
                flag=true;
                
            }
            
        } catch (SQLException ex) {
            
        }
        
                
                
                return flag;
                
    }
    
    
}
