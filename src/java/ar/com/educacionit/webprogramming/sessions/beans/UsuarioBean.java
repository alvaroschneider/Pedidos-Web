/*
 * UsuarioBean.java
 *
 */

package ar.com.educacionit.webprogramming.sessions.beans;

/**
 *
 * @author Sebastian S. Sanga
 */
public class UsuarioBean {

    // Atributos
    private String username = "";
    private String password = "";
    private String accion = "";

    /** Creates a new instance of UsuarioBean */
    public UsuarioBean() {
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        if( username != null )
            this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        if( password != null )
            this.password = password;
    }

    public String getAccion() {
        return accion;
    }

    public void setAccion(String accion) {
        if( accion != null )
            this.accion = accion;
    }    
}
