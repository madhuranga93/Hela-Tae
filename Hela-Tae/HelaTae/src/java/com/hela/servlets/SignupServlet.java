/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hela.servlets;

import com.hela.beans.DBconnector;

import com.hela.beans.userbean;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Madhuranga
 */
@WebServlet(name = "SignupServlet", urlPatterns = {"/SignupServlet"})
public class SignupServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
    HttpServletResponse response) throws ServletException, IOException {
        
        String Fname = request.getParameter("name");
        String address = request.getParameter("address");
        String user = request.getParameter("username");
        String pass = request.getParameter("password");
        
        
        DBconnector mydb = new DBconnector();
        mydb.DBconnect();
        
        userbean mysign = new userbean();
        if(mysign.userlogin(Fname,address,user, pass)){
        
        response.sendRedirect("index.jsp");
        
        }
        
        
        
        
        
    }

    
}
