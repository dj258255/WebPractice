<%--
  Created by IntelliJ IDEA.
  User: beomsu
  Date: 25. 2. 23.
  Time: 오후 9:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%-- post 방식으로 login 경로로 로그인에 필요한 아이디와 패스워드 데이터를 전송하도록 구성 --%>
    <form action="/login" method="post">
        <input type="text" name="mid">
        <input type="text" name="mpw">
        <button type="submit">LOGIN</button>
    </form>
</body>
</html>
