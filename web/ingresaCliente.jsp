<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%-- Importaciones --%>
<%@page import="java.util.*"%>
<%@page import="ar.com.educacionit.webprogramming.sessions.database.*"%>
<%@page import="ar.com.educacionit.webprogramming.sessions.entities.*"%>
<%@page import="ar.com.educacionit.webprogramming.sessions.controllers.*"%>

<jsp:useBean class="ar.com.educacionit.webprogramming.sessions.entities.ShoppingCart" id="carrito" scope="session" />
<%-- Uso de un bean para el formulario --%>
<jsp:useBean class="ar.com.educacionit.webprogramming.sessions.beans.UsuarioBean" id="loginForm" />
<jsp:setProperty name="loginForm" property="*" />

<%
// Controla que exista la sesion de usuario
    if (session.getAttribute("user") == null) {
        response.sendRedirect("index.jsp");
    }
%>

<%
    ReadClientesXls rCliente = new ReadClientesXls();
    String rs = null;
    String localidad = null;
%>

<%
    if (request.getParameter("accion") != null && request.getParameter("accion").equals("eliminarCarrito")) {
        carrito.quitarTodosLosItems();
        carrito.setPalletsTotal(0);
    }
// Si la accion es "agregar_al_carrito", agrega el item
    if (request.getParameter("accion") != null && request.getParameter("accion").equals("check")) {
        //System.out.println(request.getParameter("accion"));

        rs = rCliente.getRS("/home/alvaro/Dropbox/NetBeansProjects/WebPedidosADA/web/archivos/maestroClientes.xls", Integer.parseInt(request.getParameter("cliente")), Integer.parseInt(request.getParameter("sucursal")));
        localidad = rCliente.getLocalidad("/home/alvaro/Dropbox/NetBeansProjects/WebPedidosADA/web/archivos/maestroClientes.xls", Integer.parseInt(request.getParameter("cliente")), Integer.parseInt(request.getParameter("sucursal")));

    }

// Obtiene los electrodomesticos
    ArrayList clientes = VentasController.obtenerClientes();
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
            <h4 class="mb-3">Ingrese datos del cliente</h4>
            <%
                if (request.getParameter("accion") != null && request.getParameter("accion").equals("check")) {
            %>
            <form class="needs-validation" novalidate method="POST" action='ingresaCliente.jsp?accion=check'>
                <div class="row">
                    <div class="col">
                        <label for="cliente">Nro Cliente</label>
                        <input name="cliente" type="text" class="form-control" id="cliente" placeholder="" value='<%=request.getParameter("cliente")%>' required>
                        <div class="invalid-feedback">
                            Valid cliente is required.
                        </div>
                    </div>
                    <div class="col">
                        <label for="sucursal">Sucursal</label>
                        <input name=sucursal type="text" class="form-control" id="sucursal" placeholder="" value='<%=request.getParameter("sucursal")%>' required>
                        <div class="invalid-feedback">
                            Valid sucursal is required.
                        </div>
                    </div>
                </div>
                <br>
                <div class="row">
                    <div class="col">
                        <label for="oc">OC</label>
                        <input name="oc" type="text" class="form-control" id="oc" placeholder="" value='<%=request.getParameter("oc")%>' required>
                        <div class="invalid-feedback">
                            Valid OC is required.
                        </div>
                    </div>
                    <div class="col">
                        <label for="fechae">Fecha entrega</label>
                        <input name="fechae" type="text" class="form-control" id="fechae" placeholder="" value='<%=request.getParameter("fechae")%>' required>
                        <div class="invalid-feedback">
                            Valid Fecha entrega is required.
                        </div>
                    </div>
                </div>
                <br>
                <div class="row">
                    <font face="Arial">
                    <button type="submit" class="btn btn-info">Check</button>
                    </font>
                    <a href="bienvenido.jsp?accion=datosCliente&cliente=<%=request.getParameter("cliente")%>&sucursal=<%=request.getParameter("sucursal")%>&oc=<%=request.getParameter("oc")%>&rs=<%=rs%>&localidad=<%=localidad%>&fechae=<%=request.getParameter("fechae")%>">
                        <font face="Arial">
                        <button type="button" class="btn btn-info">Siguiente -></button>
                        </font>
                    </a>
                </div>

            </form>

            <div align="center">
                <table class="table table-dark">
                    <thead>
                        <tr>
                            <th scope="col">Razon Social</th>
                            <th scope="col">Localidad</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><%=rs%></td>
                            <td><%=localidad%></td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <%        } else {
            %>

            <form class="needs-validation" novalidate method="POST" action='ingresaCliente.jsp?accion=check'>
                <div class="row">
                    <div class="col">
                        <label for="cliente">Nro Cliente</label>
                        <input name="cliente" type="text" class="form-control" id="cliente" placeholder="" value="0" required>
                        <div class="invalid-feedback">
                            Valid cliente is required.
                        </div>
                    </div>
                    <div class="col">
                        <label for="sucursal">Sucursal</label>
                        <input name="sucursal" type="text" class="form-control" id="sucursal" placeholder="" value="0" required>
                        <div class="invalid-feedback">
                            Valid sucursal is required.
                        </div>
                    </div>
                </div>
                <br>
                <div class="row">
                    <div class="col">
                        <label for="oc">OC</label>
                        <input name="oc" type="text" class="form-control" id="oc" placeholder="" value="0" required>
                        <div class="invalid-feedback">
                            Valid OC is required.
                        </div>
                    </div>
                    <div class="col">
                        <label for="fechae">Fecha entrega</label>
                        <input name="fechae" type="text" class="form-control" id="fechae" placeholder="" value="0" required>
                        <div class="invalid-feedback">
                            Valid Fecha entrega is required.
                        </div>
                    </div>
                </div>

                <br>
                <div class="row">
                    <font face="Arial">
                    <button type="submit" class="btn btn-info">Check</button>
                    <br>
                    </font>
                </div>

            </form>
            <%        }
            %>


            <select>
                <option>Elige un cliente</option>
                <%  // Informa los items si hay al menos uno
                    if (clientes.size() != 0) {
                        // Variables
                        Iterator it = clientes.iterator();

                        // Informa los datos de cada item
                        while (it.hasNext()) {
                            Cliente c = (Cliente) it.next();
                            %>
                            <option value="<%=c.getNroCliente()%>"><%=c.getRazonSocial()%></option>
                            <%
                        }
                    }
                %>
            </select>

        </main>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script>window.jQuery || document.write('<script src="../assets/js/vendor/jquery.slim.min.js"><\/script>')</script><script src="../assets/dist/js/bootstrap.bundle.js"></script></body>

</body>
</html>
