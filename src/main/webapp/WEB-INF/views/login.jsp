<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
  <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
  <title>Login</title>
</head>
<body>
<h4 style="color: red">${errorMsg}</h4>
<form method="post" id="login" action="${pageContext.request.contextPath}/login"></form>
<h1 class="table_dark">Login page</h1>
<table border="1" class="table_dark">
  <td>
    Please enter your login: <input type="text" name="login" form="login" required>
  </td>
  <td>
    Please enter your password: <input type="password" name="password" form="login" required>
  </td>
  <td>
    <a href="${pageContext.request.contextPath}/drivers/add"><button>Register</button></a>
  </td>
  <td>
    <button type="submit" name="login" form="login">Login</button>
  </td>

</table>
</body>
</html>
