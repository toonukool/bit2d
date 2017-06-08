<%-- 
    Document   : updatepage
    Created on : Dec 13, 2016, 5:59:17 PM
    Author     : THMSI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>update data Page</title>
    </head>
    <body>
        <h3><a href="http://localhost:8080/jspdb/selectdata.jsp">show all data</a></h3>
        <form action="updatedata.jsp">
            Name: <input type="text" name="nameforup" value="<%= request.getParameter("nameUp")%>" /> <br>
            Email: <input type="email" name="emailforup" value="<%= request.getParameter("emailUp")%>" /> <br>
            <input type="submit" value="edit" /><br>
        </form>
    </body>
</html>
