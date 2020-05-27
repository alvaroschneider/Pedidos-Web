/*
 * ShoppingCartItem.java
 *
 */

package ar.com.educacionit.webprogramming.sessions.entities;

/**
 *
 * @author Sebastian S. Sanga
 */
public class ShoppingCartItem {
    
    // Atributos
    private Producto producto;
    private int cantidad;
    private int sc;
    private int pick;
    
    /** Creates a new instance of ShoppingCartItem */
    public ShoppingCartItem() {
    }
    
    public ShoppingCartItem(Producto p, int cant, int sc)
    {
        setProducto(p);
        setCantidad(cant);
        setSc(sc);
    }

    public Producto getProducto() {
        return producto;
    }

    public void setProducto(Producto producto) {
        this.producto = producto;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public int getSc() {
        return sc;
    }

    public void setSc(int sc) {
        this.sc = sc;
        System.out.println("item - SC: "+sc);
    }

    public int getPick() {
        return pick;
    }

    public void setPick(int pick) {
        this.pick = pick;
    }
  
}
