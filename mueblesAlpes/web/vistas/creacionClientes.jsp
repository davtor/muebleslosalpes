<%-- 
    Document   : creacionClientes
    Created on : 26/08/2014, 02:51:33 PM
    Author     : Administrador
--%>
<%@page import="com.mueblesAlpes.Beans.ClienteBean"%>
<%@page import="com.mueblesAlpes.DAO.ClientesDAO"%>
<%
  String respuesta = request.getParameter("respuesta") == null ? "" : request.getParameter("respuesta");
  String cliente = request.getParameter("cliente") == null ? "" : request.getParameter("cliente");
  String mensaje = request.getParameter("mensaje") == null ? "" : request.getParameter("mensaje");
  String id = request.getParameter("id") == null ? "" : request.getParameter("id");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Creacion de Clientes</title>

    <!-- Bootstrap Core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../css/modern-business.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <!-- jQuery Version 1.11.0 -->
    <script src="../js/jquery-1.11.0.js"></script>
    <script src="../librerias/js/blockUI.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../js/menu.js"></script>
    <style type="text/css">
      div.growlUI { background: url(../imagenes/check48.png) no-repeat 10px 10px}
      div.growlUI h1, div.growlUI h2 {
        color: white; 
        padding: 20px 5px 5px 75px; 
        text-align: left; 
        font: 200% sans-serif; 
      }
    </style>
    <script type="text/javascript">
      $(document).ready(function() {
        f_LoadMenu();
        if ("<%= respuesta.toString()%>" === "si") {
          $.growlUI('<%=mensaje.toString()%>', '<%= cliente.toString()%>')
          $.blockUI({
            message: $('div.growlUI'),
            fadeIn: 700,
            fadeOut: 700,
            timeout: 2000,
            showOverlay: false,
            centerY: false,
            css: {
              width: '350px',
              top: '60px',
              left: '',
              right: '10px',
              border: 'none',
              padding: '5px',
              backgroundColor: '#000',
              '-webkit-border-radius': '10px',
              '-moz-border-radius': '10px',
              opacity: .6,
              color: '#fff'
            }
          });
        }
      });
    </script>
  </head>

  <body>
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container" id="cabecera">
      </div>
      <!-- /.container -->
    </nav>
    <!-- Page Content -->
    <div class="container">
      <div class="row">
        <br>
        <fieldset> 
          <legend> Mis datos</legend>

          <form class="form-horizontal" role="form" method="POST" action="../creacionClientesServlet">
            <div class="row">
              <div class="col-md-6">
                <div class="form-group">
                  <label for="primer_nombre" class="col-lg-3 control-label">Primer nombre</label>
                  <div class="col-lg-9">
                    <input type="text" class="form-control" id="primer_nombre"
                           placeholder="Primer_nombre" name="primerNombre">
                  </div>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-group">
                  <label for="segundo_nombre" class="col-lg-4 control-label">Segundo nombre</label>
                  <div class="col-lg-8">
                    <input type="text" class="form-control" id="Segundo_nombreo"
                           placeholder="Segundo_nombre" name="segundoNombre">
                  </div>
                </div>
              </div>                     
              <div class="col-md-6">
                <div class="form-group">
                  <label for="primer_apellido" class="col-lg-3 control-label">Primer apellido</label>
                  <div class="col-lg-9">
                    <input type="text" class="form-control" id="primer_apellido"
                           placeholder="Primer apellido" name="primerApellido">
                  </div>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-group">
                  <label for="segundo_apellido" class="col-lg-4 control-label">Segundo apellido</label>
                  <div class="col-lg-8">
                    <input type="text" class="form-control" id="segundo_apellido"
                           placeholder="Segundo apellido" name="segundoApellido">
                  </div>
                </div>      
              </div>
              <div class="col-md-4">
                <div class="form-group">
                  <label for="tipo_de_documento" class="col-lg-5 control-label">Tipo documento</label>
                  <div class="col-lg-7">
                    <select class="form-control" name="idTipoDocumento"> 
                      <option value="1">cedula de ciudadania</option>
                      <option value="2">cedula extranjera</option>
                      <option value="3">pasaporte</option>                
                    </select>
                  </div>
                </div>
              </div>
              <div class="col-md-4">
                <div class="form-group">
                  <label for="numero_de_documento" class="col-lg-4 control-label">N° documento</label>
                  <div class="col-lg-8">
                    <input type="text" class="form-control" id="numero_de_documento"
                           placeholder="Numero de documento" name="numeroDocumento">
                  </div>
                </div>
              </div>
              <div class="col-md-4">
                <div class="form-group">
                  <label for="numero_de_telefono" class="col-lg-5 control-label">Numero de telefono</label>
                  <div class="col-lg-7">
                    <input type="text" class="form-control" id="numero_de_telefono"
                           placeholder="Numero de telefono" name="numeroTelefono">
                  </div>
                </div>
              </div> 
              <div class="col-md-4">
                <div class="form-group">
                  <label for="numero_de_celular" class="col-lg-5 control-label">Numero de celular</label>
                  <div class="col-lg-7">
                    <input type="text" class="form-control" id="numero_de_celular"
                           placeholder="Numero de celular" name="numeroCelular">
                  </div>
                </div>
              </div> 
              <div class="col-md-4">
                <div class="form-group">
                  <label for="direccion" class="col-lg-5 control-label">Direccion</label>
                  <div class="col-lg-7">
                    <input type="text" class="form-control" id="direccion"
                           placeholder="direccion" name="direccion">
                  </div>
                </div>
              </div> 
              <div class="col-md-4">
                <div class="form-group">
                  <label for="ciudad" class="col-lg-5 control-label">Ciudad</label>
                  <div class="col-lg-7">
                    <input type="text" class="form-control" id="ciudad"
                           placeholder="bogota" name="ciudad">
                  </div>
                </div>
              </div>
              <div class="col-md-4">
                <div class="form-group">
                  <label for="departamento" class="col-lg-5 control-label">Departamento</label>
                  <div class="col-lg-7">
                    <input type="text" class="form-control" id="departamento"
                           placeholder="Cundinamarca" name="departamento">
                  </div>
                </div>
              </div>
              <div class="col-md-4">
                <div class="form-group">
                  <label for="pais" class="col-lg-5 control-label">Pais</label>
                  <div class="col-lg-7">
                    <input type="text" class="form-control" id="pais"
                           placeholder="Colombia" name="pais">
                  </div>
                </div>
              </div>
              <div class="col-md-4">
                <div class="form-group">
                  <label for="profesion" class="col-lg-5 control-label">Profesion</label>
                  <div class="col-lg-7">
                    <input type="text" class="form-control" id="profesion"
                           placeholder="profesion" name="profesion">
                  </div>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-group">
                  <label for="ejemplo_email_3" class="col-lg-2 control-label">Email</label>
                  <div class="col-lg-10">
                    <input type="email" class="form-control" id="email"
                           placeholder="Email" name="email">
                  </div> 
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-group">
                  <label for="ejemplo_password_3" class="col-lg-4 control-label">Contraseña</label>
                  <div class="col-lg-8">
                    <input type="password" class="form-control" id="ejemplo_password_3" 
                           placeholder="Contrasena" name="contrasena">
                  </div>
                </div>
              </div>

              <div class="form-group">
                <div class="col-lg-offset-2 col-lg-10">
                  <button type="submit" class="btn btn-default" id="aceptar">Aceptar</button>
                </div>
              </div>
            </div> 
          </form>
        </fieldset>
      </div>
    </div>
    <%
      if (id != "") {
        ClientesDAO clientedao = new ClientesDAO();
        ClienteBean clientes = clientedao.getClientePorNumeroDocumento(id);
        if (clientes == null) {
    %>
    <script type="text/javascript">
      alert("No se encontro el cliente");
    </script>
    <%
      }
    %>
    <script type="text/javascript">
      document.getElementById("primer_nombre").value = "<%=clientes.getPrimerNombre()%>";
      document.getElementById("Segundo_nombreo").value = "<%=clientes.getSegundoNombre()%>";
      document.getElementById("primer_apellido").value = "<%=clientes.getPrimerApellido()%>";
      document.getElementById("segundo_apellido").value = "<%=clientes.getSegundoApellido()%>";
      document.getElementById("numero_de_documento").value = "<%=clientes.getNumeroDocumento()%>";
      document.getElementById("numero_de_telefono").value = "<%=clientes.getNumeroTelefono()%>";
      document.getElementById("numero_de_celular").value = "<%=clientes.getNumeroCelular()%>";
      document.getElementById("direccion").value = "<%=clientes.getDireccion()%>";
      document.getElementById("ciudad").value = "<%=clientes.getCiudad()%>";
      document.getElementById("departamento").value = "<%=clientes.getDepartamento()%>";
      document.getElementById("pais").value = "<%=clientes.getPais()%>";
      document.getElementById("profesion").value = "<%=clientes.getProfesion()%>";
      document.getElementById("email").value = "<%=clientes.getEmail()%>";
      $("#aceptar").hide();
    </script>
    <%
      }
    %>
  </body>
</html>
