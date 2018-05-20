<%--
  Created by IntelliJ IDEA.
  User: hoang
  Date: 2018-05-20
  Time: 9:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    request.setAttribute("assets",  new StringBuilder().append(request.getRequestURL().toString().replace(request.getRequestURI(), "")).append("/assets/").toString());
%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>${title}</title>
    <link rel="icon" href="/favicon.ico" type="image/x-icon">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,700&subset=latin,cyrillic-ext" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" type="text/css">
    <!-- Bootstrap Core Css -->
    <link href="${assets}plugins/bootstrap/css/bootstrap.css" rel="stylesheet">
    <!-- Waves Effect Css -->
    <link href="${assets}plugins/node-waves/waves.css" rel="stylesheet" />
    <!-- Animation Css -->
    <link href="${assets}plugins/animate-css/animate.css" rel="stylesheet" />
    <!-- Custom Css -->
    <link href="${assets}css/style.css" rel="stylesheet">
</head>
<body class="${bodyClass}">
<c:import url="${content}" />

<!-- Jquery Core Js -->
<script src="${assets}plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap Core Js -->
<script src="${assets}plugins/bootstrap/js/bootstrap.js"></script>
<!-- Waves Effect Plugin Js -->
<script src="${assets}plugins/node-waves/waves.js"></script>
<!-- Validation Plugin Js -->
<script src="${assets}plugins/jquery-validation/jquery.validate.js"></script>
<!-- Custom Js -->
<script src="${assets}js/admin.js"></script>
<!-- Extra script -->
<c:if test="${extraScript != null}">
    <c:forEach var="escript" items="${extraScript}">
        <script type="text/javascript" src="${assets}${escript}"></script>
    </c:forEach>
</c:if>
<!-- /Extra script -->
</body>
</html>
