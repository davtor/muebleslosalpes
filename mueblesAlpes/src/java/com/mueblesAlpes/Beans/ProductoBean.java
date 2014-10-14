
package com.mueblesAlpes.Beans;

/**
 *
 * @author Administrador
 */


public class ProductoBean {
    private String codigoP;
    private String nombre;
    private int idtipoMueble;
    private int cantidad;

    public ProductoBean(String codigoP, String nombre, int idtipoMueble, int cantidad) {
        this.codigoP = codigoP;
        this.nombre = nombre;
        this.idtipoMueble = idtipoMueble;
        this.cantidad = cantidad;
    }

    public ProductoBean() {
    }

    public String getCodigoP() {
        return codigoP;
    }

    public void setCodigoP(String codigoP) {
        this.codigoP = codigoP;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getIdtipoMueble() {
        return idtipoMueble;
    }

    public void setIdtipoMueble(int idtipoMueble) {
        this.idtipoMueble = idtipoMueble;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }
    
    
    
}
