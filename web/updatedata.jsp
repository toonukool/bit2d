<%-- 
    Document   : updatedata
    Created on : Dec 13, 2016, 5:53:50 PM
    Author     : THMSI
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Page</title>
    </head>
    <body>

        <%
            Connection conn = null;
            PreparedStatement pstm = null;

            try {

                Class.forName("com.mysql.jdbc.Driver");

                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspdb", "root", "Yfhp6e");

                String nameUp = request.getParameter("nameforup");
                String emailUp = request.getParameter("emailforup");

                String sql = "UPDATE register SET NAME =?, EMAIL=? WHERE NAME=? ";
                pstm = conn.prepareStatement(sql);
                pstm.setString(1, nameUp);
                pstm.setString(2, emailUp);
                pstm.setString(3,  request.getParameter("nameUp"));

                pstm.executeUpdate();

                        out.println("done update");%>
        <h3><a href="http://localhost:8080/jspdb/selectdata.jsp">show all data</a></h3><%
            } catch (Exception e) {
                out.println(e.getMessage());

                e.printStackTrace();
            }

            conn.close();
            pstm.close();
        %>

    </body>
</html>
