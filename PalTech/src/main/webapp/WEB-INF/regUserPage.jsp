<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>

	<!--===============================================================================================-->	

<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/css/util.css">
	<link rel="stylesheet" type="text/css" href="/css/main.css">
<!--===============================================================================================-->
<style>

</style>
	
</head>
<body>
<div class="izz">
	<div class="limiter">
		<div class="container-login100" style="background-image: url('/img/quds1.jpg');">
			<div class="wrap-login100">
				<form:form class="login100-form validate-form" action="/registartion" method="POST" modelAttribute="user">
					
					<span class="login100-form-title p-b-34 p-t-27">
						Register as user <span style="font-size:0.5rem; color:black;  font-family: cursive;">( you can't add work )</span>
					</span>
					<div style="display:flex;">
					<div class="wrap-input100 validate-input" >
						<form:input class="input100" type="text" path="firstName" placeholder="First Name"/>
						<span class="focus-input100" data-placeholder="&#xf207;"></span>
						<form:errors class="text-danger" path="firstName" />
					</div>
					
					<div class="wrap-input100 validate-input" >
						<form:input class="input100" type="text" path="lastName" placeholder="Last Name"/>
						<span class="focus-input100" data-placeholder="&#xf207;"></span>
						<form:errors class="text-danger" path="lastName" />
					</div>
					</div>
					<div style="display:flex;">
					<div class="wrap-input100 validate-input" >
						<form:input class="input100" type="text" path="mobile" placeholder="Phone Number"/>
						<span class="focus-input100" data-placeholder=""></span>
							<form:errors class="text-danger" path="mobile" />
					</div>
					
			
					</div>
					<div class="wrap-input100 validate-input" data-validate = "Enter username">
						<form:input class="input100" type="text" path="email" placeholder="Email"/>
						<span class="focus-input100" data-placeholder=""></span>
						<form:errors class="text-danger" path="email" />
						
					</div>
					<div style="display:flex;">

					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<form:input class="input100" type="password" path="password" placeholder="Password"/>
						<span class="focus-input100" data-placeholder="&#xf191;"></span>
						<form:errors class="text-danger" path="password" />
					</div>
					
					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<form:input class="input100" type="password" path="passwordConfirmation" placeholder="Confirm Password"/>
						<span class="focus-input100" data-placeholder="&#xf191;"></span>
						<form:errors class="text-danger" path="passwordConfirmation" />
					</div>
					</div>
				
					
					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<form:input class="input100" type="date" path="birthDate" placeholder="birthday"/>
						<span class="focus-input100" data-placeholder=""></span>
							<form:errors class="text-danger" path="birthDate" />
					</div>


					<div class="container-login100-form-btn">
						<input class="login100-form-btn" type="submit" value="Register"/>
						
							
					</div>

				</form:form>
			</div>
			
		</div>
		
		
	</div>
	
	</div>
<!--===============================================================================================-->
	<script src="/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="/vendor/bootstrap/js/popper.js"></script>
	<script src="/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="/vendor/daterangepicker/moment.min.js"></script>
	<script src="/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="/js/main.js"></script>

</body>
</html>