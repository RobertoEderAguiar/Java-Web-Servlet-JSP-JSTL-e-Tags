<%-- 
    Document   : index
    Created on : 31/08/2016, 21:56:49
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
        <h1>Hello World! primeira aplicação java web</h1>
        <h5>Teste H5</h5>
        
        <form action="/WebApplication1/Novo" method="post">
            ${msgErro != null ? msgErro : ''}
            
            Nome:<input type="text" name="nome"/><br>
            Endereço:<input type="text" name="endereco"/><br>
             Estados:
             <select name="estados">
                 <option>Pop</option>
                 <option>Rock</option>
                 <option>Soul</option>
                 <option>Forro</option>
                 
             </select ><br>
             
             Gostos musicais:<br>
             <input type="checkbox"/>Pop<br>
             <input type="checkbox"/>Rock<br>
             <input type="checkbox"/>Soul<br>
             <input type="checkbox"/>Jazz<br>
             <input type="checkbox"/>Sertanejo<br>
             <input type="checkbox"/>Forro<br>
             <input type="submit" value="Enviar">
        </form>
       
        
    </body>
</html>
