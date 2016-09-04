<%-- 
    Document   : resultado
    Created on : 02/09/2016, 19:55:03
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
        <h1>Hello World!</h1>
        
        
        Nome é: ${param.nome} <br/>
      
      Endereço: ${param.endereco}<br/>
      Versão: ${param.versao}<br/>
      
     Musicas: ${empty paramValues.musicas ? 
                             'Nenhuma musica selecionada' : paramValues.musicas[0]}<br/>
    </body>
</html>
