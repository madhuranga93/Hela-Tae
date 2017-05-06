<%-- 
    Document   : index
    Created on : Dec 12, 2016, 9:45:51 AM
    Author     : Madhuranga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>
    <head>
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <link rel="stylesheet" type="text/css" href="css/adv.css">
        <link rel="stylesheet" type="text/css" href="css/error.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login</title>
    </head>
    
  
    <body>
       <div class="wrapper">
       <div class="topbar"> 
           
           <div class="header">
               <h1>HELA-TAE</h1>
               <marquee behavior="scroll" direction="left">PREMIUM QUALITY</marquee>
           </div><!--header-->
           
           
           
          
           
           
        </div><!--topbar-->
        
        <div class="box3"></div>
          
        
        
      
        
           <div class="form">
        <form action="LoginServlet" method="POST">
            
            Username:<input type="text" name="username"   <br/>
          
            Password:<input   type="password" name="password"   /><br/>
                          <input type="submit" value="Sign In" />
              
                          <a href="signup.jsp">REGISTER</a>
                
        
        </form>
               
              
       
              
     </div><!--form-->
        <c:if test="${sessionScope.status==0}">
         
          <div class="error">
         
             <p>INVALID USER DETAILS </p>
             
             </div>
            
     </c:if>
       <div class="line">
       
           <div class="p">
              
           <p><font size="5" color="white">Hela-Tae(PVT)LTD COMPANY</font></p>
           <p><font size="2" color="white">Contact-US +94777579881(Malith Madhuranga)</font></p>
               
          </div>
       </div>
       </div><!--wrapper-->
    </body>
</html>
