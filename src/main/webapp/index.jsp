<%@page import="com.ssi.model.Emp"%>
<%@page import="java.util.List"%>
<html>
<body>
<div>
<h2 align="center">Welcome to DashBoard</h2>
</div>
<div>
<div style="float:left;border:1px solid black;width:29.7%;height:100%">
<h3 align="center">Important Links</h3>
<a style="text-align: center;" href="entryform">Employee Entry</a><br><br>
<a style="text-align: center;" href="getallemployee">Show all Employees</a><br><br>
</div>
<div style="float:left;border:1px solid black;width:70%;height:100%">
<div style="margin-left: 36%;margin-top: 10%;margin-right: 36%;">
<h3 align="center">Search Employee</h3>
<form  action="searchemp" method="get">
<table style="border:1px solid black;">
<tr><td><label>Id / Name</label></td><td><input type="text" name="enoename"></td></tr>
<tr><td></td><td><input style="width:100%" type="submit" value="Search"></td></tr>
</table>
</form>
</div>
<div>
<%

Boolean searchresult = (Boolean)request.getAttribute("searchresult"); 
List<Emp> emplist = (List<Emp>)request.getAttribute("EmpList");

if(searchresult != null && searchresult == true){ %>
<br>
<br>
<br>
<hr>

<h3 align="center">Search Result for Employee</h3>
<hr>
<div>
<table style="margin-left: 39%">
<tr><th>Id</th><th>Name</th><th>Salary</th><th>Update</th><th>Delete</th></tr>
<%for(Emp e:emplist){%>
<tr><td><%=e.getEno() %></td><td><%=e.getEname() %></td><td><%=e.getSal() %></td><td><a href="updatepage?eno=<%=e.getEno()%>">Update</a></td><td><a href="deleteemp?eno=<%=e.getEno()%>">Delete</a></td></tr>
<%} %>
</table>
</div>
<%}
else if(searchresult != null && searchresult == false){
%>
<hr>
<h3>Employee Not Found !</h3>
<hr>
<%} %>
</div>
</div>
</div>
</body>
</html>
