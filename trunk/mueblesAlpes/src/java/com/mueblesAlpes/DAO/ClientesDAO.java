package com.mueblesAlpes.DAO;

import com.mueblesAlpes.Beans.ClienteBean;
import com.mueblesAlpes.Conexion.conexionBD;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Administrador
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
            ResultSet result = pstmt.executeQuery();

//            ResultSet rs = ps.executeQuery(sql);
//            while (rs.next()) {
//                System.out.println("mire: " + rs.getNString("nombre"));
//            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        } finally {
        }
        return true;
    }

}
