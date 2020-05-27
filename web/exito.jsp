<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@page import="java.util.*"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="ar.com.educacionit.webprogramming.sessions.entities.*"%>
<%@page import="ar.com.educacionit.webprogramming.sessions.controllers.*"%>
<%@page import="ar.com.educacionit.webprogramming.sessions.database.*"%>

<%-- Obtiene el carrito de compras como session --%>
<jsp:useBean class="ar.com.educacionit.webprogramming.sessions.entities.ShoppingCart" id="carrito" scope="session" />
<jsp:useBean class="ar.com.educacionit.webprogramming.sessions.entities.DatosCliente" id="dc" scope="session" />
<jsp:useBean class="ar.com.educacionit.webprogramming.sessions.database.PersistData" id="pd" scope="session" />

<%
            int nro = 0;
            if (request.getParameter("accion") != null && request.getParameter("accion").equals("persistir_pedido")) {

                int cod = 0;
                int cantFact = 0;
                int cantSC = 0;

                Iterator it = carrito.getProductos().values().iterator();

                Producto p;

                while (it.hasNext()) {
                    ShoppingCartItem item = (ShoppingCartItem) it.next();
                    p = item.getProducto();

                    nro = dc.getNroPedido();
                    cod = p.getId();
                    cantFact = item.getCantidad();
                    cantSC = item.getSc();
                    System.out.println("exito - SC: "+cantSC);
                    pd.insertarCuerpo(nro, cod, cantFact, cantSC);
                }
            }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>Proyecto - Gestor de Pedidos</title>
    </head>
    <body bgcolor="#003366" text="#FFFFFF">
        <div align="center">
            <h1><font face="Arial"><img src="imagen/pera.jpg" width="200" height="200">       <img src="imagen/banana.png" width="319" height="203">       <img src="imagen/manzana.jpg" width="200" height="200"></font></h1>
            <h1><font size="5" face="Arial">Su pedido fue cargado con éxito</font></h1>
        </div>
        <font size="5">
            <div align="center"><font face="Arial">Nro de Pedido: <%=nro%></font></div>
            <hr>
        </font>
        <div align=center>
            <a href="index.jsp?accion=logout">
                <font face="Arial">
                <input type="button" value="Terminar"><br>
            </font>
            </a>
            <font face="Arial">
            <br>
            </font>
            <a href="ingresaCliente.jsp?accion=eliminarCarrito">
                <font face="Arial">
                <input type="button" value="Nuevo Pedido"><br>
            </font>
            </a>
        </div>
    </body>
</html>
