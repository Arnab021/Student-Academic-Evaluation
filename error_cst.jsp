<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ADD STUDENT MARKS</title>
    <style type="text/css">
    .abc{
    height: 20px;
    width: 100%;
    background-color: rgb(255, 81, 0);
    margin-top: -9px;
} 
.background{
    height: 100vh;
    width: 100%;
    font-family: sans-serif;
    position: relative;
    position: absolute;
    top: 0;
    left: 0;
    background-color: aquamarine;
    background-repeat: no-repeat;
    background-size: cover;
    z-index: -1;
}

.logo{
    margin: 10px 0 0 40px;
    width: 70px;
    cursor: pointer;
}
.form{
    height: 550px;
    width: 500px;
    background-color: rgb(150, 149, 148);
    display: flex;
    text-align: center; 
    display: block;
    margin-left: 35%;
    margin-top: 40px;
}
::placeholder{
    margin: 50PX 0 0 0;
}
h5 {
	
	color: red;
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
    <div class="form">
        <form action="cst" method="post">
            <h2><b><u>Add New Student</u></b></h2>
            <h5>YOUR INPUT IS WRONG..
		PLEASE ENTER CORRECT INPUT</h5>
            <P>Registration Number:</P>
            <input
					type="text" id="registration_number" name="registration_number"
					required>
            <P>C:</P>
            <input type="number" id="c" name="c" min="0" max="100" required>
            <P>Python:</P>
            <input type="number" id="python" name="python" min="0" max="100" required>

            <P>Algorithm:</P>
            <input type="number" id="algorithm" name="algorithm" min="0" max="100" required>

            <P>Data Structure:</P>
            <input type="number" id="data_structure" name="data_structure" min="0" max="100" required>

            <P>CSO:</P>
            <input type="number" id="cso" name="cso" min="0" max="100" required>
            <br>
            <br>
            <button>Submit marks</button>
            </form>
    </div>


</body>

</html>