<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h1>Insert Student</h1>
		<form action="addStudent" method="post">
			<table>
				<tr>
					<td>Name:</td>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<td>Gender:</td>
					<td><input type="radio" name="gender" value="male">Male <input
						type="radio" name="gender" value="female">Female</td>
				</tr>
				<tr>
				 	<td>Branch:</td>
					<td><select name="branchName">
						<option value="CSE">CSE</option>
						<option value="ECE">ECE</option>
						<option value="MECH">MECH</option>
					</select></td>
				</tr>
				<tr>
					<td>EmailId:</td>
					<td><input type="text" name="mailId"></td>
				</tr>
				<tr>
					<td>PhoneType:</td>
					<td><input type="radio" name="phoneType" value="House">House <input
						type="radio" name="phoneType" value="Mobile">Mobile</td>
				</tr>
				<tr>
					<td>PhoneNumber:</td>
					<td><input type="text" name="phoneNumber"></td>
				</tr>
				<tr>
					<td>City:</td>
					<td><input type="text" name="city"></td>
				</tr>
				<tr>
					<td>State:</td>
					<td><input type="text" name="state"></td>
				</tr>
				<tr>
					<td>Country:</td>
					<td><input type="text" name="country"></td>
				</tr><br><br>
				<tr>
					<td><input type="submit" value="Insert"></td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>