/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ar.com.educacionit.webprogramming.sessions.entities;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author alvaro
 */
public class Cabecera {

    private int nro;
    private int cliente;
    private int sucursal;
    private int oc;
    private String fecha;
    private String hora;

    public int getNro() {
        return nro;
    }

    public void setNro(int nro) {
        this.nro = nro;
    }



    public int getCliente() {
        return cliente;
    }

    public void setCliente(int cliente) {
        this.cliente = cliente;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getHora() {
        return hora;
    }

    public void setHora(String hora) {
        this.hora = hora;
    }

    public int getOc() {
        return oc;
    }

    public void setOc(int oc) {
        this.oc = oc;
    }

    public int getSucursal() {
        return sucursal;
    }

    public void setSucursal(int sucursal) {
        this.sucursal = sucursal;
    }



    public static ArrayList obtenerCabeceras(Connection conn) throws SQLException {
        // Define una coleccion
        ArrayList cabeceras = new ArrayList();

        // Construye la query
        String laConsulta = "SELECT * FROM cabecera";

        // Si hay un tipo de producto...
        //if (tipo != Producto.NINGUNO) {
        //    laConsulta += " WHERE tipo = " + tipo;
        //}

        // Ejecuta la query
        Statement stmtConsulta = conn.createStatement();
        ResultSet rs = stmtConsulta.executeQuery(laConsulta);

        // Obtiene los datos
        while (rs.next()) {
            // Arma el objeto
            Cabecera c = new Cabecera();
            c.setNro(rs.getInt("nro_p"));
            c.setCliente(rs.getInt("cliente_p"));
            c.setSucursal(rs.getInt("sucursal_p"));
            c.setOc(rs.getInt("oc_p"));
            c.setFecha(rs.getString("fecha_p"));
            c.setHora(rs.getString("hora_p"));
            cabeceras.add(c);
        }

        // Cierra el Statement
        stmtConsulta.close();

        // Retorna la coleccion
        return cabeceras;
    }
}
