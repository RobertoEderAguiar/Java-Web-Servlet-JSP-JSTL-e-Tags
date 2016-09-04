<%--
    Document   : scriptlets-exec
    Created on : 02/09/2016, 18:25:00
    Author     : Roberto Eder
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="br.edu.modelo.pessoa.Pessoa"%>
<%@page import="java.util.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%

            List<Pessoa> listaPessoa = new ArrayList<Pessoa>();

            Pessoa pessoa = new Pessoa();
            pessoa.setIdade(13);
            pessoa.setNasc(new Date());
            pessoa.setPessoa("roberto eder");
            listaPessoa.add(pessoa);

            pessoa = new Pessoa();
            pessoa.setIdade(28);
            pessoa.setNasc(new Date());
            pessoa.setPessoa("Daniela Felicio");
            listaPessoa.add(pessoa);

            pessoa = new Pessoa();
            pessoa.setIdade(28);
            pessoa.setNasc(new Date());
            pessoa.setPessoa("Graziela Felicio");
            listaPessoa.add(pessoa);
            request.setAttribute("listaPessoa", listaPessoa);


        %>  

        <table style="background-color: brown" border="3">
            <tr>
                <td>Nome</td>
                <td>Nascimento</td>
                <td>Idade</td>
            </tr>


            <%            DateFormat format = new SimpleDateFormat("dd/MM/yyyy");
                for (Pessoa p : listaPessoa) {
                    request.setAttribute("p", p);
            %>

            <tr>
                <td>${p.pessoa}</td>
                <td>${p.nasc}</td>
                <td>${p.idade}</td>
            </tr>

            <%
                }
            %>

        </table>

    </body>
</html>
