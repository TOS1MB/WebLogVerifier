<%--
  Created by IntelliJ IDEA.
  User: tolgasirvan
  Date: 04.07.17
  Time: 16:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <link rel="icon" type="image/ico" href="favicon.ico">
    <style>body {
        background-color: #2F3242;
    }

    svg {
        position: absolute;
        top: 50%;
        left: 50%;
        margin-top: -250px;
        margin-left: -400px;
    }

    .container {
        height: 200px;
        width: 380px;
        position: absolute;
        top: 50%;
        left: 50%;
        margin-top: -100px;
        margin-left: 50px;
        color: #FFF;
        font-family: Roboto;
        font-weight: 300;
    }

    .container h2 {
        font-size: 60px;
        line-height: 46px;
        margin-bottom: 40px;
    }

    #Polygon-1, #Polygon-2, #Polygon-3, #Polygon-4, #Polygon-4, #Polygon-5 {
        animation: float 1s infinite ease-in-out alternate;
    }

    #Polygon-2 {
        animation-delay: .2s;
    }

    #Polygon-3 {
        animation-delay: .4s;
    }

    #Polygon-4 {
        animation-delay: .6s;
    }

    #Polygon-5 {
        animation-delay: .8s;
    }

    @keyframes float {
        100% {
            transform: translateY(20px);
        }
    }

    @media (max-width: 450px) {
        svg {
            position: absolute;
            top: 50%;
            left: 50%;
            margin-top: -250px;
            margin-left: -190px;
        }

    }

    .form-signin {
        max-width: 330px;
        padding: 15px;
        margin: 0 auto;
    }

    .form-signin .form-signin-heading {
        margin-bottom: 10px;
    }

    .form-signin .form-control {
        position: relative;
        height: auto;
        -webkit-box-sizing: border-box;
        -moz-box-sizing: border-box;
        box-sizing: border-box;
        padding: 10px;
        font-size: 16px;
        margin-bottom: 10px;
    }

    .form-signin .form-control:focus {
        z-index: 2;
    }

    .form-signin input {
        margin-bottom: 10px;
        border-bottom-right-radius: 0;
        border-bottom-left-radius: 0;
    }

    .btn-primary {
        background-color: #68c950;
    }

    .error-msg {
        color: #D8000C;
        background-color: #FFBABA;
    }

    .success-msg {
        color: #270;
        background-color: #DFF2BF;
    }

    .success-msg,
    .error-msg {
        margin: 10px 0;
        padding: 10px;
        border-radius: 3px 3px 3px 3px;
    }
    </style>
</head>
<body>
<svg width="380px" height="500px" viewBox="0 0 837 1045" version="1.1" xmlns="http://www.w3.org/2000/svg"
     xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:sketch="http://www.bohemiancoding.com/sketch/ns">
    <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd" sketch:type="MSPage">
        <path d="M353,9 L626.664028,170 L626.664028,487 L353,642 L79.3359724,487 L79.3359724,170 L353,9 Z"
              id="Polygon-1" stroke="#007FB2" stroke-width="6" sketch:type="MSShapeGroup"></path>
        <path d="M78.5,529 L147,569.186414 L147,648.311216 L78.5,687 L10,648.311216 L10,569.186414 L78.5,529 Z"
              id="Polygon-2" stroke="#EF4A5B" stroke-width="6" sketch:type="MSShapeGroup"></path>
        <path d="M773,186 L827,217.538705 L827,279.636651 L773,310 L719,279.636651 L719,217.538705 L773,186 Z"
              id="Polygon-3" stroke="#795D9C" stroke-width="6" sketch:type="MSShapeGroup"></path>
        <path d="M639,529 L773,607.846761 L773,763.091627 L639,839 L505,763.091627 L505,607.846761 L639,529 Z"
              id="Polygon-4" stroke="#F2773F" stroke-width="6" sketch:type="MSShapeGroup"></path>
        <path d="M281,801 L383,861.025276 L383,979.21169 L281,1037 L179,979.21169 L179,861.025276 L281,801 Z"
              id="Polygon-5" stroke="#36B455" stroke-width="6" sketch:type="MSShapeGroup"></path>
    </g>
</svg>
<!--
<div class="message-box">
    <h1>Log data is corrupt!</h1>
    <div class="buttons-con">
        <div class="action-link-wrap">
            <a href="index.jsp" class="link-button">Back</a>
        </div>
    </div>
</div>-->
<div class="container">

    <form class="form-signin" method="post" action="/verify" enctype="multipart/form-data">
        <h2 class="form-signin-heading">Verify your log data</h2>
        <label for="inputSecret" class="sr-only">Secret key</label>
        <input type="text" name="secret" id="inputSecret" class="form-control" placeholder="Secret key" required
               autofocus>
        <label class="control-label">Select File</label>
        <input id="inputFile" name="file" type="file" class="file" required autofocus>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Verify</button>
    </form>
    <%
        if (request.getParameter("isValid") != null) {
            if (request.getParameter("isValid").equals("true")) {
    %>
    <div class="success-msg">
        <i class="fa fa-check"></i>
        This is a success message.
    </div>
    <%
    } else { %>
    <div class="error-msg">
        <i class="fa fa-times-circle"></i>
        This is a error message.
    </div>
    <%
            }
        }%>
</div>
</body>
</html>