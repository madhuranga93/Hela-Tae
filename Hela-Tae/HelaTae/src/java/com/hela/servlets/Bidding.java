/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hela.servlets;

import com.hela.beans.DBconnector;
import com.hela.beans.FeedbackBean;
import com.hela.beans.bidbean;
import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(name = "Bidding", urlPatterns = {"/Bidding"})
public class Bidding extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
        String bid = request.getParameter("bid");
        String itemid = request.getParameter("itemid");
        String image = request.getParameter("imageurl");
        
        HttpSession loginSession =request.getSession();
        String user = loginSession.getAttribute("user").toString();
        
        
        DBconnector mydb = new DBconnector();
        mydb.DBconnect();
        
        bidbean fb = new bidbean();
        fb.Bid(bid,itemid,image,user);
        
        response.sendRedirect("order.jsp");
        
        
        
    }

   
    
    
    
    
    
        }
    


