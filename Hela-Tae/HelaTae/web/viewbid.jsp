<%-- 
    Document   : viewbid
    Created on : Jan 7, 2017, 5:15:37 PM
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
        <title>Bidding</title>
    </head>
    <body>
           <div class="wrapper">
       <div class="topbar"> 
           
           <div class="header">
               <h1>BIDS</h1>
         
           </div><!--header-->
            </div><!--topbar-->
            
          <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/hela"
     user="root"  password=""/>

<sql:query dataSource="${snapshot}" var="result">
SELECT * from biddetails;
</sql:query>

<div class="table">
    
<table border="1" >
<tr>

<th>Itemid</th>
<th>User</th>
<th>Bid(Rs)</th>
<th>Image</th>

</tr>
<c:forEach var="row" items="${result.rows}">
<tr>
    
    
<td><c:out value="${row.itemid}"/></td>
<td><c:out value="${row.user}"/></td>

<td><c:out value="${row.bid}"/></td>
<td> ${row.image}</td>

        </c:forEach>
       
        
</table>
    
         
        
        
        

      <div class="viewcartline"> </div>
       </div><!--wrapper-->
    </body>
</html>
