<%-- 
    Document   : viewcart
    Created on : Dec 25, 2016, 10:57:51 AM
    Author     : Madhuranga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="css/main.css">
      
    </head>
    <body>
        
        
        <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/hela"
     user="root"  password=""/>

<sql:query dataSource="${snapshot}" var="result">
select * from cartdetails where username = '${user}'
</sql:query>

        <div class="wrapper">
       <div class="topbar"> 
           <h1><c:out value="${user}"/></h1>
        </div><!--topbar-->
        
        <div class="box"> 
        <div class="button">
     <a href="AddToDatabase" class="button">SignOut</a>
    </div>
            <div class="button">
     <a href="checkout" class="button">CheckOut</a>
    </div>
        </div>
        
        
       
        
        
        <div class="table">
        
        <table border="1" >
            <tr>           
<th>ITEM ID</th>
<th>QTY</th>
<th>IMAGE</th>
<th>PRICE(Rs)</th>


<c:forEach var="user" items="${result.rows}">
     <tr>
         
      
         
         
    <td>${user.itemid}</td>
     <td>${user.qty}</td>
    <td>${user.imageurl}</td>
    <td>${user.price}</td>
    
     
</form>
    
     </tr>
     
   
     
     
</c:forEach>




</tr>
<c:forEach items="${t2}" var="product">
    
    
    <tr>
         
        <td>${product.itemid}</td>
        <td>${product.qty}</td>
        <td>${product.imageurl}</td>
        <td>${product.price}</td>
    <form action="RemoveFromCart" method="GET">
        
         <input type="hidden" name="itemid" value="${product.itemid}"/>
            
        <td><input type="submit" value="Delete "</td>
    
        </form>
     </tr>
     
    </c:forEach>
     </table>
            
          
</div><!--table-->  




  
   <div class="viewcartline"> </div>
         </div><!--wrapper-->
     
    </body>
</html>
