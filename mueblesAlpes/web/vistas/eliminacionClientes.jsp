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
    <link href="../librerias/css/integracion.css" rel="stylesheet">

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
    <script type="text/javascript" src="../librerias/DataTables-1.10.2/media/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="../librerias/js/integracion.js"></script>
    <script type="text/javascript" src="../js/menu.js"></script>
    <script type="text/javascript">
      $(document).ready(function() {
        $('#datatable').dataTable();
        f_LoadMenu();
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
        <form class="form-horizontal" role="form">
          <br>
          <fieldset>
            <legend>Eliminacion de Clientes</legend>
            <table class="table table-hover" cellspacing="0" width="100%" id="datatable">
              <thead>
                <tr>
                  <th style="width: 10%; text-align: center">Cedula</th>
                  <th style="width: 40%; text-align: center">Nombre</th>
                  <th style="width: 40%; text-align: center">Apellido</th>
                  <th style="width: 40%; text-align: center">#</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td style="width: 10%; text-align: center">
                    123456789
                  </td>
                  <td style="width: 10%; text-align: center">
                    Sebastian
                  </td>
                  <td style="width: 10%; text-align: center">
                    Rojas
                  </td>
                  <td style="width: 10%; text-align: center">
                    <input type="checkbox">
                  </td>
                </tr>
                <tr>
                  <td style="width: 10%; text-align: center">
                    987654321
                  </td>
                  <td style="width: 10%; text-align: center">
                    Ricardo
                  </td>
                  <td style="width: 10%; text-align: center">
                    Narvaez
                  </td>
                  <td style="width: 10%; text-align: center">
                    <input type="checkbox">
                  </td>
                </tr>
              </tbody>
            </table>
            <input type="submit" value="Eliminar" class="btn btn-default">
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