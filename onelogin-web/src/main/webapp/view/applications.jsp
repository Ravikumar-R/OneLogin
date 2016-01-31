<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>  
	<body>
		<div align="center"><br><br>
		<h2>One Login </h2><br><br>
		<form:form action="loginValidation.html" modelAttribute="applications">
		<c:forEach var="application" items="${applications}">
					<a href="applicationDeatils.html"><option value ="10"><c:out value="${application.applicationName}"/></option></a>	
					</c:forEach>
		</form:form>
		</div>
	</body>
</html>
