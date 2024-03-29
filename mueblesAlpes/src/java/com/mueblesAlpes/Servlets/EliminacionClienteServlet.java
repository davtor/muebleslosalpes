package com.mueblesAlpes.Servlets;

import com.mueblesAlpes.DAO.ClientesDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

/**
 *
 * @author Administrador
 */
@WebServlet(name = "EliminacionClienteServlet", urlPatterns = {"/EliminacionClienteServlet"})
public class EliminacionClienteServlet extends HttpServlet {

  private String mensaje = "se ha eliminado con exito";

  /**
   * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
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
      /* TODO output your page here. You may use following sample code. */

      response.sendRedirect("vistas/eliminacionClientes.jsp?respuesta=si&mensaje=" + mensaje);
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
//    processRequest(request, response);
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
    String clientes = request.getParameter("clientesSeleccionados");
    if (clientes.length() == 0) {
      mensaje = "Debe seleccionar al menos un cliente";
    } else {
      ArrayList<String> vClientes = new ArrayList(Arrays.asList(clientes.split("-")));
      for (int i = 0; i < vClientes.size(); i++) {
        int idCliente = Integer.parseInt(vClientes.get(i));
        try {
          ClientesDAO clientedao = new ClientesDAO();
          clientedao.borrar(idCliente);
        } catch (SQLException e) {
          System.out.println("mire: " + e.getErrorCode());
        }
      }
      processRequest(request, response);
    }
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
