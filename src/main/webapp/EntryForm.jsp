<%@ page language="java" isELIgnored="false" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Entry Form</title>
</head>
<body>
<h3 align="center">Employee Entry Form</h3>
<c:if test="${!result }">
<hr>
<div style="margin-left:41%;">
<form action="entryemployee" method="get">
<table>
<tr><td>Id</td><td><input type="text" name="eno"/></td></tr>
<tr><td>Name</td><td><input type="text" name="ename"/></td></tr>
<tr><td>Salary</td><td><input type="text" name="sal"/></td></tr>
<tr><td></td><td><input style="width:50%" type="Submit"/><input style="width:50%;" type="reset"/></td></tr>
</table>
</form>
</div>
</c:if>

<c:if test="${result }">
<hr> 
<h3 align="center">Employee record has been inserted successfully</h3>
<div style="margin-left:41%;">
<table>
<tr><td>Id</td><td><c:out value="${Emp.eno}"/></td></tr>
<tr><td>Name</td><td><c:out value="${Emp.ename}"/></td></tr>
<tr><td>Salary</td><td><c:out value="${Emp.sal}"/></td></tr>
</table>
</div>
<a href="entryform">Add-More-Employee</a>
</c:if>
<hr>
<a href="index.jsp">Go-Back-To-Dashboard</a><br><br>

</body>
</html>