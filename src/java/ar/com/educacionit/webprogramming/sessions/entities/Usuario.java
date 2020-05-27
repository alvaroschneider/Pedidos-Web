/*
 * Usuario.java
 *
 */

package ar.com.educacionit.webprogramming.sessions.entities;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Sebastian S. Sanga
 */
public class Usuario {
    
    // Atributos
    private int id;
    private String usuario;
    private String password;
    private String nombre;
    private String apellido;
    
    /** Creates a new instance of Usuario */
    public Usuario() {
    }

    public Usuario(String u, String p)
    {
        usuario = u;
        password = p;
    }

    public static Usuario obtener(Connection conn, String u, String p) throws SQLException
    {
        if( u.equals("") || p.equals(""))
            return null;
        
        // Declara un usuario
        Usuario user = null;

        // Construye la query
        String laConsulta = "SELECT * FROM usuarios WHERE " +
                                "username = '" + u + "' AND " +
                                "password = '" + p + "'";
        
        // Ejecuta la query
        Statement stmtConsulta = conn.createStatement();
        ResultSet rs = stmtConsulta.executeQuery(laConsulta);
        
        // Obtiene los datos
        if( rs.next() )
        {
            // Arma el objeto
            user = new Usuario();
            user.setId( rs.getInt("usuario_id") );
            user.setUsuario( rs.getString("username") );
            user.setPassword( rs.getString("password") );
            user.setNombre( rs.getString("nombre") );
            user.setApellido( rs.getString("apellido") );
       }
        
        // Cierra el Statement
        stmtConsulta.close();
        
        // Retorna el usuario
        return user;
    }

    public String toString()
    {
        return nombre + " " + apellido;
    }
    
    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }
    
}
