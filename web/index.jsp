<%-- 
    Document   : mainpage
    Created on : 1 Mar, 2023, 8:30:49 PM
    Author     : ak542
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import="java.text.SimpleDateFormat,java.util.Date"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
<form action="indexpage.jsp">  
Username<input type="text" name="uname" required/><br/>  
User Password<input type="password" name="upass" required/><br/> 
Password 2(Date)<input type="text" name="udate" required/><br/> 
<input type="submit" value="login"/>  
</form>
  
    </body>
</html>
