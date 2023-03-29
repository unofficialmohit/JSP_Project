<%@page import="java.util.Date,java.text.SimpleDateFormat,java.sql.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Page</title>
<link rel="stylesheet" type"text/css" href="style.css">
</head>
<body>    
<%
SimpleDateFormat df=new SimpleDateFormat("ddMMyyyy");
Date d=new Date();
Boolean isallow=false;
String cdate=df.format(d);
String uname= request.getParameter("uname");
String upass = request.getParameter("upass");
String udate=request.getParameter("udate");
String url="jdbc:derby://localhost:1527/mohit0001";
String username="mohit";
String password="mohit";
try{
Class.forName("org.apache.derby.jdbc.ClientDriver");
Connection con=DriverManager.getConnection(url,username,password);
Statement stmt=con.createStatement();
ResultSet r0=stmt.executeQuery("select * from users");
while(r0.next())
{
if(uname.equals(r0.getString("uname")) && upass.equals(r0.getString("upassword")) && udate.equals(cdate))
{
isallow=true;
}
}
ResultSet r1=stmt.executeQuery("select * from cname");
if(isallow==true)
{%>
<form action="resultpage.jsp" method="POST">
<label for="comp">Company</label>
<select name="companies" id="comp">
<%while(r1.next())
{%>
<option value="<%=r1.getString("compname")%>"><%=r1.getString("compname")%></option>
<%}%>
</select><br>
<br>
<label for="syear">Year</label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<select name="syear" id="syr"> 
<%ResultSet r2=stmt.executeQuery("select * from cyear");
while(r2.next()){%>
<option value="<%=r2.getString("yearvalue")%>"><%=r2.getString("yearvalue")%></option>
<%}%>
</select><br><br>
<br>
<button type="submit"/>Submit</button>
</form>
<%}
else
{
out.println("ERROR");%>
<a href="index.jsp">LOGIN PAGE</a><%
}
}
catch(Exception ae)
{
out.println(ae);
}


%>
</body>
</html>