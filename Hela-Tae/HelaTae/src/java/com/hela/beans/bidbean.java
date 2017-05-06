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
public class bidbean {
    
    
    
    private String bid;
    private String itemid;
    private String imageurl;
    private String user;
    
    
       Connection con;
     Statement pst;
    
    public bidbean(){
    DBconnector mydb = new DBconnector();
    con=mydb.DBconnect();

}
    
     public boolean Bid(String m,String n,String u,String p){
         
    
        boolean flag=false;
          
          
         try {
            String q= "INSERT INTO biddetails (bid,itemid,image,user) values ('"+m+"','"+n+"','"+u+"','"+p+"')";
            pst=con.prepareStatement(q);
            pst.execute(q);
            flag = true;
         } catch (Exception e) {
             
         }
        
         
         return flag;
     }
}
