<%-- 
    Document   : viewfeedback
    Created on : Jan 5, 2017, 11:29:58 AM
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
       <div class="topbar"> 
           
           <div class="header">
               <h1>FEEDBACK</h1>
         
           </div><!--header-->
          
           
        </div><!--topbar-->
        
       
            
             
            
        
          
              
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/hela"
     user="root"  password=""/>

<sql:query dataSource="${snapshot}" var="result">
SELECT * from feedback;
</sql:query>

<div class="table">
    
<table border="1" >
<tr>
<th>NAME</th>
<th>EMAIL</th>
<th>MESSAGE</th>

</tr>
<c:forEach var="row" items="${result.rows}">
<tr>
<td><c:out value="${row.name}"/></td>
<td><c:out value="${row.email}"/></td>
<td><c:out value="${row.message}"/></td>


</c:forEach>

</table>
    
    
              
</div><!--table-->  

<div class="viewcartline"> </div>
         </div><!--wrapper-->
    </body>
</html>
