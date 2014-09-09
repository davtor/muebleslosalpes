/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/*
 * @var xId = identificador del producto
 */

function f_setCookie(xId) {
  var imagen = document.getElementById(xId);
  var busqueda = document.cookie.split(";");
  var bandera = true;
  for (var i = 0; i < busqueda.length; i++) {
    var preId = busqueda[i].split("=");
    if (xId === preId[0]) {
      bandera = false;
      break;
    }
  }
  if (bandera) {
    document.cookie = xId + "=" + imagen.outerHTML.replace(/=|_/g, "~") + ";";
  }
}
function f_LimpiarCookie() {
  var cookie = document.cookie.split(';');
  for (var i = 0; i < cookie.length; i++) {
    document.cookie = cookie[i].split("=")[0] + "=; expires=Thu, 01 Jan 1970 00:00:00 UTC";
  }
}

function f_PintarProductos() {
  var listadoProductos = document.getElementById("listadoProductos");
  var productos = document.cookie.split(";");
  for (var i = 0; i < productos.length; i++) {
    var contenido = productos[i].split("=");
    var row = document.createElement('div');
    var col4 = document.createElement('div');
    var col8 = document.createElement('div');
    var caption = document.createElement('div');
    var titulo = document.createElement('h3');
    var boton = document.createElement('button');
    var tituloBoton = document.createElement('span');
    row.className = "row";
    col4.className = "col-lg-4";
    col8.className = "col-lg-8";
    caption.className = "caption";
    boton.className = "btn btn-default";
    tituloBoton.className = "glyphicon glyphicon-remove-sign";
    tituloBoton.innerHTML = "Eliminar";
    titulo.innerHTML = contenido[0];
    col4.innerHTML = contenido[1].replace(/~|_/g, "=");
    boton.appendChild(tituloBoton);
    caption.appendChild(titulo);
    caption.appendChild(boton);
    col8.appendChild(titulo);
    col8.appendChild(caption);
    row.appendChild(col4);
    row.appendChild(col8);
    listadoProductos.appendChild(row);
  }
}
