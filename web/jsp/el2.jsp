<%-- 
    Document   : el2
    Created on : 02/09/2016, 19:51:46
    Author     : Roberto Eder
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
        <form action="../html/resultado.jsp" >
            
            Nome:<input name="nome" /><br>
               Endereço:<input name="endereco" /><br>
                  Versão<input name="versao" /><br>
                  Musicas: <input type="checkbox" name="musicas" value="Rock">Rock<br>
                  <input type="checkbox" name="musicas" value="Samba">Samba <br>
                   <input type="checkbox" name="musicas" value="Jazz">Jazz<br>
                    <input type="checkbox"  name="musicas" value="Forro">Forro<br>
                     <input type="checkbox"  name="musicas" value="Reggae">Reggae<br>
                  
                   
                  <input type="submit" value="Enviar">
            
        </form>
        
        
        
        
    </body>
</html>
