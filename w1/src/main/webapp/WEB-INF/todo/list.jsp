<%--
  Created by IntelliJ IDEA.
  User: beomsu
  Date: 25. 1. 20.
  Time: 오전 12:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>List Page</h1>


<c:set var="target" value="5"></c:set>

<ul>
    <c:forEach var ="num" begin="1" end="10">
        <c:if test="${num == target}">
            num is target
        </c:if>
    </c:forEach>
</ul>

</body>
</html>
