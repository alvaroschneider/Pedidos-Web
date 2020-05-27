<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%-- Obtiene el carrito de compras como session --%>
<jsp:useBean class="ar.com.educacionit.webprogramming.sessions.entities.ShoppingCart" id="carrito" scope="session" />
<jsp:useBean class="ar.com.educacionit.webprogramming.sessions.entities.DatosCliente" id="dc" scope="session" />
<jsp:useBean class="ar.com.educacionit.webprogramming.sessions.database.PersistData" id="pd" scope="session" />

<div align="left">

    <i><font face="Arial"><%=dc.getCliente()%> - </font> </i>
    <font face="Arial">
    <i><%=dc.getSucursal()%> - <%=dc.getRs()%> - <%=dc.getLocalidad()%> - OC: <%=dc.getOc()%> - NRO PEDIDO: <%=dc.getNroPedido()%></i>
    </font>

</div>
<HR SIZE="10">
