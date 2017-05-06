/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hela.servlets;

import com.hela.beans.Cartbean;
import com.hela.beans.DBconnector;
import com.hela.beans.userbean;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Madhuranga
 */
@WebServlet(name = "AddToDatabase", urlPatterns = {"/AddToDatabase"})
public class AddToDatabase extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       
        
         HttpSession cartsession = request.getSession();
         ArrayList<Cartbean> str2 =(ArrayList) cartsession.getAttribute("t2");
  
         HttpSession loginSession =request.getSession();
         String name = loginSession.getAttribute("user").toString();
         
     
        for(Cartbean demo : str2){
            
            
       String itemid = demo.getItemid();
       String imageurl = demo.getImageurl();
       String qty = demo.getQty();
       String price = demo.getPrice();
       String username = name;
      
        
     DBconnector mydb = new DBconnector();
        mydb.DBconnect();
        
        Cartbean mysign = new Cartbean();
        if(mysign.cart(itemid,qty,imageurl,username,price)){
        
       request.getRequestDispatcher("index.jsp").forward(request, response);
        
        }
    
   request.getRequestDispatcher("index.jsp").forward(request, response);
    
           
    }

    
    }
}
