<%-- 
    Document   : creacionProducto
    Created on : 1/09/2014, 02:44:53 PM
    Author     : davtor
 String idProducto = request.getParameter("idProducto") == null ? "" : request.getParameter("idProducto");
--%>
<%@page import="com.mueblesAlpes.Beans.ProductoBean" %>
<%@page import="com.mueblesAlpes.DAO.ProductosDAO"%>
<%
    String respuesta = request.getParameter("respuesta") == null ? "" : request.getParameter("respuesta");
    String producto = request.getParameter("producto") == null ? "" : request.getParameter("producto");
    String mensaje = request.getParameter("mensaje") == null ? "" : request.getParameter("mensaje");
    String idProducto = request.getParameter("idProducto") == null ? "" : request.getParameter("idProducto");
    String edicion = request.getParameter("edicion") == null ? "" : request.getParameter("edicion");
    ProductoBean productoP = new ProductoBean();
    ProductosDAO productodao = new ProductosDAO();
    productoP = productodao.getProductoPorReferencia(idProducto);
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
            $(document).ready(function () {
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

                <form class="form-horizontal" role="form" method="POST" action="../CreacionProductoServlet">
                    <input value="<%=edicion%>" name="edicion" type="hidden">
                    <div class="col-md-1">
                        <div class="form-group">
                            <label for="codigo_mueble" class="col-lg-10 control-label">Refencia</label>
                            <div class="col-lg-12">
                                <input type="text" class="form-control" id="codigo_mueble"
                                       placeholder="codigo_producto" name="codigoP">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <label for="nombre" class="col-lg-9 control-label">Nombre</label>
                            <div class="col-lg-12">
                                <input type="text" class="form-control" id="nombre"
                                       placeholder="sofa cama" name="nombre">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <label for="descripcion" class="col-lg-9 control-label">Descripcion</label>
                            <div class="col-lg-12">
                                <input type="text" class="form-control" id="descripcion"
                                       placeholder="cama de roble extra fina" name="descripcion">
                            </div>
                        </div>
                    </div>      
                    <div class="col-md-2">
                        <div class="form-group">
                            <label for="tipo_mueble" class="col-lg-10 control-label">Tipo</label>
                            <div class="col-lg-12">
                                <select class="form-control" name="tipo">
                                    <option>Interior</option>
                                    <option>Exterior</option>               
                                </select>
                            </div>
                        </div>
                    </div>  
                    <div class="col-md-1">
                        <div class="form-group">
                            <label for="material" class="col-lg-9 control-label">Material</label>
                            <div class="col-lg-12">
                                <input type="text" class="form-control" id="material"
                                       placeholder="roble" name="material">
                            </div>
                        </div>
                    </div>  
                    <div class="col-md-2">
                        <div class="form-group">
                            <label for="dimencion" class="col-lg-9 control-label">Dimencion</label>
                            <div class="col-lg-12">
                                <input type="text" class="form-control" id="dimencion"
                                       placeholder="2.30 m x 2.00 m " name="dimencion">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-1">
                        <div class="form-group">
                            <label for="color" class="col-lg-9 control-label">Color</label>
                            <div class="col-lg-12">
                                <input type="text" class="form-control" id="color"
                                       placeholder="cafe" name="color">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-1">
                        <div class="form-group">
                            <label for="peso" class="col-lg-9 control-label">Peso</label>
                            <div class="col-lg-12">
                                <input type="text" class="form-control" id="peso"
                                       placeholder="20 Kilos" name="peso">
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-lg-offset-2 col-lg-10">
                            <button type="submit" class="btn btn-default" id="aceptar">
                                <%
                                if(edicion.length() == 0) {
                                    %>
                                    Aceptar
                                    <%
                                } else {
                                    %>
                                    Editar
                                    <%
                                }
                                %>
                            </button>
                        </div>
                    </div>

                </form>
            </fieldset>
        </div>
    </div>
    <%
        if (idProducto != "") {
    %> 
    <script type="text/javascript">
        document.getElementById("codigo_mueble").value = "<%=productoP.getCodigoP()%>";
        document.getElementById("nombre").value = "<%=productoP.getNombre()%>";
        document.getElementById("descripcion").value = "<%=productoP.getDescripcion()%>";
        document.getElementById("material").value = "<%=productoP.getMaterial()%>";
        document.getElementById("dimencion").value = "<%=productoP.getDimencion()%>";
        document.getElementById("color").value = "<%=productoP.getColor()%>";
        document.getElementById("peso").value = "<%=productoP.getPeso()%>";
        $("#aceptar").hide();
    </script>
    <%
        }
        if(edicion.length() != 0) {
            %>
            $("#aceptar").show();
            <%
        }
    %>

</body>

</html>
