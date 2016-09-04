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
        
        <form action="resultado.html" method="post">
            
            Nome:<input type="text" name="nome"/><br>
            Endereço:<input type="text" name="endereco"/><br>
             Estados:
             <select name="estados">
                 <option>Opção 1</option>
                 <option>Opção 2</option>
                 <option>Opção 3</option>
                 <option>Opção 4</option>
                 
             </select><br>
             
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
