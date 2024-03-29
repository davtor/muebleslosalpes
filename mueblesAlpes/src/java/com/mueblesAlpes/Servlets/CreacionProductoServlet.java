package com.mueblesAlpes.Servlets;

import com.mueblesAlpes.Beans.ProductoBean;
import com.mueblesAlpes.DAO.ProductosDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
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
@WebServlet(name = "CreacionProductoServlet", urlPatterns = {"/CreacionProductoServlet"})
public class CreacionProductoServlet extends HttpServlet {

    private ProductoBean producto = new ProductoBean();

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
            String mensaje = "secreo con exito el producto";
            response.sendRedirect("vistas/creacionProducto.jsp?respuesta=si&producto=" + producto.getNombre() + "&mensaje=" + mensaje);
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
        //processRequest(request, response);
        ProductosDAO miProductodao;
        try {
            miProductodao = new ProductosDAO();
            producto.setCodigoP(request.getParameter("codigoP"));
            producto.setNombre(request.getParameter("nombre"));
            producto.setDescripcion(request.getParameter("descripcion"));
            producto.setIdtipoMueble(request.getParameter("tipo"));
            producto.setMaterial(request.getParameter("material"));
            producto.setDimencion(request.getParameter("dimencion"));
            producto.setColor(request.getParameter("color"));
            producto.setPeso(request.getParameter("peso"));
            miProductodao.guardar(producto);
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(CreacionProductoServlet.class.getName()).log(Level.SEVERE, null, ex);
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
