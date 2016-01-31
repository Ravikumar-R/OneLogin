<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
	<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>  
	<body>
		<div align="center"><br><br>
		<h2>One Login </h2><br><br>
		<form:form action="loginValidation.html" modelAttribute="credentials">
		<table>
                <tr>
                    <td><form:label path="userName">User Name</form:label></td>
                    <td><form:input path="userName"/></td>
                </tr>
                <tr>
                    <td><form:label path="password">Password</form:label></td>
                    <td><form:password path="password"/></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Submit"/></td>
                </tr>
            </table>
		</form:form>
		</div>
	</body>
</html>
