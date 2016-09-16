<%-- 
    Document   : exemplo
    Created on : 08/09/2016, 10:26:09
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

        <div style="width: 500px;border: 1px solid black; padding: 20px; margin: auto; align-self: center; ">
            <form >

                <table>


                    <tr>
                        <td>Nome:</td>
                        <td><input type="text"   name="nome" disabled="disabled" value="${param.nome}" /></td>
                    </tr>
                    <tr>
                        <td>Endereço:</td>
                        <td><input type="text"  name="endereco" disabled="disabled" value="${param.endereco}" /></td>
                    </tr>
                    <tr>
                        <td>E-mail:</td>
                        <td><input type="text" name="email" disabled="disabled" value="${param.email}" /></td> 
                    </tr>
                    <tr>
                        <td>Data Nascimento:</td>
                        <td><input type="text" name="dtNasc" disabled="disabled" value="${param.dtNasc}" /></td>
                    </tr>
                    <tr>
                        <td>CPF:</td>
                        <td><input type="text" name="cpf" disabled="disabled" value="${param.cpf}"  /></td>
                    </tr>

                </table>
                Última atualização em ${data}
                ${msgErro}
            </form>
        </div>
    </body>
</html>
