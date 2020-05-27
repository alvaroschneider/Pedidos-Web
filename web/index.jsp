<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%-- Importaciones --%>
<%@page import="ar.com.educacionit.webprogramming.sessions.database.*"%>
<%@page import="ar.com.educacionit.webprogramming.sessions.entities.*"%>

<%-- Uso de un bean para el formulario --%>
<jsp:useBean class="ar.com.educacionit.webprogramming.sessions.beans.UsuarioBean" id="loginForm" />
<jsp:setProperty name="loginForm" property="*" />

<%
    // Construye un mensaje
    String mensaje = "";
    // Si la acción es login...
    if (loginForm.getAccion().equals("login")) {
        // Establece el mensaje
        mensaje = "El usuario no coincide con la contraseña";

        // Obtiene el usuario
        Usuario user = Usuario.obtener(ConnectionManager.getConnection(), loginForm.getUsername(), loginForm.getPassword());

        // Si el usuario es valido...
        if (user != null) {
            // Guarda al usuario como session
            session.setAttribute("user", user);

            // Redirecciona el usuario a bienvenido.jsp
            response.sendRedirect(response.encodeRedirectURL("ingresaCliente.jsp"));
        }
    }

    // Si la accion es logout...
    if (loginForm.getAccion().equals("logout")) {
        session.invalidate();
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>Proyecto - Gestor de Pedidos</title>

        <script src="js/bootstrap.min.js"></script> 
        <link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/sign-in/">

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
        <link href="css/signin.css" rel="stylesheet">
    </head>
    <body class="text-center">
<!--
        <div align=center>
            <form method="POST" action="index.jsp">
                <input type="hidden" name=accion value=login>
                username: <input type="text" name=username>
                <br><br>
                password: <input type="password" name=password>
                <br>
                <hr>
                <input type=submit value=Login><br>
                <font color="red"><%=mensaje%></font>
            </form>
        </div>
-->
        <form class="form-signin" method="POST" action="index.jsp">
            <input type="hidden" name=accion value=login>
            <img class="mb-4" src="/imagen/brand/bootstrap-solid.svg" alt="" width="72" height="72">
            <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
            <label for="inputEmail" class="sr-only">Usuario</label>
            <input type="text" id="inputEmail" class="form-control" placeholder="username" required autofocus name="username">
            <label for="inputPassword" class="sr-only">Password</label>
            <input type="password" id="inputPassword" class="form-control" placeholder="password" required name="password">
            <div class="checkbox mb-3">
                <label>
                    <input type="checkbox" value="remember-me"> Remember me
                </label>
            </div>
            <button class="btn btn-lg btn-primary btn-block" type="submit" value="Login">Sign in</button>
            <p class="mt-5 mb-3 text-muted">&copy; 2017-2020</p>
        </form>
    </body>
</html>
