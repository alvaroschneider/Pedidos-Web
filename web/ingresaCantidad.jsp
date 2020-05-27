<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%-- Importaciones --%>
<%@page import="java.util.*"%>
<%@page import="ar.com.educacionit.webprogramming.sessions.entities.*"%>
<%@page import="ar.com.educacionit.webprogramming.sessions.controllers.*"%>

<%-- Obtiene el carrito de compras como session --%>
<jsp:useBean class="ar.com.educacionit.webprogramming.sessions.entities.ShoppingCart" id="carrito" scope="session" />
<jsp:useBean class="ar.com.educacionit.webprogramming.sessions.entities.Producto" id="p" scope="session" />



<%
// Controla que exista la sesion de usuario
    if (session.getAttribute("user") == null) {
        response.sendRedirect("index.jsp");
    }
%>

<%
// Si la accion es "agregar_al_carrito", agrega el item
    if (request.getParameter("accion") != null && request.getParameter("accion").equals("calcular")) {
        VentasController.agregarProductoAlCarrito(request, Integer.parseInt(request.getParameter("id")), 0, 0);

    } // Si la accion es "agregar_al_carrito", agrega el item
    else if (request.getParameter("accion") != null && request.getParameter("accion").equals("modificar")) {
        VentasController.quitarProductoDelCarrito(request, Integer.parseInt(request.getParameter("id")), Integer.parseInt(request.getParameter("cantidad")));
        VentasController.quitarProductoDelCarrito(request, Integer.parseInt(request.getParameter("id")), 0);
        VentasController.agregarProductoAlCarrito(request, Integer.parseInt(request.getParameter("id")), 0, 0);
    }
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Proyecto - Gestor de Pedidos</title>

        <script src="js/bootstrap.min.js"></script> 
        <link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/navbar-fixed/">

        <!-- Bootstrap core CSS -->
        <link href="css/bootstrap.css" rel="stylesheet">
        <style>
            .bd-placeholder-img {
                font-size: 1.125rem;
                text-anchor: middle;
                -webkit-user-select: none;
                -moz-user-select: none;
                -ms-user-select: none;
                user-select: none;
            }

            @media (min-width: 768px) {
                .bd-placeholder-img-lg {
                    font-size: 3.5rem;
                }
            }
        </style>
        <!-- Custom styles for this template -->
        <link href="css/navbar-top-fixed.css" rel="stylesheet">

        <SCRIPT LANGUAGE="JavaScript">

            function Enviar(form)
            {
                for (i = 0; i < form.elements.length; i++)
                {
                    if (form.elements[i].type == "text" && form.elements[i].value == "")
                    {
                        alert("Por favor ingrese la cantidad pedida");
                        form.elements[i].focus();
                        return false;
                    }
                }

                var cant = form.cantFact.value;
                if (isNaN(cant))
                {
                    alert("Ingrese un nro entero");
                    form.cantFact.focus();
                    return false;
                }

                form.submit();
            }

        </SCRIPT>
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
        </style>
    </head>
    <body>

        <jsp:include page="encabezado.jsp" />



        <main role="main" class="container">
            <jsp:include page="datosCliente.jsp" />
            <jsp:include page="barraDeLinks.jsp" />
            <div align="center">
                <b><font color="green" face="Arial"><h3>Cantidad por SKU</h3></font></b>
                <font face="Arial">
                <%
                    if (carrito.getProductos().size() == 0) {
                        out.println("El Pedido está vacío...");
                    } else {
                %>

                </font>



                <table class="table table-dark">
                    <thead>
                        <tr>
                            <th scope="col">Nombre</th>
                            <th scope="col">Descripcion</th>
                            <th scope="col">Tipo</th>
                            <th scope="col">Pallet</th>
                            <th scope="col">Camada</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            // Variables
                            Iterator it = carrito.getProductos().values().iterator();
                            int contador = 0;

                            // Informa los datos de cada item
                            while (it.hasNext()) {
                                contador++;
                                ShoppingCartItem item = (ShoppingCartItem) it.next();
                                Producto prod = item.getProducto();
                                if (prod.getId() == Integer.parseInt(request.getParameter("id"))) {
                                    p = prod;
                                }
                            }
                        %>
                        <tr>
                            <td><%=p.getNombre()%></td>
                            <td><%=p.getDetalle()%></td>
                            <td><%=p.getTipoAsString()%></td>
                            <td><%=p.getPallet()%></td>
                            <td><%=p.getCamada()%></td>
                        </tr>
                        <%
                            }
                        %>
                    </tbody>
                </table>

                <form action='bienvenido.jsp?accion=agregar_al_carrito&id=<%=p.getId()%>' method='POST' >
                    <font face="Arial">Ingrese cantidad Fact: <INPUT TYPE="text" NAME="cantFact" SIZE="5">
                    <font face="Arial">Ingrese cantidad SC: <INPUT TYPE="text" NAME="cantSC" SIZE="5" VALUE="0">
                    <input type='submit' value='Enviar' onClick="return Enviar(this.form)">
                    </font>
                </form>
            </div>
        </main>

    </body>
</html>
