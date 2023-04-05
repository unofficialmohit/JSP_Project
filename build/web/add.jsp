<%-- 
    Document   : signup
    Created on : 5 Apr, 2023, 7:54:41 PM
    Author     : ak542
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign up Page</title>
        <link rel="stylesheet" type"text/css" href="style.css">
    </head>
    <body>
        <form action="ssucess.jsp" method="POST">  
    Username&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="text" name="uname" placeholder="User Name Here" required/><br> <br> 

User ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="text" name="uid" placeholder="User ID Here" required/>
<br> <br>
Father Name &nbsp;&nbsp;
<input type="text" name="fname" placeholder="Father Name Here" required/><br><br> 
User Age&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="text" name="uage" placeholder="Age Here" required/><br><br>
Total Percent&nbsp;&nbsp;&nbsp;
<input type="text" name="uper" placeholder="Percentage Here" required/><br><br> 
Email Address
<input type="text" name="uemail" placeholder="Email Here" required/><br><br> 
Phone Number<input type="text" name="uphone" placeholder="Mobile Number Here" required/><br><br>
Company Name<select name='ucomp' style="margin-left: 4%;">
    <option>Microsoft</option>
    <option>Flipkart</option>
    <option>Google</option>
    <option>Netflix</option>
    <option>Amazon</option>
      
</select><br><br>
Select Year<select name='uyear' style="margin-left: 12%;">
    <option>2000-2001</option>
    <option>2001-2002</option>
    <option>2002-2003</option>
   <option>2003-2004</option>
   <option>2004-2005</option>
   <option>2005-2006</option>
   <option>2006-2007</option>
      
</select><br><br>
<button type="submit" value="login"/>Submit</button>
    </body>
</html>
