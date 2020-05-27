/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ar.com.educacionit.webprogramming.sessions.controllers;

/**
 *
 * @author alvaro
 */
import java.util.Calendar;
import java.util.GregorianCalendar;

public class ObtenerFechaActual {

    public String obtenerFecha() {
        String fechaActual;
        //System.out.println(new Date());

        Calendar c = new GregorianCalendar();

        String dia, mes, annio;

        dia = Integer.toString(c.get(Calendar.DATE));
        mes = Integer.toString(c.get(Calendar.MONTH) + 1);
        annio = Integer.toString(c.get(Calendar.YEAR));

        //System.out.println(dia + "/" + mes + "/" + annio);
        fechaActual = dia + "/" + mes + "/" + annio;

        return fechaActual;

    }

        public String obtenerHora() {
        String horaActual;
        //System.out.println(new Date());

        Calendar c = new GregorianCalendar();

        String hh, mm;

        hh = Integer.toString(c.get(Calendar.HOUR_OF_DAY));
        mm = Integer.toString(c.get(Calendar.MINUTE));

        //System.out.println(dia + "/" + mes + "/" + annio);
        horaActual = hh + ":" + mm;

        return horaActual;

    }
}
