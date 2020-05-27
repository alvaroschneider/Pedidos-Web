<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%-- Importaciones --%>
<%@page import="java.util.*"%>
<%@page import="ar.com.educacionit.webprogramming.sessions.controllers.*"%>
<%@page import="ar.com.educacionit.webprogramming.sessions.entities.*"%>
<%@page import="ar.com.educacionit.webprogramming.sessions.database.*"%>


<%
// Constrola que exista la sesion de usuario
    if (session.getAttribute("user") == null) {
        response.sendRedirect("index.jsp");
    }

    Usuario user;
    user = (Usuario) session.getAttribute("user");
    Vector pedidos = PersistData.getPedidos(user.getId());
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Proyecto - Gestor de Pedidos</title>
        <style type="text/css">
            .ms-3deff2-main {
                border-style: none;
                background-color: silver;
            }
            .ms-3deff2-tl {
                font-weight: bold;
                color: black;
                border-left-style: none;
                border-right-style: none;
                border-top: .75pt solid white;
                border-bottom-style: none;
            }
            .ms-3deff2-left {
                font-weight: normal;
                color: black;
                border-style: none;
            }
            .ms-3deff2-top {
                font-weight: bold;
                color: black;
                border-left-style: none;
                border-right-style: none;
                border-top: .75pt solid white;
                border-bottom-style: none;
            }
            .ms-3deff2-even {
                font-weight: normal;
                color: black;
                border-left-style: none;
                border-right-style: none;
                border-top: .75pt solid white;
                border-bottom-style: none;
            }
            .style1 {
                color: #0000FF;
                font-weight: bold;
                font-size: medium;
            }
        </style>
    </head>
    <body>
        <jsp:include page="encabezado.jsp" />
        <main role="main" class="container">
            <a href="ingresaCliente.jsp">
                <font face="Arial">
                <div align="right"><input type="button" value="      Volver      "></div>
                </font>
            </a>
            <div align="center">
                <font face="Arial"><h2 class="style1">Listado de pedidos</h2></font>
                
                
                
                <table class="table table-dark">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Nro Pedido</th>
                            <th scope="col">Cliente</th>
                            <th scope="col">Sucursal</th>
                            <th scope="col">Razon Social</th>
                            <th scope="col">OC</th>
                            <th scope="col">Fecha pedido</th>
                            <th scope="col">Fecha entrega</th>
                            <th scope="col">Pallets pedidos</th>
                        </tr>
                    </thead>
                    <tbody>
                    <%
                        // Informa los items si hay al menos uno
                        if (pedidos.size() != 0) {
                            // Variables
                            Iterator it = pedidos.iterator();
                            int contador = 0;

                            // Informa los datos de cada item
                            while (it.hasNext()) {
                                contador++;
                                PedidosUsuario pu = (PedidosUsuario) it.next();
                    %>
                        <tr>
                            <th scope="row"><%=contador%></th>
                            <td><%=pu.getNro()%></td>
                            <td><%=pu.getCliente()%></td>
                            <td><%=pu.getSucursal()%></td>
                            <td><%=pu.getRs()%></td>
                            <td><%=pu.getOc()%></td>
                            <td><%=pu.getFecha()%></td>
                            <td><%=pu.getFechaEntrega()%></td>
                            <td><%=pu.getPallets()%></td>
                        </tr>
                        <%
                                }
                            }
                        %>
                    </tbody>
                </table>

            </div>
        </main>

    </body>
</html>
