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
public class ProductBean {

   

    public String getQty() {
        return qty;
    }

    public void setQty(String qty) {
        this.qty = qty;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public ProductBean(String itemid, String qty, String image, String price, String des) {
        this.itemid = itemid;
        this.qty = qty;
        this.image = image;
        this.price = price;
        this.des = des;
    }

    

    

   
    
    private String itemid;   
    private String qty;
    private String image;
    private String price;
    private String des;
    
    
    public String getDes() {
        return des;
    }

    public void setDes(String des) {
        this.des = des;
    }
    
    
    Connection con;
    Statement stmt;
    
    public ProductBean(){
    
    DBconnector mydb = new DBconnector();
    con=mydb.DBconnect();
   
    }
    
    
    public boolean addproduct(String m,String n,String u,String p,String o){
         
    
        boolean flag=false;
          
          
         try {
            String q= "INSERT INTO products (itemid,des,availableqty,url,price) values ('"+m+"','"+n+"','"+u+"','"+p+"','"+o+"')";
            Statement pst=con.prepareStatement(q);
            pst.execute(q);
            flag = true;
         } catch (Exception e) {
             
         }
        
         
         return flag;
     }
}
