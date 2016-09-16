/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.modelo.pessoa;

import br.edu.modelo.exception.ValidationException;
import br.edu.modelo.validator.CPFValidator;
import br.edu.modelo.validator.DataValidator;
import java.io.IOException;
import br.edu.modelo.validator.Validator;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Roberto Eder
 */
//annotation.WebServlet para url em servlet
@WebServlet(name = "novo", urlPatterns = {"/novo"})
public class Novo extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm");
        request.setAttribute("data", dateFormat.format(new Date()));

        String dtNasc = request.getParameter("dtNasc");
        String cpf = request.getParameter("cpf");

        Validator dataValidator = new DataValidator();
        Validator cpfValidator = new CPFValidator();
        String redirect = "jsp/exemplo.jsp";
        try {

            if (validarCampos(request, response) & dataValidator.validar(dtNasc)
                    & cpfValidator.validar(cpf)) {
                redirect = "jsp/exemplo-result.jsp";
            }
        } catch (ValidationException e) {
            String msgErro = "";
            if (request.getAttribute("msgErro") != null) {
                msgErro = (String) request.getAttribute("msgErro");
            }
            msgErro += e.getMessage() + "<br/>";
            request.setAttribute("msgErro", msgErro);
        }
        RequestDispatcher dispatcher = request.getRequestDispatcher(redirect);
        dispatcher.forward(request, response);

    }

    private boolean validarCampos(HttpServletRequest request, HttpServletResponse response) {

        boolean retorno = true;
        String msgErro = "";
        String nome = request.getParameter("nome");
        String endereco = request.getParameter("endereco");
        String email = request.getParameter("email");
        String cpf = request.getParameter("cpf");
        String dtNasc = request.getParameter("dtNasc");

        if (nome == null || "".equals(nome)) {
            retorno = false;
            msgErro += "Campo Nome Obrigatório<br/>";
        }
        if (endereco == null || "".equals(endereco)) {
            retorno = false;
            msgErro += "Campo endereço Obrigatório<br/>";
        }
        if (email == null || "".equals(email)) {
            retorno = false;
            msgErro += "Campo email Obrigatório<br/>";
        }
        if (cpf == null || "".equals(cpf)) {
            retorno = false;
            msgErro += "Campo CPF Obrigatório<br/>";
        }
        if (dtNasc == null || "".equals(dtNasc)) {
            retorno = false;
            msgErro += "Campo Data Nascimento Obrigatório<br/>";
        }
        request.setAttribute("msgErro", msgErro);
        return retorno;

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
