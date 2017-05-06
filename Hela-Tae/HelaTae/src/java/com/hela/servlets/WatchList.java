/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hela.servlets;

import com.hela.beans.DBconnector;
import com.hela.beans.WatchlistBean;
import com.hela.beans.userbean;
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
@WebServlet(name = "WatchList", urlPatterns = {"/WatchList"})
public class WatchList extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       
        
        
        String imageurl =request.getParameter("imageurl");
        String itemid =request.getParameter("itemid");
        
        HttpSession loginSession =request.getSession();
        String name = loginSession.getAttribute("user").toString();
        
        DBconnector mydb = new DBconnector();
        mydb.DBconnect();
        
        WatchlistBean wl = new WatchlistBean();
        if(wl.WatchList(name,itemid,imageurl)){
        
        response.sendRedirect("order.jsp");
        
    }

    }

}
