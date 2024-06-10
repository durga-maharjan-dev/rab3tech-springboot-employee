<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Rab3tech | Employee Signup</title>
<style>
	*{
	margin:0;
	padding: 0;
	}

	header{
		display:flex;
		justify-content: space-between;
		background: green;
		color:#f4f4f4;
		height: 7vh;
	}
	.header-navbar{
		display:flex;
		justify-content:space-between;
		align-items:center;
		list-style:none;
	}
	.header-navbar a{
		padding: 10px 30px;
		color:#f4f4f4;
		text-decoration: none;
		
	}
	.header-navbar a:hover{
		background:#333;
	}

.container-wrapper{
	height: 90vh;
	background: url('img/authenticate.png') no-repeat center center/cover;
	display:flex;
	justify-content: center;
	align-items:center;
}
.container{
	border:.5px solid #333;
	width: 300px;
	border-radius: 20px;
	background: #f4f4f4;
	display:flex;
	flex-direction: column;
	opacity: 0.8;
	padding: 20px 10px;
	box-sizing: box-cover;
}

.signup-icon{
 display:flex;
 justify-content:center;
}
.container img{
	padding-bottom: 1rem;
	height:75px;width:75px;
	
}
.container h2{
padding-bottom: 1rem;
text-align: center;
}
.form-group{
	display:flex;
	flex-direction: column;
	margin-bottom: 2rem;
}
.form-group label{
	font-size:0.8rem;
}
.form-group input{
	height: 2rem;
	width: 100%;
	padding:0.2rem;
	background: #333;
	color: #fff;
	border: none;
	border-radius: 10px;
	
}
.btn-signup{
	width:100%;
	height:3rem;
	border-radius:10px;
	color: #f4f4f4;
	background: green;
	border:none;
}
.btn-signup:hover{
	background: #000;
}
.info-message{
 color:red;
}
	
	
footer{
		height: 3vh;
		text-align:center;
		background:green;
		color:#f4f4f4;
}
	
</style>
</head>
<body>
<header>
	<div class="header-title">
		<h1>Rab3tech.com</h1>
	</div>
	<ul class="header-navbar">
		<a href="employeeLogin"><li>Login</li></a>
		<a href="employeeSignup"><li>Signup</li></a>
	</ul>
	
</header>

<div class="container-wrapper">
<div class="container">
	<div class="signup-icon">
		<img src="./img/person-add.png" alt="login-logo">
	</div>
	<h2>Employee Login</h2>
	 <p  class="info-message">${message}</p>
	<form action="employeeSignup" method="post">
		<div class="form-group">
			<label for="firstName">Last Name</label>
			<input type="text" name="firstName" placeholder="Enter First Name">
		</div>
		<div class="form-group">
			<label for="lastName">Last Name</label>
			<input type="text" name="lastName" placeholder="Enter Last Name">
		</div>
		<div class="form-group">
			<label for="email">Email</label>
			<input type="email" name="email" placeholder="Enter email">
		</div><div class="form-group">
			<label for="password">Password</label>
			<input type="password" name="password" placeholder="Enter password">
		</div>
		<div>
			<input type="submit" value="SIGN UP" class="btn-signup">
		</div>
	</form>	
</div>
</div>

<footer>
	<p>rab3tech &copy; 2024
</footer>

</body>
</html>