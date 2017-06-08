<%-- 
    Document   : insertdata
    Created on : Dec 13, 2016, 2:19:56 PM
    Author     : THMSI
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP2</title>
    </head>
    <body>
        <%
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            
            
            
            try {
                String sql = "INSERT INTO register(NAME,EMAIL,PASSWORD) VALUES(?,?,?)";
                
                
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn =  DriverManager.getConnection("jdbc:mysql://localhost:3306/jspdb","root","Yfhp6e");
                PreparedStatement pstm = conn.prepareStatement(sql);
                
                
                pstm.setString(1, name);
                pstm.setString(2, email);
                pstm.setString(3, name);
                pstm.executeUpdate();
                
                out.println("data is inserted");
                
                } catch (Exception e) {
                }
        %>
    </body>
</html>
