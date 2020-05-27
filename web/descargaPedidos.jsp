<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%-- Importaciones --%>
<%@page import="java.util.*"%>
<%@page import="ar.com.educacionit.webprogramming.sessions.entities.*"%>
<%@page import="ar.com.educacionit.webprogramming.sessions.controllers.*"%>
<%@page import="ar.com.educacionit.webprogramming.sessions.database.*"%>


<%
// Constrola que exista la sesion de usuario
        if (session.getAttribute("user") == null) {
            response.sendRedirect("index.jsp");
        }

// Obtiene los productos de bazaar
        ArrayList cabeceras = Cabecera.obtenerCabeceras(ConnectionManager.getConnection());
        new BajadaController().bajaPedidos();

%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Proyecto - Gestor de Pedidos</title>
    </head>

    <body bgcolor="#8AB8D4"text="#FFFFFF" onload="FP_preloadImgs(/*url*/'imagen/button1B.gif',/*url*/'imagen/button1C.gif')">
        <jsp:include page="encabezado.jsp" />
        <div align="right"><h1><font size="5">Bienvenido</font></h1></div>

        <jsp:include page="datosCliente.jsp" />
        <jsp:include page="barraDeLinks.jsp" />

        <div align="center">
            <b><font color="green"><h2>Pedidos ingresados</h2></font></b>

            

            <table border="1" cellpadding="5" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
                <tr>
                    <td width="5%" bgcolor="#000080"><b><font color="#FFFFFF">Check</font></b></td>
                    <td width="5%" bgcolor="#000080"><b><font color="#FFFFFF">#</font></b></td>
                    <td width="5%" bgcolor="#000080"><b><font color="#FFFFFF">Cliente</font></b></td>
                    <td width="10%" bgcolor="#000080"><b><font color="#FFFFFF">Sucursal</font></b></td>
                    <td width="30%" bgcolor="#000080"><b><font color="#FFFFFF">OC</font></b></td>
                    <td width="10%" bgcolor="#000080"><b><font color="#FFFFFF">Fecha</font></b></td>
                    <td width="5%" bgcolor="#000080"><b><font color="#FFFFFF">Hora</font></b></td>
                </tr>
                <%
        // Informa los items si hay al menos uno
        if (cabeceras.size() != 0) {
            // Variables
            Iterator it = cabeceras.iterator();
            //int contador = 0;

            // Informa los datos de cada item
            while (it.hasNext()) {
                //contador++;
                Cabecera c = (Cabecera) it.next();
                %>
                <tr>
                    <td width="5%"><input type="checkbox"></td>
                    <td width="5%"><B><%=c.getNro()%></B></td>
                    <td width="10%"><%=c.getCliente()%></td>
                    <td width="15%"><%=c.getSucursal()%></td>
                    <td width="30%"><%=c.getOc()%></td>
                    <td width="10%"><%=c.getFecha()%></td>
                    <td width="10%"><%=c.getHora()%></td>
                </tr>
                <%
            }
        }
                %>
            </table>

        </div>
        <br>
        <div align="right">
            <a href="exito.jsp?accion=persistir_pedido">
                <img border="0" id="img5" src="imagen/button1A.gif" height="30" width="150" alt="Generar Pedido" onmouseover="FP_swapImg(1,0,/*id*/'img5',/*url*/'imagen/button1B.gif')" onmouseout="FP_swapImg(0,0,/*id*/'img5',/*url*/'imagen/button1A.gif')" onmousedown="FP_swapImg(1,0,/*id*/'img5',/*url*/'imagen/button1C.gif')" onmouseup="FP_swapImg(0,0,/*id*/'img5',/*url*/'imagen/button1B.gif')" fp-style="fp-btn: Glow Capsule 8; fp-transparent: 1" fp-title="Generar Pedido">
            </a>

        </div>
    </body>
</html>
