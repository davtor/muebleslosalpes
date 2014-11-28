
package com.mueblesAlpes.Servlets;

import com.mueblesAlpes.DAO.ProductosDAO;
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

/**
 *
 * @author Administrador
 */


@WebServlet(name = "EliminacionProductoServlet", urlPatterns = {"/EliminacionProductoServlet"})
public class EliminacionProductoServlet extends HttpServlet {
    private String mensaje  ="";
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
            response.sendRedirect("vistas/eliminacionProductos.jsp?respuesta=si&mensaje="+mensaje);
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
        String productos = request.getParameter("productosSeleccionados");
        if(productos.length() == 0){
            mensaje = "Debe Seleccionar al menos un producto ";
        } else {
             ArrayList<String> vProductos = new ArrayList(Arrays.asList(productos.split("-")));
             for (int i = 0; i < vProductos.size(); i++) {
                int codProducto = Integer.parseInt(vProductos.get(i));
                
                 try {
                     ProductosDAO productodao = new ProductosDAO();
                     if(productodao.borrar(codProducto)){
                         mensaje = "Producto Borrado con Exito ";
                     }
                 } catch (SQLException ex) {
                     Logger.getLogger(EliminacionProductoServlet.class.getName()).log(Level.SEVERE, null, ex);
                 }
                
            }
        }
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
