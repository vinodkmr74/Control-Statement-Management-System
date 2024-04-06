<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
            String em=request.getParameter("email");
            String pass=request.getParameter("pas");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/infor","root","root");
            PreparedStatement p = con.prepareStatement("select * from redd where email=? and password=?");
            p.setString(1,em);
            p.setString(2,pass);
            
            ResultSet r=p.executeQuery();
            
            if(r.next())
            		{
            	response.sendRedirect("Option.html");
            		}
            else
            {
            	response.sendRedirect("Register.html");
            }
            
            



%>

</body>
</html>