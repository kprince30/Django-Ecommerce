<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Deleted</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%@ page import="com.sks.helper.ConnectionProvider" %>

<%
    Connection con = ConnectionProvider.getConnection();
    Statement stmt = null;
    ResultSet rs = null;
    int catId =(Integer) session.getAttribute("catId");
    System.out.print(catId);
    
    try {
        stmt = con.createStatement();
        stmt.executeUpdate("DELETE FROM categories WHERE catid=" + catId);
    } catch (Exception e) {
        e.printStackTrace();
    } 
    response.sendRedirect("catData.jsp");
%>

</body>
</html>