<%-- 
    Document   : el
    Created on : 02/09/2016, 19:11:06
    Author     : Roberto Eder
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Expressoes Language</title>
    </head>
    <body>
        
        <%int valor = 100;%>
       
       Valor: ${2*6}
       Valor: ${2*6}
       Valor: ${2*6}
       Valor: ${2+6}
       Valor: ${2-6}
       Valor: ${2/6}
       Ternario ${2*2 == 5 ? "YES" : "NO"}
       <br/>    <br/>    <br/>
        <%
            //Request Scope: todos os objetos armazenados no escopo request, sobrevivem apenas a uma submissão ao ciclo de vida do JSF
            request.setAttribute("nome", "Roberto Eder");
            //Session Scope: todos os objetos e atributos vinculados ao ManagedBean, sobreviverão durante toda a sessão do usuário
            session.setAttribute("endereco", "Rua dom muricio");
            //Application Scope: tudo armazenado neste escopo permanece enquanto a aplicação estiver executando e é compartilhado entre todos os usuários
            application.setAttribute("versao", "1.0");
            
                
        %>
        //
      Nome é: ${requestScope.nome} <br/>
      
      Endereço: ${sessionScope.endereco}<br/>
      Versão: ${applicationScope.versao}
        
    </body>
</html>
