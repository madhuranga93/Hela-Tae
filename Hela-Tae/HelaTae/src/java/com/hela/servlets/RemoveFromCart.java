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
import java.util.Iterator;
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
@WebServlet(name = "RemoveFromCart", urlPatterns = {"/RemoveFromCart"})
public class RemoveFromCart extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String x = request.getParameter("itemid");
        HttpSession cartsession = request.getSession();
        ArrayList<Cartbean> str2 = (ArrayList<Cartbean>) cartsession.getAttribute("t2");
        System.out.println("item id :"+x);

        //for(int i=0;i<str2.size();i++){
        // if(str2.get(i).getItemid()==x)
        //str2.remove(i);
//       for(Cartbean demo : str2){
//            
//         if(demo.getItemid()==x){   
//         str2.remove(demo);
//         
//         cartsession.setAttribute("t2", str2);
//         request.getRequestDispatcher("viewcart.jsp").forward(request, response);
//        
//       
//       }
//         
        for (int i = 0; i < str2.size(); i++) {
            if (str2.get(i).getItemid().equals(x)) {
                str2.remove(i);
                cartsession.setAttribute("t2", str2);
            }
        }

        request.getRequestDispatcher("viewcart.jsp").forward(request, response);

    }

}


