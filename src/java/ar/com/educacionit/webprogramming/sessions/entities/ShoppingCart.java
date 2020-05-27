/*
 * ShoppingCart.java
 *
 */
package ar.com.educacionit.webprogramming.sessions.entities;

import java.util.HashMap;

/**
 *
 * @author Sebastian S. Sanga
 */
public class ShoppingCart {

    private HashMap items = new HashMap();
    private float palletsTotal;
    private float camadaTotal;
    private float camadaEntera;
    private int pickTotal;
    private float camadas;
    private int camadasEnteras;
    private float porcCamada;
    private int cantidad;
    private int diferencia;
    private float pallets;
    private int palletsEnteros;
    private float porcPallet;
    private float pick;

    /**
     * Creates a new instance of ShoppingCart
     */
    public ShoppingCart() {
    }

    public void agregarItem(ShoppingCartItem item) {
        System.out.println("llam agregarItem() item:" + item.getSc());
        cantidad = item.getCantidad() + item.getSc();

        pallets = (float) cantidad / (float) item.getProducto().getPallet();
        palletsEnteros = cantidad / item.getProducto().getPallet();
        porcPallet = pallets - (float) palletsEnteros;

        //Si el % de pallet es mayor a 75% lo redondea a 100%
        if (porcPallet > 0.75) {
            cantidad = (palletsEnteros + 1) * item.getProducto().getPallet();

            // calcula cantidad
            diferencia = cantidad - item.getCantidad() - item.getSc();
            cantidad = item.getCantidad() + diferencia;
            item.setCantidad(cantidad);

        } //Si es menor al 75%, evalua las camadas
        else {
            camadas = (float) cantidad / (float) item.getProducto().getCamada();
            camadasEnteras = cantidad / item.getProducto().getCamada();
            porcCamada = camadas - (float) camadasEnteras;

            if (porcCamada > 0.75) {
                cantidad = (camadasEnteras + 1) * item.getProducto().getCamada();
                item.setCantidad(cantidad);
            } else {
                pick = porcCamada * item.getProducto().getCamada();
                //System.out.println("pick1: "+pick);
                item.setPick((int) pick);
                //System.out.println("getPick1: "+item.getPick());
            }
        }

        // Si el producto esta, incrementa la cantidad
        if (items.containsKey(new Integer(item.getProducto().getId()))) {
            ShoppingCartItem cartItem = (ShoppingCartItem) items.get(new Integer(item.getProducto().getId()));
            cartItem.setCantidad(cartItem.getCantidad() + item.getCantidad());
            cartItem.setSc(cartItem.getSc() + item.getSc());

        } // Si el producto no esta, lo agrega
        else {
            items.put(new Integer(item.getProducto().getId()), item);
        }

        // Actualiza acumulados
        setPalletsTotal(getPalletsTotal() + (((float) item.getCantidad() + (float) item.getSc()) / (float) item.getProducto().getPallet()));
        setCamadaTotal(getCamadaTotal() + (((float) item.getCantidad() + (float) item.getSc()) / (float) item.getProducto().getCamada()));
        setCamadaEntera(getCamadaEntera() + (item.getCantidad() + item.getSc() / item.getProducto().getCamada()));
        setPickTotal(getPickTotal() + (int) (porcCamada * item.getProducto().getCamada()));
    }

    public ShoppingCartItem obtenerItemPorId(int id) {
        // Si el producto esta, lo retorna
        if (items.containsKey(new Integer(id))) {
            return (ShoppingCartItem) items.get(new Integer(id));
        }

        // Si el producto no esta, retorna null
        return null;
    }

    public void quitarItem(int id, int cant) {
        // Si el producto esta, decrementa su cantidad
        if (items.containsKey(new Integer(id))) {
            ShoppingCartItem item = (ShoppingCartItem) items.get(new Integer(id));
            item.setCantidad(item.getCantidad() - cant);

            // Si la cantidad es cero, quita el producto definitivamente
            if (item.getCantidad() <= 0) {
                items.remove(new Integer(id));
            }

            // Actualiza pallets total
            setPalletsTotal(getPalletsTotal() - (float) ((float) cant / (float) item.getProducto().getPallet()));
            setCamadaTotal(getCamadaTotal() - (float) ((float) cant / (float) item.getProducto().getCamada()));
            setCamadaEntera(getCamadaEntera() - (int) ((int) cant / (int) item.getProducto().getCamada()));


            // Si los pallets es menor a cero, establecer cero
            if (getPalletsTotal() < 0) {
                setPalletsTotal(0);
            }
            if (getCamadaTotal() < 0) {
                setCamadaTotal(0);
            }
        }
    }

    public void quitarTodosLosItems() {
        items.clear();
    }

    public HashMap getProductos() {
        return items;
    }

    public void setProductos(HashMap productos) {
        this.items = productos;
    }

    public float getPalletsTotal() {
        return palletsTotal;
    }

    public void setPalletsTotal(float palletsTotal) {
        this.palletsTotal = palletsTotal;
    }

    public float getCamadaTotal() {
        return camadaTotal;
    }

    public void setCamadaTotal(float camadaTotal) {
        this.camadaTotal = camadaTotal;
    }

    public float getCamadaEntera() {
        return camadaEntera;
    }

    public void setCamadaEntera(float camadaEntera) {
        this.camadaEntera = camadaEntera;
    }

    public int getPickTotal() {
        return pickTotal;
    }

    public void setPickTotal(int pickTotal) {
        this.pickTotal = pickTotal;
    }
}
