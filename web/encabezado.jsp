<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%-- Obtiene el carrito de compras como session --%>
<jsp:useBean class="ar.com.educacionit.webprogramming.sessions.entities.ShoppingCart" id="carrito" scope="session" />

<head>
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

    <header>
        <!-- Fixed navbar -->
        <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
            <a class="navbar-brand" href="#">Gestor de pedidos</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="bienvenido.jsp">Carrito <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="vistaPedidos.jsp">Pedidos</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
                    </li>

                </ul>
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="#"><%=session.getAttribute("user")%></a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="index.jsp?accion=logout">[Logout]</a>
                    </li>
                </ul>
            </div>
        </nav>
    </header>
</body>


