/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.mueblesAlpes.Beans;

/**
 *
 * @author Sebastian Rojas
 */
public class ProductoMasVendidoBean {
  String codigoProducto;
  String descripcion;
  int cantidad;
  int precio;

  public ProductoMasVendidoBean() {
  }

  public ProductoMasVendidoBean(String codigoProducto, String descripcion, int cantidad, int precio) {
    this.codigoProducto = codigoProducto;
    this.descripcion = descripcion;
    this.cantidad = cantidad;
    this.precio = precio;
  }

  public String getCodigoProducto() {
    return codigoProducto;
  }

  public void setCodigoProducto(String codigoProducto) {
    this.codigoProducto = codigoProducto;
  }

  public String getDescripcion() {
    return descripcion;
  }

  public void setDescripcion(String descripcion) {
    this.descripcion = descripcion;
  }

  public int getCantidad() {
    return cantidad;
  }

  public void setCantidad(int cantidad) {
    this.cantidad = cantidad;
  }

  public int getPrecio() {
    return precio;
  }

  public void setPrecio(int precio) {
    this.precio = precio;
  }
  
}
