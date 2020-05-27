/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ar.com.educacionit.webprogramming.sessions.database;

/**
 *
 * @author alvaro
 */
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFCell;
import java.io.FileInputStream;

/**
 * Ejemplo de uso de la API POI
 *
 * @author clavijo_pau 2007
 *
 */
public class ReadClientesXls {

    public String getRS(String ficheroEntrada, int cliente, int suc) {
        String rs = null;
        try {

            // Lo primero es crear un workbook que representa todo el documento XLS
            HSSFWorkbook workbook = new HSSFWorkbook(new FileInputStream(ficheroEntrada));
            // Creamos un objeto sheet con la hoja del documento a leer.
            // (Se ha recuperado referenciando la hoja por su nombre, también se
            //  puede recuperar por indice getSheetAt(int index) );
            HSSFSheet sheet = workbook.getSheet("maestro_CLIENTES");
            HSSFRow row = null;
            HSSFCell clienteCell = null;
            HSSFCell sucCell = null;
            HSSFCell rsCell = null;

            for (int i = 1, z = sheet.getLastRowNum(); i <= z; i++) {
                row = sheet.getRow(i);
                if (row != null) {

                    clienteCell = row.getCell((short) 2);
                    sucCell = row.getCell((short) 3);
                    rsCell = row.getCell((short) 4);

                    if (HSSFCell.CELL_TYPE_NUMERIC == clienteCell.getCellType()) {
                        if (clienteCell.getNumericCellValue() == cliente && sucCell.getNumericCellValue() == suc) {
                            //System.out.print(clienteCell.getNumericCellValue() + "\t" + rsCell.getStringCellValue());
                            rs = rsCell.toString();
                        }
                    }
                }
            }
        } catch (Exception e) {
            System.out.println("Excepcion en ReadXL : " + e);
        }
        //System.out.println("tipo camion: "+camion);
        return rs;
    }

        public String getLocalidad(String ficheroEntrada, int cliente, int suc) {
        String localidad = null;
        try {

            // Lo primero es crear un workbook que representa todo el documento XLS
            HSSFWorkbook workbook = new HSSFWorkbook(new FileInputStream(ficheroEntrada));
            // Creamos un objeto sheet con la hoja del documento a leer.
            // (Se ha recuperado referenciando la hoja por su nombre, también se
            //  puede recuperar por indice getSheetAt(int index) );
            HSSFSheet sheet = workbook.getSheet("maestro_CLIENTES");
            HSSFRow row = null;
            HSSFCell clienteCell = null;
            HSSFCell sucCell = null;
            HSSFCell localidadCell = null;

            for (int i = 1, z = sheet.getLastRowNum(); i <= z; i++) {
                row = sheet.getRow(i);
                if (row != null) {

                    clienteCell = row.getCell((short) 2);
                    sucCell = row.getCell((short) 3);
                    localidadCell = row.getCell((short) 6);

                    if (HSSFCell.CELL_TYPE_NUMERIC == clienteCell.getCellType()) {
                        if (clienteCell.getNumericCellValue() == cliente && sucCell.getNumericCellValue() == suc) {
                            //System.out.print(clienteCell.getNumericCellValue() + "\t" + rsCell.getStringCellValue());
                            localidad = localidadCell.toString();
                        }
                    }
                }
            }
        } catch (Exception e) {
            System.out.println("Excepcion en ReadXL : " + e);
        }
        //System.out.println("tipo camion: "+camion);
        return localidad;
    }
}
