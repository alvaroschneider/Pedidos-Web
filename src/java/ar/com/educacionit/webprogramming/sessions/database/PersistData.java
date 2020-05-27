/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ar.com.educacionit.webprogramming.sessions.database;

import ar.com.educacionit.webprogramming.sessions.entities.DatosCliente;
import ar.com.educacionit.webprogramming.sessions.entities.Item;
import ar.com.educacionit.webprogramming.sessions.entities.PedidosUsuario;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Vector;

/**
 *
 * @author alvaro
 */
public class PersistData {

    public void insertarCabecera(int cliente, int sucursal, int oc) throws Exception {
        // Define la conexion
        Connection laConexion = ConnectionManager.getConnection();

        // Arma la sentencia de insercion y la ejecuta
        String laInsercion = "INSERT INTO cabecera(cliente_p, sucursal_p, oc_p) VALUES ('" + String.valueOf(cliente) + "', '" + String.valueOf(sucursal) + "', '" + String.valueOf(oc) + "')";
        Statement stmtInsercion = laConexion.createStatement();
        stmtInsercion.execute(laInsercion);

        // Cierra el Statement y la Connection
        stmtInsercion.close();
        laConexion.close();

        // Informa que la insercion ha sido realizada con exito
        System.out.println("La insercion ha sido realizada con exito...");
    }

    public Date getDate(String date) {
        DateFormat df = new SimpleDateFormat("dd/MM/yyyy");
        try {
            System.out.println("Fecha: " + df.parse(date));
            return df.parse(date);
        } catch (ParseException ex) {
        }
        return null;
    }

    public void insertarCabeceraConFecha(int cliente, int sucursal, int oc, String fecha, String hora, String fechae, int usuario_id) throws Exception {
        // Define la conexion
        Connection laConexion = ConnectionManager.getConnection();

        // Arma la sentencia de insercion y la ejecuta
        String laInsercion = "INSERT INTO cabecera (cliente_p, sucursal_p, oc_p, fecha_p, hora_p, fechae_p, usuario_id) VALUES ('" + String.valueOf(cliente) + "', '" + String.valueOf(sucursal) + "', '" + String.valueOf(oc) + "', '" + fecha + "', '" + hora + "', '" + fechae + "', '" + String.valueOf(usuario_id) + "')";
        Statement stmtInsercion = laConexion.createStatement();
        stmtInsercion.execute(laInsercion);

        // Cierra el Statement y la Connection
        stmtInsercion.close();
        laConexion.close();

        // Informa que la insercion ha sido realizada con exito
        System.out.println("La insercion ha sido realizada con exito...");
    }

    public int getIdPedido() throws Exception {
        Connection laConexion = ConnectionManager.getConnection();

        // Arma la sentencia de insercion y la ejecuta
        String consulta = "SELECT max(nro_p)as nro_p FROM cabecera";
        Statement stmt = laConexion.createStatement();
        ResultSet rs = stmt.executeQuery(consulta);

        rs.last();

        int nro = rs.getInt("nro_p");

        // Cierra el Statement y la Connection
        stmt.close();
        laConexion.close();
        return nro;
    }

    public DatosCliente getCabeceraPedido(int nro) throws Exception {

        DatosCliente dc = new DatosCliente();
        Connection laConexion = ConnectionManager.getConnection();

        // Arma la sentencia de insercion y la ejecuta
        String consulta = "SELECT * FROM cabecera WHERE( nro_p = '" + String.valueOf(nro) + "')";
        Statement stmt = laConexion.createStatement();
        ResultSet rs = stmt.executeQuery(consulta);

        String cliente = rs.getString("cliente_p");
        String sucursal = rs.getString("sucursal_p");
        String oc = rs.getString("oc_p");
        String fecha = rs.getString("fecha_p");
        String hora = rs.getString("hora_p");

        dc.setCliente(Integer.parseInt(cliente));
        dc.setSucursal(Integer.parseInt(sucursal));
        dc.setOc(Integer.parseInt(oc));
        dc.setFecha(fecha);
        dc.setHora(hora);
        //rs.last();

        //int nro = rs.getInt("nro_p");

        // Cierra el Statement y la Connection
        stmt.close();
        laConexion.close();
        return dc;
    }

    public void insertarCuerpo(int nro, int cod, int cantFact, int cantSc) throws Exception {

        Connection laConexion = ConnectionManager.getConnection();

        Statement stmtInsercion = null;
        stmtInsercion = laConexion.createStatement();
        //System.out.println("SC: "+cantSc);
        String laInsercion = null;


        laInsercion = "INSERT INTO cuerpo (nro_p, cod_p, cantFact_p, cantSc_p) VALUES ('" + String.valueOf(nro) + "', '" + String.valueOf(cod) + "', '" + String.valueOf(cantFact) + "', '" + String.valueOf(cantSc) + "')";
        stmtInsercion.execute(laInsercion);
        System.out.println(laInsercion);
        stmtInsercion.close();
        laConexion.close();

        System.out.println(nro + " - " + cod + " - " + cantFact);
    }

    public Vector getItems() throws Exception {
        Vector items = new Vector();
        Connection laConexion = ConnectionManager.getConnection();

        // Arma la sentencia de insercion y la ejecuta
        String consulta = "SELECT * FROM cuerpo";
        Statement stmt = laConexion.createStatement();
        ResultSet rs = stmt.executeQuery(consulta);

        while (rs.next()) {
            Item item = new Item();
            item.setNro(rs.getInt("nro_p"));
            item.setCod(rs.getInt("cod_p"));
            item.setCantFact(rs.getInt("cantFact_p"));
            item.setBoca(1);
            items.add(item);
            //System.out.println("cod: "+rs.getInt("cod_p")+" cant: "+rs.getInt("cantFact_p"));
        }

        /*
         * for (int i = 0; i < items.size(); i++) { Item itemm = new Item();
         * itemm = (Item) items.get(i); System.out.println(itemm.getCod()); }
         *
         */

        stmt.close();
        laConexion.close();
        return items;
    }

    public static Vector getPedidos(int usuario) throws Exception {
        int u = usuario;
        Vector pedidos = new Vector();
        Connection laConexion = ConnectionManager.getConnection();
        Statement s = laConexion.createStatement();
        ResultSet rs = s.executeQuery("SELECT c.nro_p, c.cliente_p, c.sucursal_p, cli.RazonSocial, c.oc_p, c.fecha_p, c.hora_p, c.fechae_p, ROUND(sum(cu.cantFact_p/p.pallet),1) as pallets "
                + "FROM usuarios u, cabecera c, cuerpo cu, productos p, clientes cli "
                + "WHERE c.usuario_id=" + u + " and c.usuario_id=u.usuario_id and c.nro_p=cu.nro_p and cu.cod_p=p.producto_id and c.cliente_p=cli.Cliente and c.sucursal_p=cli.Sucursal "
                + "GROUP BY u.username, c.nro_p, c.cliente_p, c.sucursal_p, cli.RazonSocial, c.oc_p, c.fecha_p, c.hora_p, c.fechae_p "
                + "ORDER BY c.nro_p DESC");

        while (rs.next()) {
            PedidosUsuario pedido = new PedidosUsuario();
            pedido.setNro(rs.getInt("nro_p"));
            pedido.setCliente(rs.getInt("cliente_p"));
            pedido.setFecha(rs.getString("fecha_p"));
            pedido.setFechaEntrega(rs.getString("fechae_p"));
            pedido.setOc(rs.getInt("oc_p"));
            pedido.setPallets(rs.getFloat("pallets"));
            pedido.setRs(rs.getString("RazonSocial"));
            pedido.setSucursal(rs.getInt("sucursal_p"));

            pedidos.add(pedido);
        }
        return pedidos;
    }
}
