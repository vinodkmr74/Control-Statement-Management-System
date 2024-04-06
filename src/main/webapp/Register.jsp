<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
</head>
<body>
<%
        String name = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String email = request.getParameter("email");
        String mob = request.getParameter("mobb");
        String pas = request.getParameter("pas");
        String pass = request.getParameter("cpas");
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/infor", "root", "root");
        PreparedStatement p = con.prepareStatement("insert into redd values(?,?,?,?,?,?)");

        p.setString(1, name);
        p.setString(2, lname);
        p.setString(3, email);
        p.setString(4, mob);
        p.setString(5, pas);
        p.setString(6, pass);

        int i = p.executeUpdate();
        if (i > 0) {
            response.sendRedirect("login.html");

        } else {
            response.sendRedirect("Register.html");
        }

%>
</body>
</html>