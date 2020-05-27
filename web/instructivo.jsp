<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%-- Importaciones --%>
<%@page import="java.util.*"%>
<%@page import="ar.com.educacionit.webprogramming.sessions.controllers.*"%>
<%@page import="ar.com.educacionit.webprogramming.sessions.entities.*"%>
<%@page import="ar.com.educacionit.webprogramming.sessions.database.*"%>

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
    <body bgcolor="#8AB8D4"text="#FFFFFF">
        <jsp:include page="encabezado.jsp" />
        <a href="ingresaCliente.jsp">
            <font face="Arial">
            <div align="right"><input type="button" value="      Volver      "></div>
            </font>
        </a>
        <div align="center">
            <iframe width="640" height="360" src="//www.youtube.com/embed/-CcifxYYJYc?feature=player_detailpage" frameborder="0" allowfullscreen></iframe>
        </div>
    </body>
</html>
