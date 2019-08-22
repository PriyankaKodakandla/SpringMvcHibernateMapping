<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
	<form:form modelAttribute="student">
		<table border="1" cellpadding="5">
			<tr>
				<td>Id</td>
				<td>Name</td>
				<!-- <td>Gender</td> -->
				<td>Branch</td>
				<td>EmailId:</td>
				<!-- <td>phoneNumber</td> -->
				<td>City:</td>
				<td>State:</td>
				<td>Country:</td>
				<td>Option1</td>
				<td>Option2</td>
			</tr>
			<c:forEach items="${students}" var="student">
				<tr>
					<td><c:out value="${student.id}" /></td>
					<td><c:out value="${student.name}" /></td>
					<td><c:out value="${student.branch.branchName}" /></td>
					<%-- <td><c:out value="${student.gender}" /></td> --%>
					<td><c:out value="${student.mailId}" /></td>
					<%-- <td><c:out value="${student.phoneNumber}" /></td> --%>
					<td><c:out value="${student.address.city}" /></td>
					<td><c:out value="${student.address.state}" /></td>
					<td><c:out value="${student.address.country}" /></td>
					<td><a href="delete/${student.id}">Delete</a></td>
					<td><a href="updateStudent/${student.id}">Edit</a></td>
				</tr>
			</c:forEach>
			</form:form>
		</table>
		<br><br>
		<form action="index.jsp">
			<input type="submit" value="Home page">
		</form>
		
</center>
</body>
</html>