package com.mueblesAlpes.DAO;

import com.mueblesAlpes.Beans.ClienteBean;
import com.mueblesAlpes.Conexion.conexionBD;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

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

}
