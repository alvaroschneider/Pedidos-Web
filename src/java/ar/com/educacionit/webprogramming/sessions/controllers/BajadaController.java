/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ar.com.educacionit.webprogramming.sessions.controllers;

import ar.com.educacionit.webprogramming.sessions.database.ConnectionManager;
import ar.com.educacionit.webprogramming.sessions.database.PersistData;
import ar.com.educacionit.webprogramming.sessions.entities.Cabecera;
import ar.com.educacionit.webprogramming.sessions.entities.Item;
import ar.com.educacionit.webprogramming.sessions.entities.Pedido;
import ar.com.educacionit.webprogramming.sessions.entities.Producto;
import java.io.File;
import java.io.FileWriter;
import java.util.ArrayList;

import java.util.Vector;
import javax.swing.JFileChooser;

/**
 *
 * @author alvaro
 */
public class BajadaController {

    private Vector items = new Vector();
    private ArrayList cabeceras = new ArrayList();
    private PersistData pd = new PersistData();
    private Vector pedidos = new Vector();
    private int maxNroBoca = 29;
    int j = -1;
    JFileChooser file = null;

    public BajadaController() {
    }

    public void bajaPedidos() throws Exception {
        items = (Vector) pd.getItems();
        cabeceras = (ArrayList) Cabecera.obtenerCabeceras(ConnectionManager.getConnection());

        //Recorre vector item y evalua si tiene mas de 24 pallets y lo divide en pedidos de 24 pallets
        for (int i = 0; i < items.size(); i++) {
            Item item = new Item();
            item = (Item) items.get(i);
            Producto p = Producto.obtenerPorId(ConnectionManager.getConnection(), item.getCod());
            float palletsPedidos = (float) item.getCantFact() / (float) p.getPallet();
            if (palletsPedidos > 24) {
                int pedidosEnteros = (int) (palletsPedidos / 24);
                float pedidosResto = palletsPedidos / 24 - pedidosEnteros;

                for (int j = 0; j < pedidosEnteros; j++) {
                    Item item2 = new Item();
                    item2.setNro(item.getNro());
                    item2.setCod(item.getCod());

                    int cant = p.getPallet() * 24;

                    //if(maxNroBoca<j+30){
                    //    maxNroBoca=j+30;
                    //}
                    maxNroBoca++;
                    item2.setCantFact(cant);
                    item2.setBoca(maxNroBoca);

                    items.insertElementAt(item2, i);
                    i++;
                    //System.out.println(i);
                }
                maxNroBoca++;
                Item item2 = new Item();
                float cant = pedidosResto * 24 * p.getPallet();

                item2.setNro(item.getNro());
                item2.setCod(item.getCod());
                item2.setCantFact((int) cant);
                item2.setBoca(maxNroBoca);
                //items.add(item2);
                items.insertElementAt(item2, i);
                i++;
            }
        }

        //Elimina items mayores a 24 pallets y prepara vector pedidos
        for (int i = 0; i < items.size(); i++) {
            Item item = new Item();
            item = (Item) items.get(i);
            Producto p = Producto.obtenerPorId(ConnectionManager.getConnection(), item.getCod());
            float palletsPedidos = (float) item.getCantFact() / (float) p.getPallet();
            if (palletsPedidos > 24) {
                items.remove(i);
                i = i - 1;
            } else {
                for (int j = 0; j < cabeceras.size(); j++) {
                    Cabecera c = new Cabecera();
                    c = (Cabecera) cabeceras.get(j);
                    if (item.getNro() == c.getNro()) {
                        Pedido ped = new Pedido();
                        ped.setCliente(c.getCliente());
                        ped.setSucursal(c.getSucursal());
                        ped.setOc(c.getOc());
                        ped.setFecha(c.getFecha());
                        ped.setItem(item);
                        ped.setNro(c.getNro());
                        pedidos.add(ped);
                    }

                }
            }

        }

        //Modifica nro de boca de los pedidos que suman mas de 24 pallets dentro del vector pedidos
        int nroPedido = 0;
        int nroBoca = 1;
        float acumPallets = 0;
        float pallets = 0;
        for (int i = 0; i < pedidos.size(); i++) {

            Pedido p = new Pedido();
            p = (Pedido) pedidos.get(i);
            //System.out.println("if "+p.getNro());
            if (p.getNro() == nroPedido) {
                Producto prod = Producto.obtenerPorId(ConnectionManager.getConnection(), p.getItem().getCod());
                pallets = (float) p.getItem().getCantFact() / (float) prod.getPallet();
                if (pallets == 24) {
                    acumPallets = 0;
                } else {
                    acumPallets = acumPallets + pallets;
                    System.out.println(p.getNro() + " acumPalltes: " + acumPallets + " boca: " + p.getItem().getBoca());
                    if (acumPallets > 24) {
                        Item item = new Item();
                        item = p.getItem();
                        //nroBoca = item.getBoca();
                        nroBoca++;
                        item.setBoca(nroBoca);
                        //System.out.println("boca " + item.getBoca());
                        p.setItem(item);
                        pedidos.setElementAt(p, i);
                        System.out.println("acum if " + acumPallets);
                        //acumPallets = 0;
                    }
                }
            } else {
                Producto producto = Producto.obtenerPorId(ConnectionManager.getConnection(), p.getItem().getCod());
                pallets = (float) p.getItem().getCantFact() / (float) producto.getPallet();
                acumPallets = pallets;
                nroPedido = p.getNro();
            }
        }
//Escribe pedidos en arhivo .csv

        String entrada = null;
        file = new JFileChooser();
        int retVal = file.showSaveDialog(file);
        if (retVal == file.APPROVE_OPTION) {

            entrada = file.getSelectedFile().getAbsolutePath() + ".csv";
            File archivoDeSalida = new File(entrada);
            FileWriter out = null;

            //Iterator it = pedidos.iterator();
            //j = 0;
            out = new FileWriter(archivoDeSalida);

            for (int i = 0; i < pedidos.size(); i++) {
                //Map.Entry e = (Map.Entry) it.next();
                Pedido p = (Pedido) pedidos.get(i);
                //j++;
                //System.out.println(p.getCliente()) +";" + p.getSucursal() + ";" + p.getOc() +";" + p.getFecha() +";" + p.getItem().getCod() +";" + p.getItem().getCantFact() +";0;0;" + p.getItem().getBoca();
                //System.out.println("cliente: " + p.getCliente() + " suc: " + p.getSucursal() + " cod: " + p.getItem().getCod() + " cant: " + p.getItem().getCantFact() + "nro_p: " + p.getNro());
                String info = String.valueOf(p.getCliente())
                        + ";" + String.valueOf(p.getSucursal())
                        + ";" + String.valueOf(p.getOc())
                        + ";" + p.getFecha()
                        + ";" + String.valueOf(p.getItem().getCod())
                        + ";" + String.valueOf(p.getItem().getCantFact())
                        + ";0;0;" + String.valueOf(p.getItem().getBoca()) + "\n";

                out.write(info);

                //j = j + 1;
            }

            out.close();

        }
    }
}
