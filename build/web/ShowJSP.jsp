<%-- 
    Document   : ShowJSP
    Created on : 4 Nov, 2018, 1:05:18 PM
    Author     : DELL
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Page</title>
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
