<%--
  Created by IntelliJ IDEA.
  User: tolgasirvan
  Date: 30.06.17
  Time: 21:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<link>
<title>Log Verifier v1.0</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
      integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
      integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
        integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
        crossorigin="anonymous"></script>

<link rel="stylesheet" href="stylesheet.css"/>
</head>
<body>
<div class="container">

    <form class="form-signin" method="post" action="/verify" enctype="multipart/form-data">
        <h2 class="form-signin-heading">Verify your log data</h2>
        <label for="inputSecret" class="sr-only">Secret key</label>
        <input type="text" name="secret" id="inputSecret" class="form-control" placeholder="Secret key" required autofocus>
        <label class="control-label">Select File</label>
        <input id="inputFile" name="file" type="file" class="file" required autofocus>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Verify</button>
    </form>

</div>

</body>
</html>
