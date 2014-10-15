<%-- 
    Document   : registroPrecios
    Created on : 02-sep-2014, 8:29:21
    Author     : open12
--%>
<%
  String respuesta = request.getParameter("respuesta") == null ? "" : request.getParameter("respuesta");
  String mensaje = request.getParameter("mensaje") == null ? "" : request.getParameter("mensaje");

%>
<!DOCTYPE html>
<html lang="es">

  <head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Muebles Los Alpes</title>

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

    <!-- Bootstrap Core JavaScript -->
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/jquery-1.11.0.js"></script>
    <script src="../librerias/js/blockUI.js"></script>
    <style type="tect/css">
      div.growlUI { background: url(../imagenes/check48.png) no-repeat 10px 10px}
      div.growlUI h1, div.growlUI h2 {
        color: white; 
        padding: 20px 5px 5px 75px; 
        text-align: left; 
        font: 200% sans-serif; 
      }
    </style>
    <script type="text/javascript" src="../js/menu.js"></script>
    <script type="text/javascript">
      $(document).ready(function() {
        f_LoadMenu();
        if ("<%= respuesta.toString()%>" === "si") {
          $.growlUI('<%=mensaje.toString()%>');
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
    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container" id="cabecera">
      </div>
      <!-- /.container -->
    </nav>
    <!-- Page Content -->
    <div class="container">

      <!-- Marketing Icons Section -->
      <div class="row">
        <form class="form-horizontal" role="form" action="../RegistroPreciosProductosServlet" method="POST">
          <br>
          <fieldset>
            <legend>Registro de Precios</legend>
            <table class="table table-hover">
              <thead>
                <tr>
                  <th style="width: 10%; text-align: center">Codigo</th>
                  <th style="width: 30%; text-align: center">Nombre</th>
                  <th style="width: 10%; text-align: center">Tipo de Mueble</th>
                  <th style="width: 10%; text-align: center">cantidad</th>
                  <th style="width: 20%; text-align: center">Precio Entrada</th>
                  <th style="width: 20%; text-align: center">Precio Venta</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td style="width: 10%; text-align: center">
                    ASC
                  </td>
                  <td style="width: 30%; text-align: center">
                    SOFA
                  </td>
                  <td style="width: 10%; text-align: center">
                    SALA
                  </td>
                  <td style="width: 10%; text-align: center">
                    1
                  </td>
                  <td style="width: 20%; text-align: center">
                    <input type="text" name="valor" value="250000"> 
                  </td>
                  <td style="width: 20%; text-align: center">
                    <input type="text" name="valor" value="350000"> 
                  </td>
                  <td style="width: 5%; text-align: center">
                    <input type="checkbox">
                  </td>
                </tr>
                <tr>
                  <td style="width: 10%; text-align: center">
                    ASC123
                  </td>
                  <td style="width: 30%; text-align: center">
                    SOFACAMA
                  </td>
                  <td style="width: 20%; text-align: center">
                    ALCOBA
                  </td>
                  <td style="width: 10%; text-align: center">
                    2
                  </td>
                  <td style="width: 20%; text-align: center">
                    <input type="text" name="valor" value="400000"> 
                  </td>
                  <td style="width: 20%; text-align: center">
                    <input type="text" name="valor" value="600000">  
                  </td>
                  <td style="width: 5%; text-align: center">
                    <input type="checkbox">
                  </td>
                </tr>
              </tbody>
            </table>
            <input type="submit" value="Editar" class="btn btn-default">
          </fieldset>
        </form>
      </div>
      <!-- /.row -->

      <!-- Footer -->
      <footer>
        <div class="row">
          <div class="col-lg-12">
            <p>Copyright &copy; Your Website 2014</p>
          </div>
        </div>
      </footer>

    </div>
    <!-- /.container -->

  </body>

</html>
