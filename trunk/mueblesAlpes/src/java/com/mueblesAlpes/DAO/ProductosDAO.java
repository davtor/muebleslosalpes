package com.mueblesAlpes.DAO;

/**
 *
 * @author davtor
 */
import com.mueblesAlpes.Beans.ProductoBean;
import com.mueblesAlpes.Conexion.conexionBD;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ProductosDAO extends IDAO {

    private Connection conn = null;

    public ProductosDAO() throws SQLException {
        this.conn = conexionBD.obtenerConexion();
    }

    public boolean guardar(ProductoBean producto) {
        String qProducto = "INSERT INTO productos(idProductos, referncia, nombre, descripcion, tipo, material, dimension, color, foto) VALUES(NULL,?,?,?,?,?,?,?,?)";
        Statement ps = null;
        try {
            PreparedStatement pstmt = conn.prepareStatement(qProducto);
            pstmt.setString(1, producto.getCodigoP());
            pstmt.setString(2, producto.getNombre());
            pstmt.setString(3, producto.getDescripcion());
            pstmt.setInt(4, producto.getIdtipoMueble());
            pstmt.setString(5, producto.getMaterial());
            pstmt.setString(6, producto.getDimencion());
            pstmt.setString(7, producto.getColor());
//            pstmt.setString(8, producto.getFoto));
          pstmt.executeUpdate();
        } catch (SQLException ex) {
            //Logger.getLogger(ProductosDAO.class.getName()).log(Level.SEVERE, null, ex);
             System.out.println(ex.getMessage());
             } finally {
        }
        return true;
    }
    public ArrayList<ProductoBean> getProductos() {
        ArrayList<ProductoBean> productos = new ArrayList<ProductoBean>();
        String qQuery = "SELECT * FROM productos ";
       
        try {
            PreparedStatement pstmt = conn.prepareStatement(qQuery);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                ProductoBean producto = new ProductoBean();
                producto.setIdProducto(rs.getInt("idProductos"));
                producto.setCodigoP(rs.getString("referncia"));
                producto.setNombre(rs.getString("nombre"));
                producto.setDescripcion(rs.getString("descripcion"));
                producto.setIdProducto(rs.getInt("tipo"));
                producto.setMaterial(rs.getString("material"));
                producto.setDimencion(rs.getString("dimension"));
                producto.setColor(rs.getString("color"));
                //producto.setFoto(rs.getString("foto"));
                productos.add(producto);    
            }
        
        } catch (SQLException ex) {
            Logger.getLogger(ProductosDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return productos;
    }
    public boolean borrar(int idproducto) {
        String qQuery = "DELETE FROM productos WHERE idProductos = ? ";
        try {
            PreparedStatement pstmt = conn.prepareStatement(qQuery);
            pstmt.setInt(1, idproducto);
            pstmt.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ProductosDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return true;
    }

    
}
