<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%if((Boolean)request.getAttribute("Result")){ %>
<diV>
<h3 align="center">Employee record deleted successfully</h3>
</diV>
<%}else{ %>
<div>
<h3 align="center">Something Went Wrong ! / Unable to delete employee record.</h3>
</div>
<%} %>
<a href="index.jsp">Back-To-DashBoard</a>
</body>
</html>