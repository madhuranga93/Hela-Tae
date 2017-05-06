<%-- 
    Document   : upadetuser
    Created on : Jan 7, 2017, 12:52:54 PM
    Author     : Madhuranga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <title>update</title>
    </head>
    <body>
        
          <div class="wrapper">
       <div class="topbar"> 
           
           <div class="header">
               <h1>UPDATE</h1>
         
           </div><!--header-->
       
        </div><!--topbar-->
        
        
        <div class="form2">
        <form action="userupdate" method="POST">
           
            
            Full Name      :<input type="text" name="fullname"/><br/>
            Address :<input type="text" name="address"/><br/>
            Username       :<input type="text" name="username"    /><br/>
            Password       :<input   type="password" name="password"   /><br/>
                              <input type="submit" value="UPDATE" />

            </form>
                              
            </div><!--form2-->
            
            <div class="line2"></div>
            </div><!--wrapper-->
        
       
    </body>
</html>
