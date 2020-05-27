/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ar.com.educacionit.webprogramming.sessions.entities;

/**
 *
 * @author alvaro
 */
public class Item implements Comparable {

    private int nro;
    private int cod;
    private int cantFact;
    private int cantSC;
    private int boca;

    public int getBoca() {
        return boca;
    }

    public void setBoca(int boca) {
        this.boca = boca;
    }

    public int getCantFact() {
        return cantFact;
    }

    public void setCantFact(int cantFact) {
        this.cantFact = cantFact;
    }

    public int getCantSC() {
        return cantSC;
    }

    public void setCantSC(int cantSC) {
        this.cantSC = cantSC;
    }

    public int getCod() {
        return cod;
    }

    public void setCod(int cod) {
        this.cod = cod;
    }

    public int getNro() {
        return nro;
    }

    public void setNro(int nro) {
        this.nro = nro;
    }

    public int compareTo(Object arg0) {
        throw new UnsupportedOperationException("Not supported yet.");
    }
}
