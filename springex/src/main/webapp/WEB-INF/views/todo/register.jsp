<%--
  Created by IntelliJ IDEA.
  User: beomsu
  Date: 25. 3. 6.
  Time: 오후 10:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <form action="/todo/register" method="post">
    <div>
      Title: <input type="text" name="title" >
    </div>
    <div>
      DueDate: <input type="date" name=dueDate" value="2022-12-25">
    </div>
    <div>
      Writer: <input type="text" name="writter">
    </div>
    <div>
      Finished: <input type="checkbox" name="finished">
    </div>
    <div>
      <button type="submit">Register</button>
    </div>
  </form>
</body>
</html>
