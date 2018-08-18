<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>luv2code Company Home Page</title>
</head>
<body>
<h2>luv2code Company Home Page Yooohoo</h2>
<hr>
<p>
    Welcome to the luv2code Company Home Page
</p>

<hr>
<%--Display user name and role--%>

<p>
    User: <security:authentication property="principal.username"/>
    <br><br>
    Role(s): <security:authentication property="principal.authorities"/>

</p>



    <security:authorize access="hasRole('MANAGER')">
        <%--Add a link to point /leaders--%>
<p>
        <hr>
        <a href="${pageContext.request.contextPath}/leaders">Leadership Meeting</a>
    (Only for managers peeps)
        <br>
    </security:authorize>

    <security:authorize access="hasRole('ADMIN')">
        <%--Add a link to point /systems--%>
    <a href="${pageContext.request.contextPath}/systems">IT Systems Meeting</a>
    (Only for Admins peeps)
        <hr>
    </security:authorize>
</p>


<%--Add d logout button--%>
<form:form action="${pageContext.request.contextPath}/logout" method="post">

    <input type="submit" value="logout"/>
</form:form>
</body>
</html>
