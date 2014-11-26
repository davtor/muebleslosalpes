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
public class VentaDiariaBean {
  private String nombreCliente;
  private String codigoProducto;
  private String descripcion;
  private int cantidad;

  public VentaDiariaBean() {
  }

  public VentaDiariaBean(String nombreCliente, String codigoProducto, String descripcion, int cantidad) {
    this.nombreCliente = nombreCliente;
    this.codigoProducto = codigoProducto;
    this.descripcion = descripcion;
    this.cantidad = cantidad;
  }

  public String getNombreCliente() {
    return nombreCliente;
  }

  public void setNombreCliente(String nombreCliente) {
    this.nombreCliente = nombreCliente;
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
  
  
}
