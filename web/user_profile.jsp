<%@page import="java.sql.*" %>
<% 
String result=request.getParameter("result");
     String url="jdbc:derby://localhost:1527/mohit0001";
        String username="mohit";
        String password="mohit";
        try{
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection con=DriverManager.getConnection(url,username,password);
            Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery("select * from compdata where id='"+result+"'");
            while(rs.next())
            {
                out.println("Id = "+rs.getString("id")) ;%><br>
                <%out.println("Name = "+rs.getString("sname"));%><br>
                <%out.println("Company Name = "+rs.getString("cname"));%><br>
                <%out.println("Year = "+rs.getString("yearr"));%><br>
                <%out.println("Father Name = "+rs.getString("fathername"));%><br>
                <%out.println("Percentage = "+rs.getString("percentage"));%><br>
                <%out.println("Age = "+rs.getString("age"));%><br>
                <%out.println("E-mail = "+rs.getString("email"));%><br>
                <%out.println("Phone Number = "+rs.getString("phone"));

            }
            con.close();
        }
        catch(Exception e) {
        System.out.println(e);
        }

%>