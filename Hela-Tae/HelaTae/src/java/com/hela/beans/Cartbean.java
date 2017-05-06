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
public class Cartbean {

    public String getItemid() {
        return itemid;
    }

    public void setItemid(String itemid) {
        this.itemid = itemid;
    }

    public String getQty() {
        return qty;
    }

    public void setQty(String qty) {
        this.qty = qty;
    }

    public String getImageurl() {
        return imageurl;
    }

    public void setImageurl(String imageurl) {
        this.imageurl = imageurl;
    }

  

    public Cartbean(String itemid) {
        this.itemid = itemid;
    }


    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
 public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public Cartbean(String itemid, String qty, String imageurl, String price) {
        this.itemid = itemid;
        this.qty = qty;
        this.imageurl = imageurl;
        this.price = price;
    }

    
    public Cartbean(String username, String itemid, String qty, String imageurl, String price) {
        this.username = username;
        this.itemid = itemid;
        this.qty = qty;
        this.imageurl = imageurl;
        this.price = price;
    }
    

   
   private String username;
   private String itemid;
   private String qty;
   private String imageurl;
private String price;
   
   
   
    
   Connection con;
        Statement stmt;
    
   
        public Cartbean(){
    
    DBconnector mydb = new DBconnector();
    con=mydb.DBconnect();
   
    }
        
        
     public boolean cart(String m,String n,String u,String p,String y){
         
    
        boolean flag=false;
          
              try {
               
   String q= "INSERT INTO cartdetails (itemid,qty,image,username,price) values ('"+m+"','"+n+"','"+u+"','"+p+"','"+y+"')";
            Statement pst=con.prepareStatement(q);
            pst.execute(q);
           
           } catch (Exception e) {
           }
        
         
         return flag;
     }
   
    }
    

    

