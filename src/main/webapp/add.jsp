<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
	<h1>Add employee details</h1>
	<form action="add" method="post">
		Name:<input type="text" name="name"><br><br>
		Email:<input type="email" name="email"><br><br>
		Mobile:<input type="number" name="mobile"><br><br>
		Salary:<input type="number" name="salary"><br><br>
		<button>Add</button>
	</form><br><br>
	<a href="home"><button>Back</button></a>
</div>
</body>
</html>