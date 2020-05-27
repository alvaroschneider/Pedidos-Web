<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%-- Importaciones --%>
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
    DecimalFormat decimal = new DecimalFormat("0.00");
    DecimalFormat sinDecimal = new DecimalFormat("0");

    ObtenerFechaActual ofa = new ObtenerFechaActual();
    String fecha = ofa.obtenerFecha();
    String hora = ofa.obtenerHora();
    Usuario user;

//System.out.println(dia+"/"+mes+"/"+anio);
    if (request.getParameter("accion") != null && request.getParameter("accion").equals("datosCliente")) {
        dc.setCliente(Integer.parseInt(request.getParameter("cliente")));
        dc.setSucursal(Integer.parseInt(request.getParameter("sucursal")));
        dc.setOc(Integer.parseInt(request.getParameter("oc")));
        dc.setRs(request.getParameter("rs"));
        dc.setLocalidad(request.getParameter("localidad"));
        dc.setFecha(fecha);
        dc.setHora(hora);
        dc.setFechae(request.getParameter("fechae"));

        user = (Usuario) session.getAttribute("user");

        pd.insertarCabeceraConFecha(dc.getCliente(), dc.getSucursal(), dc.getOc(), dc.getFecha(), dc.getHora(), dc.getFechae(), user.getId());
        dc.setNroPedido(pd.getIdPedido());
    }

// Controla que exista la sesion de usuario
    if (session.getAttribute("user") == null) {
        response.sendRedirect("index.jsp");
    }
%>

<%
// Si la accion es "agregar_al_carrito", agrega el item
    if (request.getParameter("accion") != null && request.getParameter("accion").equals("agregar_al_carrito")) {
        VentasController.agregarProductoAlCarrito(request, Integer.parseInt(request.getParameter("id")), Integer.parseInt(request.getParameter("cantFact")), Integer.parseInt(request.getParameter("cantSC")));
        System.out.println("Bienvenido SC: " + Integer.parseInt(request.getParameter("cantSC")));
    } // Si la accion es "agregar_al_carrito", agrega el item
    else if (request.getParameter("accion") != null && request.getParameter("accion").equals("quitar_del_carrito")) {
        VentasController.quitarProductoDelCarrito(request, Integer.parseInt(request.getParameter("id")), Integer.parseInt(request.getParameter("cantidad")));
        //System.out.println(carrito.getPalletsTotal());
    }
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Proyecto - Gestor de Pedidos</title>
        <link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/navbar-fixed/">
        <link rel="stylesheet" href="css/bootstrap.min.css">   		
        <script src="js/bootstrap.min.js"></script>   
        <script language="JavaScript">
            <!--
            function FP_swapImg() {//v1.0
                var doc = document, args = arguments, elm, n;
                doc.$imgSwaps = new Array();
                for (n = 2; n < args.length;
                        n += 2) {
                    elm = FP_getObjectByID(args[n]);
                    if (elm) {
                        doc.$imgSwaps[doc.$imgSwaps.length] = elm;
                        elm.$src = elm.src;
                        elm.src = args[n + 1];
                    }
                }
            }

            function FP_preloadImgs() {//v1.0
                var d = document, a = arguments;
                if (!d.FP_imgs)
                    d.FP_imgs = new Array();
                for (var i = 0; i < a.length; i++) {
                    d.FP_imgs[i] = new Image;
                    d.FP_imgs[i].src = a[i];
                }
            }

            function FP_getObjectByID(id, o) {//v1.0
                var c, el, els, f, m, n;
                if (!o)
                    o = document;
                if (o.getElementById)
                    el = o.getElementById(id);
                else if (o.layers)
                    c = o.layers;
                else if (o.all)
                    el = o.all[id];
                if (el)
                    return el;
                if (o.id == id || o.name == id)
                    return o;
                if (o.childNodes)
                    c = o.childNodes;
                if (c)
                    for (n = 0; n < c.length; n++) {
                        el = FP_getObjectByID(id, c[n]);
                        if (el)
                            return el;
                    }
                f = o.forms;
                if (f)
                    for (n = 0; n < f.length; n++) {
                        els = f[n].elements;
                        for (m = 0; m < els.length; m++) {
                            el = FP_getObjectByID(id, els[n]);
                            if (el)
                                return el;
                        }
                    }
                return null;
            }
            // -->
        </script>
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

                <!-- Custom styles for this template -->
  <link href="css/navbar-top-fixed.css" rel="stylesheet">
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
    </head>

    <body>
            <jsp:include page="encabezado.jsp"/>

        <main role="main" class="container">
            <jsp:include page="datosCliente.jsp" />
            <jsp:include page="barraDeLinks.jsp" />



            <div align="center">
                <b><font color="green" face="Arial"><h3>Estado del Pedido</h3></font></b>
                <font face="Arial">
                <%
                    if (carrito.getProductos().size() == 0) {
                        out.println("El Pedido está vacío...");
                    } else {
                %>
                Pallets pedidos: <font color="blue"><b><%=decimal.format(carrito.getPalletsTotal())%></b></font>    Camadas pedidas: <font color="blue"><b><%=sinDecimal.format(carrito.getCamadaEntera())%></b></font>     Pick: <font color="blue"><b><%=carrito.getPickTotal()%></b></font><br><br>
                </font>



                <table class="table table-dark">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Cod</th>
                            <th scope="col">Descripcion</th>
                            <th scope="col">Cant pedida</th>
                            <th scope="col">Cant SC</th>
                            <th scope="col">Cant pallets</th>
                            <th scope="col">Cant camadas</th>
                            <th scope="col">Acción</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            // Variables
                            Iterator it = carrito.getProductos().values().iterator();
                            int contador = 0;

                            DecimalFormat df = new DecimalFormat("0.00");

                            // Informa los datos de cada item
                            while (it.hasNext()) {
                                contador++;
                                ShoppingCartItem item = (ShoppingCartItem) it.next();
                                Producto p = item.getProducto();
                                //System.out.println("pag getPick: "+item.getPick());
                        %> 
                        <tr>
                            <th scope="row"><%=contador%></th>
                            <td><%=p.getId()%></td>
                            <td><%=p.getDetalle()%></td>
                            <td><%=item.getCantidad()%></td>
                            <td><%=item.getSc()%></td>
                            <td><%=df.format(((float) item.getCantidad() + (float) item.getSc()) / (float) p.getPallet())%></td>
                            <td><%=df.format(((float) item.getCantidad() + (float) item.getSc()) / (float) p.getCamada())%></td>
                            <td>                        
                                <a href=bienvenido.jsp?accion=quitar_del_carrito&id=<%=p.getId()%>&cantidad=<%=item.getCantidad()%> >quitar</a>
                                -
                                <a href=ingresaCantidad.jsp?accion=modificar&id=<%=p.getId()%>&cantidad=<%=item.getCantidad()%> >modificar</a>
                            </td>
                        </tr>
                        <%

                                }
                            }

                        %>

                </table>

            </div>
            <font face="Arial">
            <br>
            </font>
            <div align="right">
                <font face="Arial">
                <a href="exito.jsp?accion=persistir_pedido">
                    <button type="button" class="btn btn-primary">Generar pedido</button>
                </a>
                </font>
            </div>
        </main>

    </body>
</html>
