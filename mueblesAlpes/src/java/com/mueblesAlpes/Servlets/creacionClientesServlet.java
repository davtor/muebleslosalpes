package com.mueblesAlpes.Servlets;

import com.mueblesAlpes.Beans.ClienteBean;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Administrador
 */
@WebServlet(name = "creacionClientesServlet", urlPatterns = {"/creacionClientesServlet"})
public class creacionClientesServlet extends HttpServlet {

    private ClienteBean cliente = new ClienteBean();

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
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            String mensaje = "Se creo con exito el cliente:";
            response.sendRedirect("vistas/creacionClientes.jsp?respuesta=si&cliente=" + cliente.getPrimerNombre() + "&mensaje=" + mensaje);
        } finally {
            out.close();
        }
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
        cliente.setPrimerNombre(request.getParameter("primerNombre"));
        cliente.setSegundoNombre(request.getParameter("segundoNombre"));
        cliente.setPrimerApellido(request.getParameter("primerApellido"));
        cliente.setSegundoApellido(request.getParameter("segundoApellido"));
        cliente.setIdTipoDocumento(Integer.parseInt(request.getParameter("idTipoDocumento")));
        cliente.setNumeroDocumento(Integer.parseInt(request.getParameter("numeroDocumento")));
        cliente.setNumeroCelular(Integer.parseInt(request.getParameter("numeroCelular")));
        cliente.setEmail(request.getParameter("email"));
        cliente.setFechaNacimiento(request.getParameter("fechaNacimiento"));
        cliente.setContrasena(request.getParameter("contrasena"));
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
