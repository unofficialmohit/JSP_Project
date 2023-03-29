<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import="java.text.SimpleDateFormat,java.util.Date"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <link rel="stylesheet" type"text/css" href="style.css">
    </head>
    <body>
<form action="indexpage.jsp" method="POST">  
    Username&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="text" name="uname" placeholder="User Name Here" required/><br> <br> 
User Password&nbsp;&nbsp;&nbsp;&nbsp;
<input type="password" name="upass" placeholder="User Password Here" required/><br><br> 
Password 2(Date)<input type="text" name="udate" placeholder="Today Date Here" required/><br><br> <br><br>
<button type="submit" value="login"/>Submit</button>
</form>
  
    </body>
</html>
