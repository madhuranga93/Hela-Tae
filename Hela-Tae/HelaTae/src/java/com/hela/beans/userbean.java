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
public class userbean {

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

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }
    
    
    private String username;
    private String password;
    private String fullname;
    private String contact;

    public Connection getCon() {
        return con;
    }

    public void setCon(Connection con) {
        this.con = con;
    }

    public Statement getStmt() {
        return stmt;
    }

    public void setStmt(Statement stmt) {
        this.stmt = stmt;
    }

    
    Connection con;
    Statement stmt;
    
    public userbean(){
    
    DBconnector mydb = new DBconnector();
    con=mydb.DBconnect();
   
    }
   
    public boolean isUserExist(String u, String p){
        boolean flag=false;
        
        String sqlquery="SELECT * FROM customer WHERE username ='"+u+"' and password='"+p+"'";
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
    
     public boolean userlogin(String m,String n,String u,String p){
         
    
        boolean flag=false;
          
          
         try {
            String q= "INSERT INTO customer (fullname,contactnumber,username,password) values ('"+m+"','"+n+"','"+u+"','"+p+"')";
            Statement pst=con.prepareStatement(q);
            pst.execute(q);
            flag = true;
         } catch (Exception e) {
             
         }
        
         
         return flag;
     }
     
     
     public boolean update(String m,String n,String u,String p){
         
    
        boolean flag=false;
          
          
         try {
             String sql ="UPDATE customer SET contactnumber = '"+m+"',username = '"+n+"',password = '"+u+"' where fullname = '"+p+"'";  
             Statement pst=con.prepareStatement(sql);
             pst.execute(sql);
           
         } catch (Exception e) {
             
         }
        
         
         return flag;
     }
    
}
