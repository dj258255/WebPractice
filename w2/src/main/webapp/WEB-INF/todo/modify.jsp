<%--
  Created by IntelliJ IDEA.
  User: beomsu
  Date: 25. 2. 9.
  Time: 오후 4:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Todo Modify/Remove </title>
</head>
<body>

<form id="form1" action="/todo/modify" method="post">
    <div>
        <input type="text" name="tno" value="${dto.tno}" readonly>
    </div>
    <div>
        <input type="text" name="title" value="${dto.title}" >
    </div>
    <div>
        <input type="date" name ="date" value="${dto.dueDate}">
    </div>
    <div>
        <input type="checkbox" name = "finished" ${dto.finished ? "checked" : ""}>
    </div>

    <div>
        <button type="submit">Modify</button>
    </div>
</form>

<form id="form2" action="/todo/remove" method ="post">
    <%-- tno 값이 보이지 않도록 <input type='hidden'> 으로 처리 --%>
    <input type="hidden" name="tno" value="${dto.tno}" readonly>
    <div>
        <button type="submit">Remove</button>
    </div>
</form>


</body>
</html>
