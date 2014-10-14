<%-- 
    Document   : creacionProducto
    Created on : 1/09/2014, 02:44:53 PM
    Author     : davtor
--%>
<%
    String respuesta = request.getParameter("respuesta") == null ? "" : request.getParameter("respuesta");
    String producto = request.getParameter("producto") == null ? "" : request.getParameter("producto");
    String mensaje = request.getParameter("mensaje") == null ? "" : request.getParameter("mensaje");
    String productoId = request.getParameter("productoId") == null ? "" : request.getParameter("productoId");

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

        <title>Creacion de Producto</title>

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
        <style type="tect/css">
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
                    $.growlUI('<%=mensaje.toString()%>', '<%= producto.toString()%>');
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
                <legend> Mis Productos</legend>

                <form class="form-horizontal" role="form" action="../CreacionProductoServlet">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="codigo_mueble" class="col-lg-10 control-label">Codigo del mueble</label>
                            <div class="col-lg-12">
                                <input type="text" class="form-control" id="codigo_mueble"
                                       placeholder="codigo_producto" name="codigoP">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="nombre" class="col-lg-9 control-label">Nombre</label>
                            <div class="col-lg-12">
                                <input type="text" class="form-control" id="nombre"
                                       placeholder="sofa cama" name="nombre">
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label for="tipo_mueble" class="col-lg-10 control-label">Tipo de mueble</label>
                            <div class="col-lg-12">
                                <select class="form-control" name="idtipoMueble">
                                    <option>comedor</option>
                                    <option>sala extranjera</option>
                                    <option>bife</option>                
                                </select>
                            </div>
                        </div>
                    </div>             

                    <div class="col-md-1">
                        <div class="form-group">
                            <label for="cantidad" class="col-lg-10 control-label">Cantidad</label>
                            <div class="col-lg-12">
                                <input type="text" class="form-control" id="cantidad"
                                       placeholder="001" name="cantidad">
                            </div>
                        </div>
                    </div>
                    
                        <div class="form-group">
                            <div class="col-lg-offset-2 col-lg-10">
                                <button type="submit" class="btn btn-default">Aceptar</button>
                            </div>
                        </div>
                   
                </form>
            </fieldset>
        </div>
    </div>
    <%
    if(productoId!=""){
       %> 
       <script type="text/javascript">
           document.getElementById("codigo_mueble").value="11tt";
           document.getElementById("nombre").value="sofa cama";
           document.getElementById("cantidad").value="010";
       </script>
       <%
    }
    %>
</body>

</html>
