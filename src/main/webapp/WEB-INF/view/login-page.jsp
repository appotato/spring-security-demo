<%--
  Created by IntelliJ IDEA.
  User: Hoan
  Date: 16.12.2019
  Time: 10:08
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Login Page</title>
</head>
<body>

    <h3>Login Page</h3>

    <form:form action="${pageContext.request.contextPath}/authenticateUser" method="post">
        <c:if test="${param.error != null}">
            <i>Invalid Username/Password</i>
        </c:if>
        <c:if test="${param.logout != null}">
            <i>You have been logged out</i>
        </c:if>
        <p>
            User name: <input type="text" name="username">
        </p>
        <p>
            Password: <input type="password" name="password">
        </p>
        <input type="submit" value="Login"/>
    </form:form>

</body>
</html>
