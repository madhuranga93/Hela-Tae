/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hela.servlets;

import com.hela.beans.DBconnector;
import com.hela.beans.FeedbackBean;
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
@WebServlet(name = "Feedback", urlPatterns = {"/Feedback"})
public class Feedback extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       
        
        
           
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String msg = request.getParameter("msg");
        
        
        DBconnector mydb = new DBconnector();
        mydb.DBconnect();
        
        FeedbackBean fb = new FeedbackBean();
        if(fb.Feddback(name,email,msg)){
        
        response.sendRedirect("order.jsp");
        
        }
        
        
        
        
        
    
    }

    
}
