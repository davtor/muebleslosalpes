package com.mueblesAlpes.Beans;

/**
 *
 * @author
 */
public class ProductoBean {

    private int idProducto;
    private String codigoP;
    private String nombre;
    private String descripcion;
    private String idtipoMueble;
    private String material;
    private String dimencion;
    private String color;
    private String peso;

    public ProductoBean() {
    }

    public ProductoBean(int idProducto, String codigoP, String nombre, String descripcion, String idtipoMueble, String material, String dimencion, String color, String peso) {
        this.idProducto = idProducto;
        this.codigoP = codigoP;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.idtipoMueble = idtipoMueble;
        this.material = material;
        this.dimencion = dimencion;
        this.color = color;
        this.peso = peso;
    }

    public int getIdProducto() {
        return idProducto;
    }

    public void setIdProducto(int idProducto) {
        this.idProducto = idProducto;
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

    public String getIdtipoMueble() {
        return idtipoMueble;
    }

    public void setIdtipoMueble(String idtipoMueble) {
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
