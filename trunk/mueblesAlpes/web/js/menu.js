/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function f_LoadMenu() {
  var menu = "<!-- Brand and toggle get grouped for better mobile display -->" +
          "<div class='navbar-header'>" +
          "<button type='button' class='navbar-toggle' data-toggle='collapse' data-target='#bs-example-navbar-collapse-1'>" +
          "<span class='sr-only'>Toggle navigation</span>" +
          "<span class='icon-bar'></span>" +
          "<span class='icon-bar'></span>" +
          "<span class='icon-bar'></span>" +
          "</button>" +
          "<a class='navbar-brand' href='index.html'>Muebles Los Alpes</a>" +
          "</div>" +
          "<!-- Collect the nav links, forms, and other content for toggling -->" +
          "<div class='collapse navbar-collapse' id='bs-example-navbar-collapse-1'>" +
          "<ul class='nav navbar-nav navbar-right'>" +
          "<li class='active'><a href='http://localhost:8080/mueblesAlpes/index.jsp'>Inicio</a></li>" +
          "<li class='dropdown'>" +
          "<a href='#' class='dropdown-toggle' data-toggle='dropdown'>Administraci&oacute;n <span class='caret'></span></a>" +
          "<ul class='dropdown-menu' role='menu'>" +
          "<li><a href='http://localhost:8080/mueblesAlpes/vistas/creacionClientes.jsp'>Creacion De Clientes</a></li>" +
          "<li><a href='http://localhost:8080/mueblesAlpes/vistas/eliminacionClientes.jsp'>Eliminar Cliente</a></li>" +
          "<li><a href='http://localhost:8080/mueblesAlpes/vistas/consultarClientes.jsp'>Consulta de Clientes</a></li>" +
          "</ul>" +
          "</li>" +
          "<li class='dropdown'>" +
          "<a href='#' class='dropdown-toggle' data-toggle='dropdown'>Productos <span class='caret'></span></a>" +
          "<ul class='dropdown-menu' role='menu'>" +
          "<li><a href='http://localhost:8080/mueblesAlpes/vistas/creacionProducto.jsp'>Creacion De Productos</a></li>" +
          "<li><a href='http://localhost:8080/mueblesAlpes/vistas/edicionProductos.jsp'>Edicion De Productos</a></li>" +
          "<li><a href='http://localhost:8080/mueblesAlpes/vistas/eliminacionProductos.jsp'>Eliminacion De Productos</a></li>" +
          "<li><a href='http://localhost:8080/mueblesAlpes/vistas/consultaProductos.jsp'>Consulta De Productos</a></li>" +
          "<li><a href='http://localhost:8080/mueblesAlpes/vistas/registroPreciosProductos.jsp'>Registro De Precios</a></li>" +
          "</ul>" +
          "</li>" +
          "<li class='dropdown'>" +
          "<a href='#' class='dropdown-toggle' data-toggle='dropdown'>Reportes <span class='caret'></span></a>" +
          "<ul class='dropdown-menu' role='menu'>" +
          "<li><a href='http://localhost:8080/mueblesAlpes/vistas/ventasDiarias.jsp'>Ventas Diarias</a></li>" +
          "<li><a href='http://localhost:8080/mueblesAlpes/vistas/productomasVendido.jsp'>Producto Mas Vendido</a></li>" +
          "<li><a href='http://localhost:8080/mueblesAlpes/vistas/comprasporCliente.jsp'>Compras Por Cliente</a></li>" +
          "<li><a href='http://localhost:8080/mueblesAlpes/vistas/listadoProductos.jsp'>Listado De Productos</a></li>" +
          "</ul>" +
          "</li>";
  if (f_usuario() === "") {
    menu += "<li><a href='http://localhost:8080/mueblesAlpes/vistas/login.jsp'>Ingresar</a></li>";
  } else {
    menu += "<li><a href='http://localhost:8080/mueblesAlpes/vistas/login.jsp'>"+f_usuario()+"</a></li>";
  }
  menu += "<li class='dropdown'>" +
          "<a href='#' class='dropdown-toggle' data-toggle='dropdown'><span class='glyphicon glyphicon-shopping-cart'></span></a>" +
          "<ul class='dropdown-menu' role='menu'>" +
          "<li><a href='http://localhost:8080/mueblesAlpes/vistas/pagar.jsp'>Pagar</a></li>" +
          "</ul>" +
          "</li>" +
          "</ul>" +
          "</div>";
  document.getElementById("cabecera").innerHTML = menu;

}

function f_usuario() {
  var busqueda = document.cookie.split(";");
  var bandera = true;
  var correo = "";
  for (var i = 0; i < busqueda.length; i++) {
    var preId = busqueda[i].split("=");
    if (preId[0] === " usuario") {
      if (preId[1] != "") {
        correo = preId[1];
        break;
      }
    }
  }
  return correo !== "" ? correo : "";
}


