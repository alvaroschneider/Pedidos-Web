/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ar.com.educacionit.webprogramming.sessions.controllers;

//import entities.Pedido;
import ar.com.educacionit.webprogramming.sessions.entities.Pedido;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Vector;
import javax.swing.JFileChooser;
import javax.swing.JOptionPane;
//import javax.swing.JTable;
import javax.swing.JTextField;

/**
 *
 * @author alvaro
 */
public class GuardaPedido {

    HashMap hmPedidos = new HashMap();
    int j=-1;
    JFileChooser file = null;

    /**
    public void generaPedido(JTable jtbl, JTextField jtCliente, JTextField jtSucursal, JTextField jtOC, JTextField jtFechaEntrega) throws IOException {
        for (int i = 0; i < jtbl.getRowCount(); i++) {
            if (jtbl.getValueAt(i, 2) != null) {
                j++;
                Pedido p = new Pedido();
                p.setCodigo(Integer.parseInt(String.valueOf(jtbl.getValueAt(i, 1))));
                p.setCantidad(Integer.parseInt(String.valueOf(jtbl.getValueAt(i, 2))));
                p.setCliente(Integer.parseInt(jtCliente.getText()));
                p.setSucursal(Integer.parseInt(jtSucursal.getText()));
                p.setOc(Integer.parseInt(jtOC.getText()));
                p.setFecha(String.valueOf(jtFechaEntrega.getText()));
                hmPedidos.put(j, p);
            }
        }
    }
     */

    public void guardar(Vector vPedidos) throws IOException {
        String entrada = null;
        file = new JFileChooser();
        int retVal = file.showSaveDialog(file);
        if (retVal == file.APPROVE_OPTION) {

            entrada = file.getSelectedFile().getAbsolutePath() + ".csv";
            File archivoDeSalida = new File(entrada);
            FileWriter out = null;

            Iterator it = vPedidos.iterator();
            j = 0;
            out = new FileWriter(archivoDeSalida);

            while (it.hasNext()) {
                Map.Entry e = (Map.Entry) it.next();
                Pedido p = (Pedido) vPedidos.get(j);
                String info = String.valueOf(p.getCliente()) + ";" + String.valueOf(p.getSucursal()) + ";" + String.valueOf(p.getOc()) + ";" + p.getFecha() + ";" + String.valueOf(p.getItem().getCod()) + ";" + String.valueOf(p.getItem().getCantFact()) +";0;0;"+String.valueOf(p.getItem().getBoca()) + "\n";
                out.write(info);

                j = j + 1;
            }
            out.close();
            //JOptionPane.showMessageDialog(1, "Su pedido fue creado con exito en el archivo: " + entrada, "Excelente", JOptionPane.INFORMATION_MESSAGE);
        }
    }
}
