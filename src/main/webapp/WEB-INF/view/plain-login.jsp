<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: roman
  Date: 16.08.18
  Time: 13:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Custom Login page</title>
    <style> .failed{color: red} </style>
</head>
<body>
<h3>My Custom Login Page</h3>

<form:form action="${pageContext.request.contextPath}/authenticateTheUser" method="POST">

    <%--Check for login error--%>
    <c:if test="${param.error != null}">

        <i class="failed"> Sorry! You entered invalid username or password </i>

    </c:if>
    <p>
        User name: <input type="text" name="username"/>
    </p>


    <p>
        Password  : <input type="password" name="password"/>
    </p>

    <input type="submit" value="Login"/>


</form:form>

</body>
</html>
