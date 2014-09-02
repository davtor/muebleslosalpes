<%-- 
    Document   : creacionClientes
    Created on : 26/08/2014, 02:51:33 PM
    Author     : Administrador
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
                        <li class="active"><a href="http://localhost:8089/mueblesAlpes/index.jsp">Inicio</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Administraci&oacute;n <span class="caret"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="http://localhost:8089/mueblesAlpes/vistas/creacionClientes.jsp">Creacion De Clientes</a></li>
                                <li><a href="http://localhost:8089/mueblesAlpes/vistas/eliminacionClientes.jsp">Eliminar Cliente</a></li>
                                <li><a href="http://localhost:8089/mueblesAlpes/vistas/consultarClientes.jsp">Consulta de Clientes</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Productos <span class="caret"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="http://localhost:8089/mueblesAlpes/vistas/creacionProducto.jsp">Creacion De Productos</a></li>
                                <li><a href="http://localhost:8089/mueblesAlpes/vistas/edicionProductos.jsp">Edicion De Productos</a></li>
                                <li><a href="http://localhost:8089/mueblesAlpes/vistas/eliminacionProductos.jsp">Eliminacion De Productos</a></li>
                                <li><a href="http://localhost:8089/mueblesAlpes/vistas/consultaProductos.jsp">Consulta De Productos</a></li>
                                <li><a href="http://localhost:8089/mueblesAlpes/vistas/registroPreciosProductos.jsp">Registro De Precios</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Reportes <span class="caret"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="http://localhost:8089/mueblesAlpes/vistas/ventasDiarias.jsp">Ventas Diarias</a></li>
                                <li><a href="http://localhost:8089/mueblesAlpes/vistas/productomasVendido.jsp">Producto Mas Vendido</a></li>
                                <li><a href="http://localhost:8089/mueblesAlpes/vistas/comprasporCliente.jsp">Compras Por Cliente</a></li>
                                <li><a href="http://localhost:8089/mueblesAlpes/vistas/listadoProductos.jsp">Listado De Productos</a></li>
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
            <div class="row">
                <br>
                <fieldset> 
                    <legend> Mis datos</legend>

                    <form class="form-horizontal" role="form">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="nombre_s" class="col-lg-2 control-label">Nombre(s) </label>
                                    <div class="col-lg-9">
                                        <input type="text" class="form-control" id="nombre_s"
                                               placeholder="Nombre(s)">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="primer_apellido" class="col-lg-3 control-label">Primer apellido</label>
                                <div class="col-lg-9">
                                    <input type="text" class="form-control" id="primer_apellido"
                                           placeholder="Primer apellido">
                                </div>
                            </div>
                            </div>
                        </div>

                        <div class="col-xs-5">
                            <div class="form-group">
                                <label for="nombre_s" class="col-lg-2 control-label">Nombre(s) </label>
                                <div class="col-lg-9">
                                    <input type="text" class="form-control" id="nombre_s"
                                           placeholder="Nombre(s)">
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-4">
                            <div class="form-group">
                                <label for="primer_apellido" class="col-lg-2 control-label">Primer apellido</label>
                                <div class="col-lg-10">
                                    <input type="text" class="form-control" id="primer_apellido"
                                           placeholder="Primer apellido">
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-4">
                            <div class="form-group">
                                <label for="segundo_apellido" class="col-lg-2 control-label">Segundo apellido</label>
                                <div class="col-lg-10">
                                    <input type="text" class="form-control" id="segundo_apellido"
                                           placeholder="Segundo apellido">
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-3">
                            <div class="form-group">
                                <label for="tipo_de_documento" class="col-lg-2 control-label">Tipo documento</label>
                                <div class="col-lg-10">
                                    <select class="form-control">
                                        <option>cedula de ciudadania</option>
                                        <option>cedula extranjera</option>
                                        <option>pasaporte</option>                
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-4">
                            <div class="form-group">
                                <label for="numero_de_documento" class="col-lg-2 control-label">N° documento</label>
                                <div class="col-lg-10">
                                    <input type="text" class="form-control" id="numero_de_documento"
                                           placeholder="Numero de documento">
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="numero_de_celular" class="col-lg-2 control-label">Numero de celular</label>
                            <div class="col-lg-10">
                                <input type="text" class="form-control" id="numero_de_celular"
                                       placeholder="Numero de celular">
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="ejemplo_email_3" class="col-lg-2 control-label">Email</label>
                            <div class="col-lg-10">
                                <input type="email" class="form-control" id="ejemplo_email_3"
                                       placeholder="Email">
                            </div> 
                        </div>


                        <div class="form-group">   
                            <label for="FechaNacimiento" class="col-lg-2 control-label">Fecha de Nacimiento</label>
                            <div class="col-lg-10">
                                <select data-val="true" data-val-number="The field DiaNacimiento must be a number." id="dia_nacimiento" name="dia_nacimiento"><option value="">Día</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                    <option value="6">6</option>
                                    <option value="7">7</option>
                                    <option value="8">8</option>
                                    <option value="9">9</option>
                                    <option value="10">10</option>
                                    <option value="11">11</option>
                                    <option value="12">12</option>
                                    <option value="13">13</option>
                                    <option value="14">14</option>
                                    <option value="15">15</option>
                                    <option value="16">16</option>
                                    <option value="17">17</option>
                                    <option value="18">18</option>
                                    <option value="19">19</option>
                                    <option value="20">20</option>
                                    <option value="21">21</option>
                                    <option value="22">22</option>
                                    <option value="23">23</option>
                                    <option value="24">24</option>
                                    <option value="25">25</option>
                                    <option value="26">26</option>
                                    <option value="27">27</option>
                                    <option value="28">28</option>
                                    <option value="29">29</option>
                                    <option value="30">30</option>
                                    <option value="31">31</option>
                                </select>

                                <select data-val="true" data-val-number="The field MesNacimiento must be a number." id="MesNacimiento" name="MesNacimiento"><option value="">Mes</option>
                                    <option value="1">enero</option>
                                    <option value="2">febrero</option>
                                    <option value="3">marzo</option>
                                    <option value="4">abril</option>
                                    <option value="5">mayo</option>
                                    <option value="6">junio</option>
                                    <option value="7">julio</option>
                                    <option value="8">agosto</option>
                                    <option value="9">septiembre</option>
                                    <option value="10">octubre</option>
                                    <option value="11">noviembre</option>
                                    <option value="12">diciembre</option>
                                </select>

                                <select data-val="true" data-val-number="The field AnioNacimiento must be a number." id="AnioNacimiento" name="AnioNacimiento"><option value="">Año</option>
                                    <option value="1996">1996</option>
                                    <option value="1995">1995</option>
                                    <option value="1994">1994</option>
                                    <option value="1993">1993</option>
                                    <option value="1992">1992</option>
                                    <option value="1991">1991</option>
                                    <option value="1990">1990</option>
                                    <option value="1989">1989</option>
                                    <option value="1988">1988</option>
                                    <option value="1987">1987</option>
                                    <option value="1986">1986</option>
                                    <option value="1985">1985</option>
                                    <option value="1984">1984</option>
                                    <option value="1983">1983</option>
                                    <option value="1982">1982</option>
                                    <option value="1981">1981</option>
                                    <option value="1980">1980</option>
                                    <option value="1979">1979</option>
                                    <option value="1978">1978</option>
                                    <option value="1977">1977</option>
                                    <option value="1976">1976</option>
                                    <option value="1975">1975</option>
                                    <option value="1974">1974</option>
                                    <option value="1973">1973</option>
                                    <option value="1972">1972</option>
                                    <option value="1971">1971</option>
                                    <option value="1970">1970</option>
                                    <option value="1969">1969</option>
                                    <option value="1968">1968</option>
                                    <option value="1967">1967</option>
                                    <option value="1966">1966</option>
                                    <option value="1965">1965</option>
                                    <option value="1964">1964</option>
                                    <option value="1963">1963</option>
                                    <option value="1962">1962</option>
                                    <option value="1961">1961</option>
                                    <option value="1960">1960</option>
                                    <option value="1959">1959</option>
                                    <option value="1958">1958</option>
                                    <option value="1957">1957</option>
                                    <option value="1956">1956</option>
                                    <option value="1955">1955</option>
                                    <option value="1954">1954</option>
                                    <option value="1953">1953</option>
                                    <option value="1952">1952</option>
                                    <option value="1951">1951</option>
                                    <option value="1950">1950</option>
                                    <option value="1949">1949</option>
                                    <option value="1948">1948</option>
                                    <option value="1947">1947</option>
                                    <option value="1946">1946</option>
                                    <option value="1945">1945</option>
                                    <option value="1944">1944</option>
                                    <option value="1943">1943</option>
                                    <option value="1942">1942</option>
                                    <option value="1941">1941</option>
                                    <option value="1940">1940</option>
                                    <option value="1939">1939</option>
                                    <option value="1938">1938</option>
                                    <option value="1937">1937</option>
                                    <option value="1936">1936</option>
                                    <option value="1935">1935</option>
                                    <option value="1934">1934</option>
                                    <option value="1933">1933</option>
                                    <option value="1932">1932</option>
                                    <option value="1931">1931</option>
                                    <option value="1930">1930</option>
                                    <option value="1929">1929</option>
                                    <option value="1928">1928</option>
                                    <option value="1927">1927</option>
                                    <option value="1926">1926</option>
                                    <option value="1925">1925</option>
                                    <option value="1924">1924</option>
                                    <option value="1923">1923</option>
                                    <option value="1922">1922</option>
                                    <option value="1921">1921</option>
                                    <option value="1920">1920</option>
                                    <option value="1919">1919</option>
                                    <option value="1918">1918</option>
                                    <option value="1917">1917</option>
                                    <option value="1916">1916</option>
                                    <option value="1915">1915</option>
                                    <option value="1914">1914</option>
                                    <option value="1913">1913</option>
                                    <option value="1912">1912</option>
                                    <option value="1911">1911</option>
                                    <option value="1910">1910</option>
                                    <option value="1909">1909</option>
                                    <option value="1908">1908</option>
                                    <option value="1907">1907</option>
                                    <option value="1906">1906</option>
                                    <option value="1905">1905</option>
                                    <option value="1904">1904</option>
                                    <option value="1903">1903</option>
                                    <option value="1902">1902</option>
                                    <option value="1901">1901</option>
                                    <option value="1900">1900</option>
                                    <option value="1899">1899</option>
                                    <option value="1898">1898</option>
                                    <option value="1897">1897</option>
                                </select>
                            </div>
                        </div>  

                        <div class="form-group">
                            <label for="ejemplo_password_3" class="col-lg-2 control-label">Contraseña</label>
                            <div class="col-lg-10">
                                <input type="password" class="form-control" id="ejemplo_password_3" 
                                       placeholder="Contraseña">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-offset-2 col-lg-10">
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox"> No cerrar sesión
                                    </label>
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
        <!-- jQuery Version 1.11.0 -->
        <script src="../js/jquery-1.11.0.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="../js/bootstrap.min.js"></script>
    </body>
</html>


