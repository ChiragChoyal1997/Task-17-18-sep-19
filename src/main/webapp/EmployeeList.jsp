<%@page import="java.util.List"%>
<%@page import="com.ssi.model.Emp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee List</title>
</head>
<body>
<h3 align="center">Employee List</h3>
<hr>
<table style="margin-left:39%; border:1px solid black;">
<tr><th>Employee Id</th><th>Name</th><th>Salary</th></tr>
<%
List<Emp> emplist = (List<Emp>)request.getAttribute("EmpList");
for(Emp e:emplist){
%>
<tr><td><%=e.getEno() %></td><td><%=e.getEname() %></td><td><%=e.getSal() %></td><td><a href="updatepage?eno=<%=e.getEno() %>">Update</a></td><td><a href="deleteemp?eno=<%=e.getEno()%>">Delete</a></td></tr>
<%} %>
</table>
<hr>
<a href="index.jsp">Back-to-Dashboard</a>
</body>
</html>