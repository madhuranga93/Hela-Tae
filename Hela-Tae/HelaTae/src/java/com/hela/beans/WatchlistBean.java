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
public class WatchlistBean {
    private String itemid;
    private String imageurl;
    
    
       Connection con;
     Statement pst;
    
    public WatchlistBean(){
    DBconnector mydb = new DBconnector();
    con=mydb.DBconnect();

}
    
     public boolean WatchList(String m,String n,String u){
         
    
        boolean flag=false;
          
          
         try {
            String q= "INSERT INTO watchlist2 (username,itemid,imageurl) values ('"+m+"','"+n+"','"+u+"')";
            pst=con.prepareStatement(q);
            pst.execute(q);
            flag = true;
         } catch (Exception e) {
             
         }
        
         
         return flag;
     }
}
