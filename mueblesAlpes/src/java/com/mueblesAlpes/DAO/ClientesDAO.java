package com.mueblesAlpes.DAO;

import com.mueblesAlpes.Beans.ClienteBean;
import com.mueblesAlpes.Conexion.conexionBD;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Sebastian rojas - David Toro
 *
 */
public class ClientesDAO extends IDAO {

    private Connection conn = null;

    public ClientesDAO() throws SQLException {
        this.conn = conexionBD.obtenerConexion();
    }

    public boolean guardar(ClienteBean cliente) {
        String qCliente = "INSERT INTO clientes (idClientes, primerNombre, segundoNombre, primerApellido, segundoApellido, idTipoDocumentos, numeroDocumento, numeroTelefono, numeroCelular, direccion, ciudad, departamento, pais, profesion, email, contrasena) VALUES(NULL,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        Statement ps = null;
        try {
//            http://tutorials.jenkov.com/jdbc/preparedstatement.html
            PreparedStatement pstmt = conn.prepareStatement(qCliente);
            pstmt.setString(1, cliente.getPrimerNombre());
            pstmt.setString(2, cliente.getSegundoNombre());
            pstmt.setString(3, cliente.getPrimerApellido());
            pstmt.setString(4, cliente.getSegundoApellido());
            pstmt.setInt(5, cliente.getIdTipoDocumento());
            pstmt.setInt(6, cliente.getNumeroDocumento());
            pstmt.setInt(7, cliente.getNumeroTelefono());
            pstmt.setString(8, cliente.getNumeroCelular());
            pstmt.setString(9, cliente.getDireccion());
            pstmt.setString(10, cliente.getCiudad());
            pstmt.setString(11, cliente.getDepartamento());
            pstmt.setString(12, cliente.getPais());
            pstmt.setString(13, cliente.getProfesion());
            pstmt.setString(14, cliente.getEmail());
            pstmt.setString(15, cliente.getContrasena());
            pstmt.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        } finally {

        }
        return true;
    }

    public ArrayList<ClienteBean> getClientes() {
        ArrayList<ClienteBean> clientes = new ArrayList<ClienteBean>();
        String qQuery = "SELECT * FROM clientes ";
        try {
            PreparedStatement pstmt = conn.prepareStatement(qQuery);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                ClienteBean cliente = new ClienteBean();
                cliente.setIdCliente(rs.getInt("idClientes"));
                cliente.setPrimerNombre(rs.getNString("primerNombre"));
                cliente.setSegundoNombre(rs.getNString("segundoNombre"));
                cliente.setPrimerApellido(rs.getNString("primerApellido"));
                cliente.setSegundoApellido(rs.getNString("segundoApellido"));
                cliente.setIdTipoDocumento(rs.getInt("idTipoDocumentos"));
                cliente.setNumeroDocumento(rs.getInt("numeroDocumento"));
                cliente.setNumeroTelefono(rs.getInt("numeroTelefono"));
                cliente.setNumeroCelular(rs.getNString("numeroCelular"));
                cliente.setDireccion(rs.getNString("direccion"));
                cliente.setCiudad(rs.getNString("ciudad"));
                cliente.setDepartamento(rs.getNString("departamento"));
                cliente.setPais(rs.getNString("pais"));
                cliente.setProfesion(rs.getNString("profesion"));
                cliente.setEmail(rs.getNString("email"));
                cliente.setContrasena(rs.getNString("contrasena"));
                clientes.add(cliente);
            }

        } catch (SQLException ex) {
            Logger.getLogger(ClientesDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return clientes;
    }

    public boolean borrar(int idCliente) {
        String qQuery = "DELETE FROM clientes WHERE idClientes = ? ";
        try {
            PreparedStatement pstmt = conn.prepareStatement(qQuery);
            pstmt.setInt(1, idCliente);
            pstmt.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ClientesDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return true;
    }

}
