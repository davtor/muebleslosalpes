<%-- 
    Document   : creacionProducto
    Created on : 1/09/2014, 02:44:53 PM
    Author     : davtor
--%>

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

    </head>
    <body>
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">

            <!-- /.container -->
        </nav>

        <!-- Page Content -->
        <div class="container">
            <div class="row">
                <br>
                <fieldset> 
                    <legend> Mis Productos</legend>

                    <form class="form-horizontal" role="form">
                        <div class="col-xs-5">
                            <div class="form-group">
                                <label for="codigo_mueble" class="col-lg-2 control-label">Codigo del mueble</label>
                                <div class="col-lg-9">
                                    <input type="text" class="form-control" id="codigo_mueble"
                                           placeholder="codigo_producto">
                                </div>
                            </div>
                        </div>

                        <div class="col-xs-3">
                            <div class="form-group">
                                <label for="tipo_de_mueble" class="col-lg-2 control-label">Tipo de mueble</label>
                                <div class="col-lg-10">
                                    <select class="form-control">
                                        <option>comedor</option>
                                        <option>sala extranjera</option>
                                        <option>bife</option>                
                                    </select>
                                </div>
                            </div>
                        </div>             


                        <div class="col-xs-5">
                            <div class="form-group">
                                <label for="nombre_s" class="col-lg-2 control-label">Nombre</label>
                                <div class="col-lg-9">
                                    <input type="text" class="form-control" id="nombre_s"
                                           placeholder="Nombre(s)">
                                </div>
                            </div>
                        </div>

                        <div class="col-xs-4">
                            <div class="form-group">
                                <label for="precio_de_entrada" class="col-lg-2 control-label">Precio de entrada</label>
                                <div class="col-lg-10">
                                    <input type="text" class="form-control" id="precio_de_entrada"
                                           placeholder="$000000">
                                </div>
                            </div>
                        </div>

                        <div class="col-xs-4">
                            <div class="form-group">
                                <label for="precio_de_venta" class="col-lg-2 control-label">precio de Venta</label>
                                <div class="col-lg-10">
                                    <input type="text" class="form-control" id="precio_de_venta"
                                           placeholder="$000000">
                                </div>
                            </div>
                        </div>

                    </form>
                </fieldset>
            </div>
        </div>
    </body>
</html>
