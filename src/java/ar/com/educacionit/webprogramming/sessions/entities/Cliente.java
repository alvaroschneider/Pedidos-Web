/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
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
public class Cliente {

    private int nroCliente;
    private int nroSucursal;
    private String razonSocial;
    private String domicilio;
    private String localidad;
    private String provincia;
    private String area;
    private String region;
    
    public Cliente() {
    }
    
    public static ArrayList obtener(Connection conn) throws SQLException {
        // Define un producto
        ArrayList clientes = new ArrayList();

        // Construye la query
        String laConsulta = "SELECT distinct razonsocial, cliente FROM danone.clientes\n" +
                            "where region='GBA';";

        // Ejecuta la query
        Statement stmtConsulta = conn.createStatement();
        ResultSet rs = stmtConsulta.executeQuery(laConsulta);

        // Obtiene los datos
        while (rs.next()) {
            Cliente c = new Cliente();
            c.setNroCliente(rs.getInt("cliente"));
            c.setRazonSocial(rs.getString("razonsocial"));
            clientes.add(c);
        }
        
        // Cierra el Statement
        stmtConsulta.close();

        // Retorna el item
        return clientes;
    }

    public int getNroCliente() {
        return nroCliente;
    }

    public void setNroCliente(int nroCliente) {
        this.nroCliente = nroCliente;
    }

    public int getNroSucursal() {
        return nroSucursal;
    }

    public void setNroSucursal(int nroSucursal) {
        this.nroSucursal = nroSucursal;
    }

    public String getRazonSocial() {
        return razonSocial;
    }

    public void setRazonSocial(String razonSocial) {
        this.razonSocial = razonSocial;
    }

    public String getDomicilio() {
        return domicilio;
    }

    public void setDomicilio(String domicilio) {
        this.domicilio = domicilio;
    }

    public String getLocalidad() {
        return localidad;
    }

    public void setLocalidad(String localidad) {
        this.localidad = localidad;
    }

    public String getProvincia() {
        return provincia;
    }

    public void setProvincia(String provincia) {
        this.provincia = provincia;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public String getRegion() {
        return region;
    }

    public void setRegion(String region) {
        this.region = region;
    }
    
    
}
