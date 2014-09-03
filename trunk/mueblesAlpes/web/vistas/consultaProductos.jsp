<%-- 
    Document   : consultaProductos
    Created on : 02-sep-2014, 8:29:21
    Author     : open12
--%>
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

  </head>

  <body>
    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.html">Muebles Los Alpes</a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <ul class="nav navbar-nav navbar-right">
            <li class="active"><a href="http://localhost:8084/mueblesAlpes/index.jsp">Inicio</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Administraci&oacute;n <span class="caret"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="http://localhost:8084/mueblesAlpes/vistas/creacionClientes.jsp">Creacion De Clientes</a></li>
                <li><a href="http://localhost:8084/mueblesAlpes/vistas/eliminacionClientes.jsp">Eliminar Cliente</a></li>
                <li><a href="http://localhost:8084/mueblesAlpes/vistas/consultarClientes.jsp">Consulta de Clientes</a></li>
              </ul>
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Productos <span class="caret"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="http://localhost:8084/mueblesAlpes/vistas/creacionProducto.jsp">Creacion De Productos</a></li>
                <li><a href="http://localhost:8084/mueblesAlpes/vistas/edicionProductos.jsp">Edicion De Productos</a></li>
                <li><a href="http://localhost:8084/mueblesAlpes/vistas/eliminacionProductos.jsp">Eliminacion De Productos</a></li>
                <li><a href="http://localhost:8084/mueblesAlpes/vistas/consultaProductos.jsp">Consulta De Productos</a></li>
                <li><a href="http://localhost:8084/mueblesAlpes/vistas/registroPreciosProductos.jsp">Registro De Precios</a></li>
              </ul>
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Reportes <span class="caret"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="http://localhost:8084/mueblesAlpes/vistas/ventasDiarias.jsp">Ventas Diarias</a></li>
                <li><a href="http://localhost:8084/mueblesAlpes/vistas/productomasVendido.jsp">Producto Mas Vendido</a></li>
                <li><a href="http://localhost:8084/mueblesAlpes/vistas/comprasporCliente.jsp">Compras Por Cliente</a></li>
                <li><a href="http://localhost:8084/mueblesAlpes/vistas/listadoProductos.jsp">Listado De Productos</a></li>
              </ul>
            </li>
            <li><a href="#">Ingresar</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-shopping-cart"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="#">Pagar</a></li>
              </ul>
            </li>
          </ul>
        </div>
        <!-- /.navbar-collapse -->
      </div>
      <!-- /.container -->
    </nav>
    <!-- Page Content -->
    <div class="container">

      <!-- Marketing Icons Section -->
      <div class="row">
        <form class="form-horizontal" role="form">
          <br>
          <fieldset>
            <legend>Consulta de Productos</legend>
            <div class="form-group">
                <div class="col-xs-6">
              <label for="idCodigo_Producto" class="col-lg-5 control-label">Codigo Producto</label>
              <div class="col-lg-7">
                  <input type="text" class="form-control" id="idCodigo_Producto"
                       placeholder="Codigo Producto">
              </div>
                </div>
              <div class="col-xs-6">
              <div class="col-lg-9">
                <button type="button" class="btn btn-default">
                  <span class="glyphicon glyphicon-search"> Buscar</span>
                </button>
              </div>
              </div>
            </div>
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

    <!-- jQuery Version 1.11.0 -->
    <script src="../js/jquery-1.11.0.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../js/bootstrap.min.js"></script>
  </body>

</html>
