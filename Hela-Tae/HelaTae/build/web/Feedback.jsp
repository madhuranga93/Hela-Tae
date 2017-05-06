<%-- 
    Document   : Feedback
    Created on : Jan 2, 2017, 9:49:37 PM
    Author     : Madhuranga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>FEEDBACK</title>
    </head>
    <body>
          <div class="wrapper">
       <div class="topbar"> 
           
           <div class="header">
               <h1>FEEDBACK</h1>
         
           </div><!--header-->
          
           
           
        </div><!--topbar-->
        
        
    
         
        
        
           <div class="form3">
        <form action="Feedback" method="POST">
            
            Name:<input type="text" name="name"   <br/>
          
            Email:<input   type="text" name="email"   /><br/>
            
            Message:<input type="text" name="msg"   <br/>
                          <input type="submit" value="SUBMIT" />
              
                          
                
        
        </form>
       
              
     </div><!--form-->
      
     <div class="viewcartline"> </div>
       </div><!--wrapper-->
    </body>
</html>
