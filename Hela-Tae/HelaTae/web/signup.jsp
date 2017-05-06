<%-- 
    Document   : signup
    Created on : Dec 12, 2016, 3:18:46 PM
    Author     : Madhuranga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link rel="stylesheet" type="text/css" href="css/main3.css">
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="css/main.css">
       
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign up</title>
    </head>
    <body>
          <div class="wrapper">
       <div class="topbar"> 
       
           <div class="header">
               <h1>SIGN-UP</h1>
         
           </div><!--header-->
        </div><!--topbar-->
        
        
        <div class="form2">
        <form action="SignupServlet" method="POST">
           
            
            Full Name      :<input type="text" name="name"/><br/>
            Address :<input type="text" name="address"/><br/>
            Username       :<input type="text" name="username"    /><br/>
            Password       :<input   type="password" name="password"   /><br/>
                              <input type="submit" value="REGISTER" />

           
            </div><!--form2-->
            
            
        
        </form>
            <div class="line2"></div>
            </div><!--wrapper-->
    </body>
</html>
