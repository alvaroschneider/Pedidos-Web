<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%-- Importaciones --%>
<%@page import="java.util.*"%>
<%@page import="ar.com.educacionit.webprogramming.sessions.controllers.*"%>
<%@page import="ar.com.educacionit.webprogramming.sessions.entities.*"%>

<%
// Constrola que exista la sesion de usuario
    if (session.getAttribute("user") == null) {
        response.sendRedirect("index.jsp");
    }

// Obtiene los productos de bazaar
    ArrayList items = VentasController.obtenerTipo2();

%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Proyecto - Gestor de Pedidos</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">   		
        <script src="js/vendor/bootstrap.min.js"></script> 
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
                color: #008000;
                font-weight: bold;
                font-size: medium;
            }
        </style>
    </head>
    <body bgcolor="#8AB8D4"text="#FFFFFF">
        <jsp:include page="encabezado.jsp" />


        <main role="main" class="container">
            <jsp:include page="datosCliente.jsp" />
            <jsp:include page="barraDeLinks.jsp" />
            <div align="center">
                <font face="Arial"><h2 class="style1">Flia Tipo 2</h2></font>



                <table class="table table-dark">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Cod</th>
                            <th scope="col">Descripcion</th>
                            <th scope="col">Pallet</th>
                            <th scope="col">Camada</th>
                            <th scope="col">Litros</th>
                            <th scope="col">Cant</th>
                            <th scope="col">Carrito</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%                    // Informa los items si hay al menos uno
                            if (items.size() != 0) {
                                // Variables
                                Iterator it = items.iterator();
                                int contador = 0;

                                // Informa los datos de cada item
                                while (it.hasNext()) {
                                    contador++;
                                    Producto p = (Producto) it.next();
                        %>
                        <tr>
                            <th scope="row"><%=contador%></th>
                            <td><%=p.getId()%></td>
                            <td><%=p.getDetalle()%></td>
                            <td><%=p.getPallet()%></td>
                            <td><%=p.getCamada()%></td>
                            <td><%=p.getLitros()%></td>
                            <td><%=p.getLitros()%></td>
                            <td><a href=ingresaCantidad.jsp?accion=calcular&id=<%=p.getId()%>>Agregar</a></td>
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
