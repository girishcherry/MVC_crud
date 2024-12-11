<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
	<h1>Edit Employee Record</h1>
	<form action="update" method="post">
		<input type="number" name="id" value="${emp.id}" hidden="hidden">
		Name: <input type="text" name="name" value="${emp.name}"><br>
		Email: <input type="email" name="email" value="${emp.email}"><br>
		Mobile: <input type="number" name="mobile" value="${emp.mobile}"><br>
		Salary: <input type="number" name="salary" value="${emp.salary}"><br>
		<a href="home"><button>Update</button></a>
	</form><br><br>
	<a href="fetch"><button>Back</button></a>
</div>
</body>
</html>