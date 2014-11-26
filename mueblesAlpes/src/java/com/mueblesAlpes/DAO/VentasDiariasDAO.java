/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mueblesAlpes.DAO;

import com.mueblesAlpes.Beans.VentaDiariaBean;
import com.mueblesAlpes.Conexion.conexionBD;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Sebastian Rojas
 */
public class VentasDiariasDAO extends IDAO {

  private Connection conn = null;

  public VentasDiariasDAO() throws SQLException {
    this.conn = conexionBD.obtenerConexion();
  }

  public ArrayList<VentaDiariaBean> getVentasDiarias(String nombreCliente, String referencia) {
    ArrayList<VentaDiariaBean> listaVentas = new ArrayList<VentaDiariaBean>();
    String consulta = "SELECT clientes.primerNombre, clientes.primerApellido, productos.referncia, productos.descripcion, compras.cantidad "
                    + "FROM compras "
                    + "JOIN clientes ON compras.idClientes = clientes.idClientes "
                    + "JOIN precios ON compras.idPrecios = precios.idPrecios "
                    + "JOIN productos ON precios.idProductos = productos.idProductos ";
    if (nombreCliente.length() != 0 || referencia.length() != 0) {
      consulta += "WHERE ";
    }
    if (nombreCliente.length() != 0) {
      consulta += "clientes.primerNombre = ? ";
    }
    if (nombreCliente.length() != 0 && referencia.length() != 0) {
      consulta += "AND ";
    }
    if (referencia.length() != 0) {
      consulta += "productos.referncia = ? ";
    }
    try {
      PreparedStatement pstmt = conn.prepareStatement(consulta);
      if(nombreCliente.length() != 0 && referencia.length() != 0) {
        pstmt.setString(1, nombreCliente);
        pstmt.setString(2, referencia);
      } else if(nombreCliente.length() != 0 && referencia.length() == 0) {
        pstmt.setString(1, nombreCliente);
      } else if(nombreCliente.length() == 0 && referencia.length() != 0) {
        pstmt.setString(1, referencia);
      }
      ResultSet rs = pstmt.executeQuery();
      while (rs.next()) {
        VentaDiariaBean ventaDiaria = new VentaDiariaBean();
        ventaDiaria.setNombreCliente(rs.getNString("primerNombre")+" "+rs.getNString("primerApellido"));
        ventaDiaria.setCodigoProducto(rs.getNString("referncia"));
        ventaDiaria.setDescripcion(rs.getNString("descripcion"));
        ventaDiaria.setCantidad(rs.getInt("cantidad"));
        listaVentas.add(ventaDiaria);
      }
    } catch (SQLException ex) {
      Logger.getLogger(VentasDiariasDAO.class.getName()).log(Level.SEVERE, null, ex);
    }
    return listaVentas;
  }

}
