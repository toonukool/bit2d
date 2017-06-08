<%-- 
    Document   : index
    Created on : Dec 13, 2016, 2:12:13 PM
    Author     : THMSI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>jspdb page</title>
    </head>
    <body>
        <h1>Hello Register Form!</h1>
        <br>
        <h3><a href="/jspdb/selectdata.jsp">show all data</a></h3>
        <form action="insertdata.jsp">
            Name: <input type="text" name="name" placeholder="enter your name" /> <br>
            Email: <input type="email" name="email" placeholder="email" /> <br>
            Password: <input type="password" name="password" placeholder="password" /> <br>
            <input type="submit" value="register" /><br>
        </form>
    </body>
</html>
