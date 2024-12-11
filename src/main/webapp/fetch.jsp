<%@page isELIgnored="false" %>
<%@ taglib prefix = "x" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
	<h1>Employee Records Table</h1>
	<table border="1">
		
		<tr>
			<th>Name</th>
			<th>Email</th>
			<th>Mobile</th>
			<th>Salary</th>
			<th>Delete</th>
			<th>Edit</th>
		</tr>
		<x:forEach var="emp" items="${list}">
		<tr>
			<th>${emp.name}</th>
			<th>${emp.email}</th>
			<th>${emp.mobile}</th>
			<th>${emp.salary}</th>
			<th><a href="delete?id=${emp.id}"><button>Delete</button></a></th>
			<th><a href="edit?id=${emp.id}"><button>Edit</button></a></th>
		</tr>
		</x:forEach>
	</table>
	<br>
	<a href="home"><button>Back</button></a>
</div>
</body>
</html>