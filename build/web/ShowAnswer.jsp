<%-- 
    Document   : ShowAnswer
    Created on : 5 Nov, 2018, 4:14:54 PM
    Author     : Rahul
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <% 
           ArrayList<String> l=(ArrayList)request.getAttribute("m1");
           
         for(String h:l)
        { 
       
            
          out.println(h+"<br>");
      
  
        
          
        }
         


              %>
        
        
    </body>
</html>
