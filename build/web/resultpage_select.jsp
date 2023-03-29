<%@page import="java.sql.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Page</title>
<link rel="stylesheet" type"text/css" href="style.css">
</head>
<body> 
<%
    String comp= request.getParameter("companies");
    String syear=request.getParameter("syear");
    syear=syear.substring(0,4);
     String url="jdbc:derby://localhost:1527/mohit0001";
        String username="mohit";
        String password="mohit";
        try{
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection connection=DriverManager.getConnection(url,username,password);
            Statement statement=connection.createStatement();
            ResultSet resultset=statement.executeQuery("select * from compdata where cname='"+comp+"' and yearr='"+syear+"'");
%>
<form action="user_profile.jsp">
<select name="result" id="result"> 
<%
            while(resultset.next())
            {%> 
            <option value="<%=resultset.getInt(("id"))%>"><%=resultset.getInt(("id"))+"----------------------> "+resultset.getString(("sname"))%></option>
            <%}%>
</select>
            <input type="submit" value="Submit" />
            </form>
<%
       connection.close();
        }
        catch(Exception e)
        {
            out.println(e);
        }
    %>
        </body>
</html>