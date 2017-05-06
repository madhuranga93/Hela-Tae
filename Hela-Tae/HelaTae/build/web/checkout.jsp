<%-- 
    Document   : checkout
    Created on : Jan 5, 2017, 12:03:00 PM
    Author     : Madhuranga
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/main.css">
        
        
        <title>CHECKOUT</title>
    </head>
    <body>
        
        <div class="wrapper">
       <div class="topbar"> 
       <h1><c:out value="${user}"/></h1>
       </div><!--topbar-->
        
        <div class="box"> 
        <div class="button">
     <a href="index.jsp" class="button">SignOut</a>
    </div>
            <div class="button">
     <a  class="button">Purchase</a>
    </div>
        </div>
        
        
        
        
        <div class="table">
            
       <table border="1" >
            <tr>           
<th>ITEM ID</th>
<th>QTY</th>
<th>IMAGE</th>
<th>PRICE</th>
<th>TOTAL</th>

</tr>
<c:forEach items="${t2}" var="product">
  
    <tr>
         
        <td>${product.itemid}</td>
        <td>${product.qty}</td>
        <td>  ${product.imageurl} </td>
        <td>${product.price}</td>
        <td> ${product.qty * product.price} </td>

     </tr>
     
    </c:forEach>
     </table>
            
                  
</div><!--table-->  
          
  
   <div class="viewcartline"></div>
         </div><!--wrapper-->
     

      
    </body>
</html>
