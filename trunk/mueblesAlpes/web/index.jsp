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
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/modern-business.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <!--<script type="text/javascript" src="js/jquery.cookie.js"></script>-->

    <!-- jQuery Version 1.11.0 -->
    <script src="js/jquery-1.11.0.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/carritoCompras.js"></script>
    <script type="text/javascript" src="js/menu.js"></script>
    <script type="text/javascript">
      $(document).ready(function() {
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

    <!-- Header Carousel -->
    <header id="myCarousel" class="carousel slide">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>

      <!-- Wrapper for slides -->
      <div class="carousel-inner">
        <div class="item active">
          <div class="fill" style="background-image:url('http://www.lombanacosta.com/images/muebles.jpg');"></div>
          <div class="carousel-caption">
            <h2>Caption 1</h2>
          </div>
        </div>
        <div class="item">
          <div class="fill" style="background-image:url('http://3.bp.blogspot.com/-acsOrTkTKUU/UUCz_1QtwKI/AAAAAAAAN4A/iLwUqGnGL5U/s1600/Lindos+Muebles+para+una+Sala+de+Estar+Pequen%CC%83a+-+Small+Living+Room+10.jpg');"></div>
          <div class="carousel-caption">
            <h2>Caption 2</h2>
          </div>
        </div>
        <div class="item">
          <div class="fill" style="background-image:url('http://www.mueblesjamar.com.pa/Salas/muebles-sala-contemporanea-matrix-2.jpg');"></div>
          <div class="carousel-caption">
            <h2>Caption 3</h2>
          </div>
        </div>
      </div>

      <!-- Controls -->
      <a class="left carousel-control" href="#myCarousel" data-slide="prev">
        <span class="icon-prev"></span>
      </a>
      <a class="right carousel-control" href="#myCarousel" data-slide="next">
        <span class="icon-next"></span>
      </a>
    </header>

    <!-- Page Content -->
    <div class="container">

      <!-- Marketing Icons Section -->
      <div class="row">
        <div class="col-lg-12">
          <h1 class="page-header">
            Welcome to Modern Business
          </h1>
        </div>
        <div class="col-md-4">
          <div class="panel panel-default">
            <div class="panel-heading">
              <h4><i class="fa fa-fw fa-check"></i> Bootstrap v3.2.0</h4>
            </div>
            <div class="panel-body">
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, optio corporis quae nulla aspernatur in alias at numquam rerum ea excepturi expedita tenetur assumenda voluptatibus eveniet incidunt dicta nostrum quod?</p>
              <a href="#" class="btn btn-default">Learn More</a>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="panel panel-default">
            <div class="panel-heading">
              <h4><i class="fa fa-fw fa-gift"></i> Free &amp; Open Source</h4>
            </div>
            <div class="panel-body">
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, optio corporis quae nulla aspernatur in alias at numquam rerum ea excepturi expedita tenetur assumenda voluptatibus eveniet incidunt dicta nostrum quod?</p>
              <a href="#" class="btn btn-default">Learn More</a>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="panel panel-default">
            <div class="panel-heading">
              <h4><i class="fa fa-fw fa-compass"></i> Easy to Use</h4>
            </div>
            <div class="panel-body">
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, optio corporis quae nulla aspernatur in alias at numquam rerum ea excepturi expedita tenetur assumenda voluptatibus eveniet incidunt dicta nostrum quod?</p>
              <a href="#" class="btn btn-default">Learn More</a>
            </div>
          </div>
        </div>
      </div>
      <!-- /.row -->

      <!-- Portfolio Section -->
      <div class="row">
        <div class="col-lg-12">
          <h2 class="page-header">Portafolio Productos</h2>
        </div>
        <div class="col-md-4 col-sm-6">
          <img id="cama" class="img-responsive img-portfolio img-hover" src="http://localhost:8080/mueblesAlpes/imagenes/cama.jpeg" alt="">
          <div class="caption">
            <h3>Cama</h3>
            <button type="button" class="btn btn-default" onclick="f_setCookie('cama')">
              <span class="glyphicon glyphicon-plus-sign" id="camaI"> Comprar</span>
            </button>
          </div>
        </div>
        <div class="col-md-4 col-sm-6">
          <img id="sofa" class="img-responsive img-portfolio img-hover" src="http://localhost:8080/mueblesAlpes/imagenes/sofa.jpeg" alt="">
          <div class="caption">
            <h3>Sofa</h3>
            <button type="button" class="btn btn-default" onclick="f_setCookie('sofa')">
              <span class="glyphicon glyphicon-plus-sign" id="sofaI"> Comprar</span>
            </button>
          </div>
        </div>
        <div class="col-md-4 col-sm-6">
          <img id="comedor" class="img-responsive img-portfolio img-hover" src="http://localhost:8080/mueblesAlpes/imagenes/comedor.jpg" alt="">
          <div class="caption">
            <h3>Comedor</h3>
            <button type="button" class="btn btn-default" onclick="f_setCookie('comedor')">
              <span class="glyphicon glyphicon-plus-sign" id="comedorI"> Comprar</span>
            </button>
          </div>
        </div>
        <div class="col-md-4 col-sm-6">
          <img id="juegoSala" class="img-responsive img-portfolio img-hover" src="http://localhost:8080/mueblesAlpes/imagenes/juegoSala.jpg" alt="">
          <div class="caption">
            <h3>Juego de Sala</h3>
            <button type="button" class="btn btn-default" onclick="f_setCookie('juegoSala')">
              <span class="glyphicon glyphicon-plus-sign" id="juegoSalaI"> Comprar</span>
            </button>
          </div>
        </div>
        <div class="col-md-4 col-sm-6">
          <img id="ordenador" class="img-responsive img-portfolio img-hover" src="http://localhost:8080/mueblesAlpes/imagenes/ordenador.jpg" alt="">
          <div class="caption">
            <h3>Ordenador</h3>
            <button type="button" class="btn btn-default" onclick="f_setCookie('ordenador')">
              <span class="glyphicon glyphicon-plus-sign" id="ordenadorI"> Comprar</span>
            </button>
          </div>
        </div>
        <div class="col-md-4 col-sm-6">
          <img id="silla" class="img-responsive img-portfolio img-hover" src="http://localhost:8080/mueblesAlpes/imagenes/silla.jpg" alt="">
          <div class="caption">
            <h3>Silla</h3>
            <button type="button" class="btn btn-default" onclick="f_setCookie('silla')">
              <span class="glyphicon glyphicon-plus-sign" id="sillaI"> Comprar</span>
            </button>
          </div>
        </div>
      </div>
      <!-- /.row -->

      <!-- Features Section -->
      <div class="row">
        <div class="col-lg-12">
          <h2 class="page-header">Modern Business Features</h2>
        </div>
        <div class="col-md-6">
          <p>The Modern Business template by Start Bootstrap includes:</p>
          <ul>
            <li><strong>Bootstrap v3.2.0</strong>
            </li>
            <li>jQuery v1.11.0</li>
            <li>Font Awesome v4.1.0</li>
            <li>Working PHP contact form with validation</li>
            <li>Unstyled page elements for easy customization</li>
            <li>17 HTML pages</li>
          </ul>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis, omnis doloremque non cum id reprehenderit, quisquam totam aspernatur tempora minima unde aliquid ea culpa sunt. Reiciendis quia dolorum ducimus unde.</p>
        </div>
        <div class="col-md-6">
          <img class="img-responsive" src="http://placehold.it/700x450" alt="">
        </div>
      </div>
      <!-- /.row -->

      <hr>

      <!-- Call to Action Section -->
      <div class="well">
        <div class="row">
          <div class="col-md-8">
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias, expedita, saepe, vero rerum deleniti beatae veniam harum neque nemo praesentium cum alias asperiores commodi.</p>
          </div>
          <div class="col-md-4">
            <a class="btn btn-lg btn-default btn-block" href="#">Call to Action</a>
          </div>
        </div>
      </div>

      <hr>

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


    <!-- Script to Activate the Carousel -->
    <script>
      $('.carousel').carousel({
        interval: 5000 //changes the speed
      });
    </script>

  </body>

</html>