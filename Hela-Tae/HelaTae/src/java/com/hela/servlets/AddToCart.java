/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hela.servlets;

import com.hela.beans.Cartbean;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
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
@WebServlet(name = "AddToCart", urlPatterns = {"/AddToCart"})
public class AddToCart extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        HttpSession cartsession = request.getSession();
        
        String str1 = request.getParameter("itemid");
       String str2 = request.getParameter("imageurl");
       String str3 = request.getParameter("qty");
       String str4 = request.getParameter("price");
       
       Cartbean p = new Cartbean(str1, str3, str2, str4);
      
       
       
       if(cartsession.getAttribute("t2")!= null){
           
       ArrayList <Cartbean> cart = (ArrayList <Cartbean>) cartsession.getAttribute("t2");
       cart.add(p);
       
       cartsession.setAttribute("t2",cart);
    
          response.sendRedirect("viewcart.jsp");
        } else{
            
            
       ArrayList<Cartbean> cart = new ArrayList<Cartbean>();
       
       cart.add(p);
       cartsession.setAttribute("t2",cart);
        response.sendRedirect("viewcart.jsp");
       
        
        }   
        
        
          
        
          
    }

    

    
    
}

    
    
    
