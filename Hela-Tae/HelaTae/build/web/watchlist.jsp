<%-- 
    Document   : watchlist
    Created on : Jan 5, 2017, 10:03:25 AM
    Author     : Madhuranga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <title>JSP Page</title>
    </head>
    <body>
        
         <div class="wrapper">
       <div class="topbar2"> 
           
           
           
        </div><!--topbar-->
       
         
            
             
           
        
        
        
        
        
          
              
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/hela"
     user="root"  password=""/>

<sql:query dataSource="${snapshot}" var="result">
SELECT * from watchlist2;
</sql:query>

<div class="table">
    
<table border="1" >
<tr>
<th>CUSTOMER</th>
<th>ITEMID</th>

<th>IMAGE</th>

</tr>
<c:forEach var="row" items="${result.rows}">
<tr>
<td><c:out value="${row.username}"/></td>
<td><c:out value="${row.itemid}"/></td>
<td> ${row.imageurl}</td>


</c:forEach>

</table>
    
    
              
</div><!--table-->  
<div class="viewcartline"> </div>
         </div><!--wrapper-->
    </body>
</html>
