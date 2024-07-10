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
    </style>
</head>

<body>
    <div class="background"></div>
    <div class="abc"></div>
    <div class="color">
        <img src="img/download (1).png" class="logo">
    </div>
    <div class="form">
        <form action="etce" method="post">
            <h2><b><u>Add New Student</u></b></h2>
            <P>Registration Number:</P>
            <input
					type="text" id="registration_number" name="registration_number"
					required>
            <P>Electronic Communication:</P>
            <input type="number" id="ec" name="ec" min="0" max="100" required>
            <P>Electronic Devices and Circuit:</P>
            <input type="number" id="edc" name="edc" min="0" max="100" required>

            <P>Digital Electronics:</P>
            <input type="number" id="de" name="de" min="0" max="100" required>

            <P>Electric circuit and Networks:</P>
            <input type="number" id="ecn" name="ecn" min="0" max="100" required>

            <P>Computer prigramming Language:</P>
            <input type="number" id="cpl" name="cpl" min="0" max="100" required>
            <br>
            <br>
            <button>Submit marks</button>
            </form>
    </div>


</body>

</html>