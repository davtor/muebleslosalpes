package com.mueblesAlpes.DAO;

/**
 *
 * @author Sebastian rojas - David Toro
 */
import com.mueblesAlpes.Beans.ProductoBean;
import com.mueblesAlpes.Beans.ProductoMasVendidoBean;
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
    String qProducto = "INSERT INTO productos (idProductos, referncia, nombre, descripcion, tipo, material, dimension, color, peso, foto) VALUES(NULL,?,?,?,?,?,?,?,?,?)";
    Statement ps = null;
    try {
      PreparedStatement pstmt = conn.prepareStatement(qProducto);
      pstmt.setString(1, producto.getCodigoP());
      pstmt.setString(2, producto.getNombre());
      pstmt.setString(3, producto.getDescripcion());
      pstmt.setString(4, producto.getIdtipoMueble());
      pstmt.setString(5, producto.getMaterial());
      pstmt.setString(6, producto.getDimencion());
      pstmt.setString(7, producto.getColor());
      pstmt.setString(8, producto.getPeso());
//            pstmt.setString(9, producto.getFoto));
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
        producto.setIdtipoMueble(rs.getString("tipo"));
        producto.setMaterial(rs.getString("material"));
        producto.setDimencion(rs.getString("dimension"));
        producto.setColor(rs.getString("color"));
        producto.setPeso(rs.getString("peso"));
        //producto.setFoto(rs.getString("foto"));
        productos.add(producto);
      }

    } catch (SQLException ex) {
      Logger.getLogger(ProductosDAO.class.getName()).log(Level.SEVERE, null, ex);
    }
    return productos;
  }

  public ProductoBean getProductoPorReferencia(String referencia) {
    ProductoBean producto = new ProductoBean();
    String qQuery = "SELECT * FROM productos WHERE referncia = ?";
    try {
      PreparedStatement pstmt = conn.prepareStatement(qQuery);
      pstmt.setString(1, referencia);
      ResultSet rs = pstmt.executeQuery();
      while (rs.next()) {
        producto.setIdProducto(rs.getInt("idProductos"));
        producto.setCodigoP(rs.getString("referncia"));
        producto.setNombre(rs.getString("nombre"));
        producto.setDescripcion(rs.getString("descripcion"));
        producto.setIdtipoMueble(rs.getString("tipo"));
        producto.setMaterial(rs.getString("material"));
        producto.setDimencion(rs.getString("dimension"));
        producto.setColor(rs.getString("color"));
        producto.setPeso(rs.getString("peso"));
        //producto.setFoto(rs.getString("foto"));   
      }
    } catch (SQLException ex) {
      Logger.getLogger(ProductosDAO.class.getName()).log(Level.SEVERE, null, ex);
    }
    return producto;
  }

  public boolean borrar(int idproducto) {
    boolean bandera = true;
    String qQuery = "DELETE FROM productos WHERE idProductos = ? ";
    try {
      PreparedStatement pstmt = conn.prepareStatement(qQuery);
      pstmt.setInt(1, idproducto);
      int resultado = pstmt.executeUpdate();
      System.out.println("Entro a borrar debio borrar...");
      if (resultado == 0) {
        bandera = false;
      }
    } catch (SQLException ex) {
      Logger.getLogger(ProductosDAO.class.getName()).log(Level.SEVERE, null, ex);
    }
    return bandera;
  }

  public ProductoMasVendidoBean getProductomasVendido() {
    ProductoMasVendidoBean producto = new ProductoMasVendidoBean();
    String query = "SELECT productos.referncia, productos.descripcion, compras.cantidad, precios.precio "
            + "FROM compras "
            + "JOIN precios ON compras.idPrecios = precios.idPrecios "
            + "JOIN productos ON precios.idProductos = productos.idProductos "
            + "ORDER BY compras.cantidad DESC limit 0,1 ";
    try {
      PreparedStatement pstmt = conn.prepareStatement(query);
      ResultSet rs = pstmt.executeQuery();
      while (rs.next()) {
        producto.setCodigoProducto(rs.getNString("referncia"));
        producto.setDescripcion(rs.getNString("descripcion"));
        producto.setCantidad(rs.getInt("cantidad"));
        producto.setPrecio(rs.getInt("precio"));
      }
    } catch (SQLException ex) {
      Logger.getLogger(ProductosDAO.class.getName()).log(Level.SEVERE, null, ex);
    }
    return producto;
  }

  public ArrayList<ProductoMasVendidoBean> getComprasPorCliente(String numeroDocumento) {
    ArrayList<ProductoMasVendidoBean> listaProductos = new ArrayList<ProductoMasVendidoBean>();
    String query = "SELECT productos.referncia, productos.descripcion, compras.cantidad, precios.precio "
            + "FROM compras "
            + "JOIN precios ON compras.idPrecios = precios.idPrecios "
            + "JOIN productos ON precios.idProductos = productos.idProductos "
            + "JOIN clientes ON compras.idClientes = clientes.idClientes "
            + "WHERE clientes.numeroDocumento = ? ";
    try {
      PreparedStatement pstmt = conn.prepareStatement(query);
      pstmt.setString(1, numeroDocumento);
      ResultSet rs = pstmt.executeQuery();
      while (rs.next()) {
        ProductoMasVendidoBean producto = new ProductoMasVendidoBean();
        producto.setCodigoProducto(rs.getNString("referncia"));
        producto.setDescripcion(rs.getNString("descripcion"));
        producto.setCantidad(rs.getInt("cantidad"));
        producto.setPrecio(rs.getInt("precio"));
        listaProductos.add(producto);
      }
    } catch (SQLException ex) {
      Logger.getLogger(ProductosDAO.class.getName()).log(Level.SEVERE, null, ex);
    }
    return listaProductos;
  }

  public ArrayList<ProductoMasVendidoBean> getListadoProductos() {
    ArrayList<ProductoMasVendidoBean> listaProductos = new ArrayList<ProductoMasVendidoBean>();
    String query = "SELECT productos.referncia, productos.descripcion, precios.cantidad, precios.precio "
            + "FROM productos "
            + "JOIN precios ON productos.idProductos = precios.idProductos";
    PreparedStatement pstmt;
    try {
      pstmt = conn.prepareStatement(query);
      ResultSet rs = pstmt.executeQuery();
      while (rs.next()) {
        ProductoMasVendidoBean producto = new ProductoMasVendidoBean();
        producto.setCodigoProducto(rs.getNString("referncia"));
        producto.setDescripcion(rs.getNString("descripcion"));
        producto.setCantidad(rs.getInt("cantidad"));
        producto.setPrecio(rs.getInt("precio"));
        listaProductos.add(producto);
      }
    } catch (SQLException ex) {
      Logger.getLogger(ProductosDAO.class.getName()).log(Level.SEVERE, null, ex);
    }

    return listaProductos;
  }
}
