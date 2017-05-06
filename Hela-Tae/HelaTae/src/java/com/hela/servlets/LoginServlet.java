/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hela.servlets;


import com.hela.beans.DBconnector;
import com.hela.beans.StaffBean;
import com.hela.beans.adminBean;

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
@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
    HttpServletResponse response) throws ServletException, IOException {
       
        
        HttpSession loginsession = request.getSession();
        
        String user = request.getParameter("username");
        String pass = request.getParameter("password");
        
        DBconnector mydb = new DBconnector();
        mydb.DBconnect();
        
        StaffBean st = new StaffBean();
        userbean myuserb = new userbean();
        adminBean ad= new adminBean();
        
        if(myuserb.isUserExist(user, pass)){
        loginsession.setAttribute("user", user);
        response.sendRedirect("order.jsp");
        
        }
        
        else if(st.staff(user, pass)){
        loginsession.setAttribute("user", user);
        response.sendRedirect("staff.jsp");
        
        }else if(ad.admin(user, pass)){
        loginsession.setAttribute("user", user);
        response.sendRedirect("adminview.jsp");
        
        }
        
        
        
        else{
            
            
        
        response.sendRedirect("index.jsp");
        loginsession.setAttribute("status","0");
        }
        
        
        
        
        
        
        
    }
    
    
    
    
    
    
}