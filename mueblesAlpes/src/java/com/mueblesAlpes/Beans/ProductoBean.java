
package com.mueblesAlpes.Beans;

/**
 *
 * @author 
 */


public class ProductoBean {
    private String codigoP;
    private String nombre;
    private String descripcion;
    private int idtipoMueble;
    private String material;
    private String dimencion;
     private String color;
      private String peso;

    public ProductoBean(String codigoP, String nombre, String descripcion, int idtipoMueble, String material, String dimencion, String color, String peso) {
        this.codigoP = codigoP;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.idtipoMueble = idtipoMueble;
        this.material = material;
        this.dimencion = dimencion;
        this.color = color;
        this.peso = peso;
    }
    public ProductoBean(){
        
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

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public int getIdtipoMueble() {
        return idtipoMueble;
    }

    public void setIdtipoMueble(int idtipoMueble) {
        this.idtipoMueble = idtipoMueble;
    }

    public String getMaterial() {
        return material;
    }

    public void setMaterial(String material) {
        this.material = material;
    }

    public String getDimencion() {
        return dimencion;
    }

    public void setDimencion(String dimencion) {
        this.dimencion = dimencion;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getPeso() {
        return peso;
    }

    public void setPeso(String peso) {
        this.peso = peso;
    }

    
    
    
    
}
