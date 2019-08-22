
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<center>
		<table>
			<tr>
				<td>ID:</td>
				<td>${student.id}</td>
			</tr>
			<br>

			<tr>
				<td>Name:</td>
				<td>${student.name}</td>
			</tr>
			<br>

			<tr>
				<td>Gender:</td>
				<td>${student.gender}</td>
			</tr>
			<br>

			<tr>
				<td>Branch:</td>
				<td>${student.branch.branchName}</td>
			</tr>
			<br>

			<tr>
				<td>EmailId:</td>
				<td>${student.mailId}</td>
			</tr>
			<br>

			<c:forEach items="${student.phone}" var="phone">
       			<tr>
				<td>PhoneType:</td>
				<td>${phone.phoneType}</td>
			</tr>
			<br>
			<tr>
				<td>PhoneNo:</td>
				<td>${phone.phoneNumber}</td>
			</tr>
			</c:forEach>
			<br>
			
			<br>
			<tr>
				<td>City:</td>
				<td>${student.address.city}</td>
			</tr>
			<br>

			<tr>
				<td>State:</td>
				<td>${student.address.state}</td>
			</tr>
			<br>

			<tr>
				<td>Country:</td>
				<td>${student.address.country}</td>
			</tr>
			<br>
		</table>
		<br> <br>
		<form action="index.jsp">
			<input type="submit" value="Home page">
		</form>
	</center>
</body>
</html>