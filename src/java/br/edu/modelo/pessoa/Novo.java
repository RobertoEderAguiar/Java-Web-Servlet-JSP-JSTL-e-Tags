/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.modelo.pessoa;

import java.io.IOException;
import java.io.PrintWriter;
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

        
        
        String redirect = "jsp/exemplo.jsp";
        if(validarCampos(request,response)){
          redirect= "jsp/exemplo-result.jsp" ;
        }       
        RequestDispatcher dispatcher = request.getRequestDispatcher(redirect);
        dispatcher.forward(request, response);
        
    }

    private boolean validarCampos(HttpServletRequest request, HttpServletResponse response) {

        boolean retorno = true;
        String msgErro = "teste";
        String nome = request.getParameter("nome");
        String endereco = request.getParameter("endereco");
        String email = request.getParameter("email");
        String cpf = request.getParameter("cpf");
        String dtNasc = request.getParameter("dtNasc");

        if (nome == null || "".equals(nome)) {
            retorno = false;
            msgErro = "Campo Nome Obrigatório";
        } else if (endereco == null || "".equals(endereco)) {
            retorno = false;
            msgErro = "Campo endereço Obrigatório";
        } else if (email == null || "".equals(email)) {
            retorno = false;
            msgErro = "Campo email Obrigatório";
        } else if (cpf == null || "".equals(cpf)) {
            retorno = false;
            msgErro = "Campo CPF Obrigatório";
        } else if (dtNasc == null || "".equals(dtNasc)) {
            retorno = false;
            msgErro = "Campo Data Nascimento Obrigatório";
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
