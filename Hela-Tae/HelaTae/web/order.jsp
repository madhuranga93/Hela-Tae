                                <%-- 
    Document   : order
    Created on : Dec 12, 2016, 9:52:20 AM
    Author     : Madhuranga
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order</title>
        
         <link rel="stylesheet" type="text/css" href="css/main.css">
         <link rel="stylesheet" type="text/css" href="css/adv.css">
    </head>
      
    <body>
        
         <div class="wrapper">
       <div class="topbar2"> 
        <h1><c:out value="${user}"/></h1>
       </div><!--topbar-->
       
        <div class="box">
          <div class="button">
     <a href="Feedback.jsp" class="button">Feedback</a>
    </div>     
            
            <div class="button">
                <a href="updateuser.jsp" class="button"><pre> Update </pre></a>
    </div>
             <div class="button">
                 <a href="Bidding.jsp" class="button"><pre>   Bid  </pre>  </a>
    </div>
         
            <div class="box4">
                
            </div>
        
            
            
        </div>
            
             
          
        
        
          
              
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/hela"
     user="root"  password=""/>

<sql:query dataSource="${snapshot}" var="result">
SELECT * from products;
</sql:query>

<div class="table">
    
<table border="1" >
<tr>
<th>ITEM ID</th>
<th>PRODUCT NAME</th>
<th>AVAILABLE QUANTITY</th>
<th>IMAGE</th>
<th>PRICE(Rs)</th>
<th>QTY</th>
<th>ADDTOCART</th>
<th>WATCHLIST</th>
</tr>
<c:forEach var="row" items="${result.rows}">
<tr>
    
   
<td><c:out value="${row.itemid}"/></td>
<td><c:out value="${row.des}"/></td>
<td><c:out value="${row.availableqty}"/></td>
<td> ${row.url}</td>
<td><c:out value="${row.price}"/></td>

<form action="AddToCart" method="GET">
    
    <input type="hidden" name="itemid" value="${row.itemid}"/>
    <input type="hidden" name="imageurl" value= ${row.url}/>
    <input type="hidden" name="price" value="${row.price}"/>
    <td><input type="text" name="qty" /></td>
    
    <td><input type="submit" value="ADD"</td>
</form>

<form action="WatchList" method="GET">
    
    <input type="hidden" name="itemid" value="${row.itemid}"/>
    <input type="hidden" name="imageurl" value="${row.url}"/>
    <td><input type="submit" value="WATCHLIST"</td>
</form>
</c:forEach>

</table>
    
    
              
</div><!--table-->  
 <div class="orderline"> </div>
         </div><!--wrapper-->
         
        
         
    </body>
</html>
