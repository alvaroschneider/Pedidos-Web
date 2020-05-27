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
<script language="JavaScript">
    <!--
    function FP_preloadImgs() {//v1.0
        var d = document, a = arguments;
        if (!d.FP_imgs)
            d.FP_imgs = new Array();
        for (var i = 0; i < a.length; i++) {
            d.FP_imgs[i] = new Image;
            d.FP_imgs[i].src = a[i];
        }
    }

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

    function FP_getObjectByID(id, o) {//v1.0
        var c, el, els, f, m, n;
        if (!o)
            o = document;
        if (o.getElementById)
            el = o.getElementById(id);
        else if (o.layers)
            c = o.layers; else if (o.all)
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
<script language="JavaScript">
    <!--
    function FP_preloadImgs() {//v1.0
        var d = document, a = arguments;
        if (!d.FP_imgs)
            d.FP_imgs = new Array();
        for (var i = 0; i < a.length; i++) {
            d.FP_imgs[i] = new Image;
            d.FP_imgs[i].src = a[i];
        }
    }

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
<script language="JavaScript">
    <!--
    function FP_preloadImgs() {//v1.0
        var d = document, a = arguments;
        if (!d.FP_imgs)
            d.FP_imgs = new Array();
        for (var i = 0; i < a.length; i++) {
            d.FP_imgs[i] = new Image;
            d.FP_imgs[i].src = a[i];
        }
    }

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
            c = o.layers; else if (o.all)
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
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%-- Obtiene el carrito de compras como session --%>
<body onload="FP_preloadImgs(/*url*/'buttonB.gif', /*url*/'buttonC.gif', /*url*/'imagen/buttonE.gif', /*url*/'imagen/buttonF.gif', /*url*/'imagen/button11.gif', /*url*/'imagen/button12.gif', /*url*/'imagen/button14.gif', /*url*/'imagen/button15.gif', /*url*/'imagen/otros42.gif', /*url*/'imagen/otros43.gif')">

    <jsp:useBean class="ar.com.educacionit.webprogramming.sessions.entities.ShoppingCart" id="carrito" scope="session" />

    <hr>
    <div align="right">
        <font face="Arial">
        <font size="2">
        <a href="<%=response.encodeURL("bienvenido.jsp")%>">
            <button type="button" class="btn btn-info">Ver pedido</button>
        </a>
        </font>
        <font size="2">

        <a href="<%=response.encodeURL("tipo1.jsp")%>">
            <!-- <img border="0" id="img2" src="imagen/buttonD.gif" height="30" width="150" alt="TIPO 1" onmouseover="FP_swapImg(1, 0, /*id*/'img2', /*url*/'imagen/buttonE.gif')" onmouseout="FP_swapImg(0, 0, /*id*/'img2', /*url*/'imagen/buttonD.gif')" onmousedown="FP_swapImg(1, 0, /*id*/'img2', /*url*/'imagen/buttonF.gif')" onmouseup="FP_swapImg(0, 0, /*id*/'img2', /*url*/'imagen/buttonE.gif')" fp-style="fp-btn: Glow Capsule 1; fp-transparent: 1" fp-title="TIPO 1">   -->
            <button type="button" class="btn btn-success">Tipo 1</button>
        </a>

        <a href="<%=response.encodeURL("tipo2.jsp")%>">
            <button type="button" class="btn btn-success">Tipo 2</button>
        </a>

        <a href="<%=response.encodeURL("tipo3.jsp")%>">
            <button type="button" class="btn btn-success">Tipo 3</button>
        </a>

        </font>

        <a href="<%=response.encodeURL("otros.jsp")%>">
            <button type="button" class="btn btn-success">Otros</button>
        </a></font></div>
