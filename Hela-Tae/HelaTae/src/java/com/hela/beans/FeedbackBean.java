/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hela.beans;

import java.sql.Connection;
import java.sql.Statement;

/**
 *
 * @author Madhuranga
 */
public class FeedbackBean {
    
    private String name;
    private String email;
     private String message;  
     
        Connection con;
     Statement pst;
    
    public FeedbackBean(){
    DBconnector mydb = new DBconnector();
    con=mydb.DBconnect();

}
    
    
    public boolean Feddback(String m,String n,String u){
         
    
        boolean flag=false;
          
          
         try {
            String q= "INSERT INTO feedback (name,email,message) values ('"+m+"','"+n+"','"+u+"')";
            pst=con.prepareStatement(q);
            pst.execute(q);
            flag = true;
         } catch (Exception e) {
             
         }
        
         
         return flag;
     }
    
}
