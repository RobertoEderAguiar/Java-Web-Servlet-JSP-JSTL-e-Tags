<%-- 
    Document   : exemplo
    Created on : 08/09/2016, 10:26:09
    Author     : Roberto Eder
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.edu.modelo.servlet.*"  %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      
        <div style="width: 500px;border: 1px solid black; padding: 20px; margin: auto; align-self: center; ">
            <form action="../novo"  >
                 ${msgErro != null ? msgErro : ''}
                <table width="300" cellpadding="10" align="center">
                   
                    <tr>
                        <td>Nome:</td>
                        <td><input type="text" name="nome" value="${param.nome}"  /></td>
                    </tr>
                    <tr>
                        <td>Endereço:</td>
                        <td><input type="text"  name="endereco" value="${param.endereco}"  /></td>
                    </tr>
                    <tr>
                        <td>E-mail:</td>
                    <td><input type="text" name="email" value="${param.email}" /></td> 
                    </tr>
                    <tr>
                        <td>Data Nascimento:</td>
                        <td><input type="text" name="dtNasc" value="${param.dtNasc} " 
                                   title="Campo no formato dd/mm/yyyy"  maxlength="10"  /></td>
                    </tr>
                    
                    <tr>
                        <td>CPF:</td>
                        <td><input type="text" name="cpf" value="${param.cpf}" 
                                   maxlength="11" pattern="[0-9]+$"/></td>
                    </tr>
                    <tr>
                    <td><input type="submit" value="Enviar"></td>
                    <td><input type="reset"   value="Limpar" ></td>
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>
