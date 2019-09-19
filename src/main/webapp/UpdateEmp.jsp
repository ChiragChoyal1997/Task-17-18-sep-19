<%@page isELIgnored="false" import="com.ssi.model.Emp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<% Emp e = (Emp)request.getAttribute("Emp"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Employee Data</title>
</head>
<body>

<%if(request.getAttribute("Result") == null || !(Boolean)request.getAttribute("Result")) {%>
<div>
<h3 align="center">Update Employee Data</h3>
<hr>
<form action="updateemp" method="get">
<input type="hidden" name="eno" value="<%=e.getEno() %>">
<table style="margin-left:40%">
<tr><td>Employee Name</td><td><input type="text" name="ename" value="${Emp.ename }" /></td></tr>
<tr><td>Employee Salary</td><td><input type="text" name="sal" value="${Emp.sal }"/></td></tr>
<tr><td></td><td><input style="width: 50%" type="submit" value="Save Updates"><input style="width:50%" type="reset"></td></tr>
</table>
</form>
<hr>
<a href="index.jsp">Go-To-DashBoard</a>
</div>
<%} else{ %>
<div>
<h3 align="center">Updated Data</h3>
<hr>
<table border="1" style="margin-left: 43%">
<tr><td>Employee Number</td><td>${Emp.eno}</td></tr>
<tr><td>Employee Name</td><td>${Emp.ename}</td></tr>
<tr><td>Employee Salary</td><td>${Emp.sal }</td></tr>s
</table>
<hr>
<a href="index.jsp">Go-To-DashBoard</a>
</div>
<%} %>
</body>
</html>