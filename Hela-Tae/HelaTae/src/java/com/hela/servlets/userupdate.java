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
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Madhuranga
 */
@WebServlet(name = "userupdate", urlPatterns = {"/userupdate"})
public class userupdate extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       
        String name = request.getParameter("fullname");
         String address = request.getParameter("address");
         String username = request.getParameter("username");
          String password = request.getParameter("password");
          
          
              
            
          DBconnector mydb = new DBconnector();
        mydb.DBconnect();
        
         userbean mysign = new userbean();
        if(mysign.update(address,username,password,name)){
           request.getRequestDispatcher("index.jsp").forward(request, response);
       
          
        }
      request.getRequestDispatcher("index.jsp").forward(request, response);
        
    }
    
    
    
    

}
