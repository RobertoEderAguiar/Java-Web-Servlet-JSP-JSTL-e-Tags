<%-- 
    Document   : scriplets
    Created on : 01/09/2016, 23:46:10
    Author     : Roberto Eder
--%>
<%@page import="java.util.*"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Scriplets</title>
    </head>
    <body>
        <% 
            int count = 1;
            
            List<String> nomes = new ArrayList<String>();
            nomes.add("Roberto");
             nomes.add("Daniela");
               nomes.add("Graziela");
                nomes.add("Abreu");
                 nomes.add("Elena");
         // String[] nomes = {"Roberto", "Daniela", "Graziela"};
        for(String nome : nomes)
        {
           if(count % 2 ==0){
           out.println("<div style='background-color:none'>"+nome +"<br/>" + "</div>");
           } else{
               out.println("<div style='background-color:green'>"+nome +"<br/>" + "</div>");
           }
           count++;
        }
       
        %>
        
        
        
        
    </body>
</html>
