<%-- 
    Document   : addproducts
    Created on : Jan 9, 2017, 9:27:02 AM
    Author     : Madhuranga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" type="text/css" href="css/main.css">
        <title>Add Products</title>
    </head>
    <body>
        
        <div class="wrapper">
       <div class="topbar"> 
       <h1><c:out value="${user}"/></h1>
       </div><!--topbar-->
        
      
        
        
        
        <div class="table">
            
       <table border="1" >
            <tr>           
<th>ITEM ID</th>
<th>DESCRIPTION</th>
<th>AVAILABLE QTY</th>
<th>IMAGE</th>
<th>PRICE</th>
<th>ADD ITEM</th>

</tr>

  
    <tr>
         
        
             <form action="Addproducts" method="POST">
           
        <td> <input type="text" name="item"/> </td>
        <td> <input type="text" name="des"/> </td>
        <td>  <input type="text" name="qty"/> </td>
        <td>  <input type="text" name="image"/> </td>
        <td>  <input   type="text" name="price"  /> </td>
        <td>   <input type="submit" value="ADD" /> </td>
       
        </form>
        
     </tr>
     
    </c:forEach>
     </table>
            
                  
</div><!--table-->  
          
  
   <div class="viewcartline"></div>
         </div><!--wrapper-->
     

    </body>
</html>
