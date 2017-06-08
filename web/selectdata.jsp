<%-- 
    Document   : selectdata
    Created on : Dec 13, 2016, 2:51:19 PM
    Author     : THMSI
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>show all data Page</title>
        <style>
            table, th, td {
                border: 1px solid black;
            }
            tr:hover {background-color: #f5f5f5}
        </style>
    </head>
    <body>

        <%
//            String name = request.getParameter("name");
//            String email = request.getParameter("email");
//            String password = request.getParameter("password");

            try {
                String sql = "  SELECT * FROM register";

                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspdb", "root", "Yfhp6e");
                Statement stm = conn.createStatement();
                ResultSet rs = stm.executeQuery(sql);

                out.println("<table border='1'>");
                out.println("<thead>");
                out.println("<tr>");
                out.println("<th>name</th>");
                out.println("<th>email</th>");
                out.println("</tr>");
                out.println("</thead>");
                out.println("<tbody>");
                while (rs.next()) {
                    String name = rs.getString("name");
                    String email = rs.getString("email");

                    out.println(" <tr>");
                    out.println("<td>" + name + "</td>");
                    out.println("<td>" + email + "</td>");
                    

        %>

    <td> <a href="deldata.jsp?nameDel=<%=rs.getString("name")%>">Del</a></td>
    <td> <a href="updatedata.jsp?nameUp=<%=rs.getString("name")%>&emailUp=<%= rs.getString("email")%>&nameold=<%= rs.getString("name")%>">Edit</a></td>


    <%
out.println("</tr>");
            }
            out.println("</tbody>");
            out.println("</table>");
            rs.close();
            conn.close();
        } catch (Exception e) {
        System.out.println("done");
        }
    %>
</body>
</html>
