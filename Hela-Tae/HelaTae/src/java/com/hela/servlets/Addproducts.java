/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hela.servlets;

import com.hela.beans.DBconnector;
import com.hela.beans.ProductBean;
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
@WebServlet(name = "Addproducts", urlPatterns = {"/Addproducts"})
public class Addproducts extends HttpServlet {

    
    @Override
    protected void doPost(HttpServletRequest request,
    HttpServletResponse response) throws ServletException, IOException {
        
        String item = request.getParameter("item");
        String des = request.getParameter("des");
        String qty = request.getParameter("qty");
        String image = request.getParameter("image");
        String price = request.getParameter("price");
        
        
        DBconnector mydb = new DBconnector();
        mydb.DBconnect();
        
        ProductBean my = new ProductBean();
        if(my.addproduct(item,des,qty,image,price)){
        
        response.sendRedirect("addproducts.jsp");
        
        }
        
        
        
        
        
    }}
