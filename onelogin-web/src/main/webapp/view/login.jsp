<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>  
	<body>
		<div  align="center"><br><br>
		<h2>One Login </h2><br><br>
		<form ng-app="oneLoginApp" ng-controller="oneLoginCtrl" name="oneLoginForm" method="post" action="loginValidation.html" novalidate>
			<table>
				<p> <tr><td> User Name: </td><td><input type="text" name="username" ng-model="username" required> </td></tr> </p>
				<p> <tr><td></td><td> <span style="color:red" ng-show="oneLoginForm.username.$dirty && oneLoginForm.username.$invalid">
					<span ng-show="oneLoginForm.username.$error.required">Username is required.</span></span></td></tr> </p>
				<p> <tr><td> Pass Word: </td><td> <input type="password" name="userpassword" ng-model="userpassword" required></td></tr> </p>
				<p> <tr><td></td><td>  <span style="color:red" ng-show="oneLoginForm.userpassword.$dirty && oneLoginForm.userpassword.$invalid"> 
					<span ng-show="oneLoginForm.userpassword.$error.required">Password is required.</span></span></td></tr> </p>
			</table>
			<p>	<input type="submit" value="Get Me in !!" ng-disabled="oneLoginForm.username.$dirty && oneLoginForm.username.$invalid || oneLoginForm.userpassword.$dirty && oneLoginForm.userpassword.$invalid"></p>
		</form>
		</div>
	<script>
	var app = angular.module('oneLoginApp', []);
	app.controller('oneLoginCtrl', function($scope) {
		$scope.username = 'TCSKLM';
		$scope.userpassword = 'tcs#1234';
	});
	</script>

	</body>
</html>
