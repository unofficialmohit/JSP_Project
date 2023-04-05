<%@page import="java.sql.*" %>
<%
   
        String id=request.getParameter("uid");
       String sname=request.getParameter("uname");
       String father=request.getParameter("fname");
       String per=request.getParameter("uper");  
       String age=request.getParameter("uage"); 
       String email=request.getParameter("uemail");  
       String phone=request.getParameter("uphone");  
       String company=request.getParameter("ucomp");;
       String yearr=request.getParameter("uyear");;
       
       yearr= yearr.substring(0,4);
       int i=0;
    String url="jdbc:derby://localhost:1527/mohit0001";
    String username="mohit";
    String password="mohit";
    try
    {
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection con=DriverManager.getConnection(url,username,password);
        Statement st=con.createStatement();
        i=st.executeUpdate("insert into compdata values ('"+id+"','"+sname+"','"+company+"','"+yearr+"','"+father+"','"+per+"','"+age+"','"+email+"','"+phone+"')");
   con.close();
    }
    catch(Exception e)
    {%>
    <script LANGUAGE='JAVASCRIPT'>
    window.alert('ERROR <%=e%>');
    window.location.href='add.jsp';
    </script><%
    }   
if(i==0)
{%>
    
    <script LANGUAGE='JAVASCRIPT'>
    window.alert('Data Adding Failed');
    window.location.href='add.jsp';
    </script>
    ");
    <%
}
else
{%>
 <script LANGUAGE='JAVASCRIPT'>
    window.alert('Data Added Sucessfully');
    window.location.href='index.jsp';
    </script>
<%
    }
    %>