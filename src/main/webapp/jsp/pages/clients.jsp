<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>clients</title>
    <link rel="stylesheet" href="/lib/css/main.css">
</head>
<body>
    <tags:navbar/>
    <header>
        <div>All Clients</div>
    </header>
    <div>
        <table>
            <thead>
                <tr>
                    <th>login</th>
                    <th>last name</th>
                    <th>first name</th>
                    <th>status</th>
                    <c:if test = "${status eq 'ADMIN'}"><th></th></c:if>
                </tr>
            <tbody>
            <c:forEach items="${clients}" var="client">
                <tr>
                    <td><c:out value="${client.login}"></c:out></td>
                    <td><c:out value="${client.lastName}"></c:out></td>
                    <td><c:out value="${client.firstName}"></c:out></td>
                    <td><c:out value="${client.status}"></c:out></td>
                    <c:if test = "${status eq 'ADMIN'}">
                        <td>
                            <form action="/block" method="get">
                                <button class="block" type="submit" name="login" value="<c:out value="${client.login}"></c:out>">1</button>
                            </form>
                        </td>
                    </c:if>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>
