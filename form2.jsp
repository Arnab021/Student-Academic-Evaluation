<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<style type="text/css">
.abc {
	height: 20px;
	width: 100%;
	background-color: rgb(255, 81, 0);
	margin-top: -9px;
}

.color {
	background-color: rgb(153, 152, 152);
	height: 90px;
	width: 100%;
	padding: 0;
	margin-top: -10px;
}

.background {
	height: 100vh;
	width: 100%;
	font-family: sans-serif;
	position: relative;
	position: absolute;
	top: 110px;
	left: 0;
	background-image:
		url("img/WhatsApp Image 2024-05-28 at 20.03.14_dec73934.jpg");
	background-repeat: no-repeat;
	background-size: cover;
	z-index: -1;
}

.logo {
	margin: 10px 0 0 40px;
	width: 70px;
	cursor: pointer;
}

.efg {
	height: 40px;
	width: 100%;
	background-color: rgb(255, 81, 0);
}

ul, li {
	text-decoration: none;
	display: inline;
	color: white;
	text-transform: capitalize;
}

li {
	margin-right: 30px;
	text-decoration: none;
}

a {
	text-decoration: none;
	color: white;
}

.button1 {
	margin-left: 1066px;
	margin-top: 9px;
}

.button1 a {
	color: black;
}

h1 {
	margin-left: 25px;
}

h6 {
	color: red;
}

.color {
	background-color: rgb(153, 152, 152);
	height: 90px;
	width: 100%;
	padding: 0;
	margin-top: -10px;
}

img {
	display: flex;
	margin-top: -64px;
	margin-left: 144px;
}

.form {
	height: 590px;
	width: 410px;
	background-color: rgb(150, 149, 148);
	display: flex;
	text-align: center;
	text-decoration: none;
	text-transform: capitalize;
	display: block;
	margin-left: 35%;
	margin-top: 40px;
}

h2 {
	padding-top: 20px;
}
</style>
</head>
<body>
	<div class="background"></div>
	<div class="abc"></div>
	<div class="color">
		<img src="img/download (1).png" class="logo">
	</div>
	<div class="down">
		<div class="efg">
			<ul>
				<li><a href="form.jsp">Add New Student</a></li>
				<li><a href="Show_data.jsp">Resistere</a></li>
			</ul>
			<button class="button1">
				<a href="index.jsp">Logout</a>
			</button>
		</div>
	</div>

	<main>
		<div class="form">
			<form action="Student_info" method="post">
				<h2>
					<b><u>Add New Student</u></b>
				</h2>
				<h6>please enter the full details</h6>
				<p>name :</p>
				<input type="text" id="name" name="name"
					placeholder="enter your name" size="27" required> <br>
				<br>
				<p>Branch :</p>
				<select class="form-select" id="branch" name="branch"
					aria-label="Default select example" required>
					<option selected>Select your branch</option>
					<option value="CST">DCST</option>
					<option value="EE">DEE</option>
					<option value="ETCE">DETCE</option>
					<option value="ME">DME</option>
				</select> <br> <br>
				<p>registration number :</p>
				<input type="text" id="registration_number"
					name="registration_number"
					placeholder="enter your registration number" size="27"
					style="text-tranform: uppercase" required> <br> <br>
				<p>Father's name :</p>
				<input type="text" id="father_name" name="father_name"
					placeholder="enter your father name " size="27" required> <br>
				<br>
				<p>gender :</p>
				<select class="form-select2" id="gender" name="gender"
					aria-label="Default select example2" required>
					<option selected>Select Gender</option>
					<option value="MALE">Male</option>
					<option value="FEMALE">Female</option>
					<option value="OTHERS">Others</option>
				</select> <br>
				<br>
				<button>Submit</button>
			</form>
		</div>
	</main>

</body>
</html>