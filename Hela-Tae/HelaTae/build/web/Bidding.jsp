<%-- 
    Document   : Bid
    Created on : Jan 4, 2017, 7:59:17 PM
    Author     : Madhuranga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="css/main.css">
       
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bidding</title>
    </head>
    <body>
          <div class="wrapper">
       <div class="topbar"> 
           
           <div class="header">
               <h1>BID</h1>
         
           </div><!--header-->
            </div><!--topbar-->
            
          <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/hela"
     user="root"  password=""/>

<sql:query dataSource="${snapshot}" var="result">
SELECT * from bid;
</sql:query>

<div class="table">
    
<table border="1" >
<tr>
<th>Item ID</th>
<th>Description</th>
<th>Start Date</th>
<th>End Date</th>
<th>Image</th>
<th>Bid(Rs)</th>
<th> </th>
</tr>
<c:forEach var="row" items="${result.rows}">
<tr>
    
    
<td><c:out value="${row.itemid}"/></td>
<td><c:out value="${row.pname}"/></td>
<td><c:out value="${row.startdate}"/></td>
<td><c:out value="${row.enddate}"/></td>
<td> ${row.image}</td>



<form action="Bidding" method="GET">
    <td> <input type="text" name="bid"  </td> 
 <input type="hidden" name="itemid" value="${row.itemid}"/>
    <input type="hidden" name="imageurl" value="${row.image}"/>
    <td><input type="submit" value="BID"</td>
</form>

           
           </c:forEach>
       
        
</table>
    
         
        
        
        

      <div class="orderline"> </div>
       </div><!--wrapper-->
    </body>
</html>
