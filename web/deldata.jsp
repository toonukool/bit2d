<%-- 
    Document   : deldata
    Created on : Dec 13, 2016, 5:36:42 PM
    Author     : THMSI
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete data Page</title>
    </head>
    <body>
        <%
            Connection conn = null;
            Statement stm = null;

            try {

                Class.forName("com.mysql.jdbc.Driver");

                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspdb", "root", "Yfhp6e");
                stm = conn.createStatement();

                String nameDel = request.getParameter("nameDel");
                String sql = "DELETE FROM register WHERE NAME = '" + nameDel + "'  ";

                stm.execute(sql);

                out.println("done delete");%>
                <h3><a href="http://localhost:8080/jspdb/selectdata.jsp">show all data</a></h3><%
            } catch (Exception e) {
                out.println(e.getMessage());

                e.printStackTrace();
            }

            conn.close();
            stm.close();
        %>
    </body>
</html>
