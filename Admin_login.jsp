<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin login</title>
    <style type="text/css">
    *{
    margin: 0;
    padding: 0;
}


#icon{
    width: 30px;
    cursor: pointer;
}
nav ul{
    flex: 1;
    text-align: right;
}


.background{
    height: 100vh;
    width: 100%;
    font-family: sans-serif;
    position: relative;
    position: absolute;
    top: 0;
    left: 0;
    background-image: url("img/WhatsApp Image 2024-04-25 at 12.09.35_ab345f8c.jpg");
    background-repeat: no-repeat;
    background-size: cover;
    z-index: -1;
   
}
nav{
    width: 84%;
    margin: auto;
    padding: 20px;
    display: flex;
    align-items: center;
    justify-content: space-between;
}
.logo{
    width: 100px;
    cursor: pointer;
}
nav ul li{
    display: inline-block;
    list-style: none;
    margin: 10px 20px;
}
nav ul li a{
    text-decoration: none;
    color: #ffffff;
    transition: .3s;
}
li a:hover{
    background: #ffffff;
    transform: .5s;

}
nav ul li a:hover{
    color: red;

}
.info{
    margin-left: 8%;
    margin-top: 15%;
}
.info h1{
    font-size: 60px;
    color: #ffffff;
    margin-bottom: 30px ;

}
span{
    color: #ff432f;
}
.info p{
    color: #ffe121;
    line-height: 22px;
    margin: 20px 0 40px;
}
.content{
    width: 1200px;
    height: auto;
    margin: auto;
    color: #f7f7f7;
}

.form{
    width: 250px;
    height: 300px;
    background: linear-gradient(to top, rgba(0,0,0,0.8)50%, rgba(0,0,0,0.8)50%);
    position: absolute;
    top: 250px;
    left: 70%;
    border-radius: 10px;
    padding: 40px;
}
.form h2{
    width: 220px;
    font-family: sans-serif;
    text-align: center;
    color: #ff432f;
    font-size: 22px;
    background-color: #ffffff; 
    border-radius: 10px;
    margin: 10px;
    padding: 8px ;
    
}
.form p{
    margin-top: 10px;
    margin-right: 20px;
    color: red;
        
}
.form input{
    width: 240px;
    height: 30px;
    background: transparent;
    border-bottom: 2px solid #ff432f;
    border-top: none;
    border-left: none;
    border-right: none;
    color: #f7f7f7;
    font-size: 15px;
    letter-spacing: 1px;
    margin-top: 10px;
    margin-left: 10px;
    font-family: sans-serif;
} 
.form input:focus{
    outline: none;
}
::placeholder{
    color: #f7f7f7;
    font-family: Arial;
}
.content .btn{
    width: 160px;
    height: 35px;
    background: #ff432f;
    border: none;
    margin-bottom: 10px;
    margin-top: 50px;
    margin-left: 50px;
    font-size: 18px;
    border-radius: 10px;
    cursor: pointer;
}
.content .btn a{
    text-decoration: none;
    color: black;
    transition: .4s ease;

}
.btn:hover{
    background-color: #ffffff;
}
    </style>
</head>
<body>
    <div class="background">
    <form method="post" action="admin_login">
        <nav>
            <img src="img/download (1).png" class="logo">
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="">About us</a></li>
                <li><a href="">Help</a></li>
            </ul>
            
        </nav>
        <div class="info">
            <h1>HELLO <span>SIR</span> OR <span>MADAM <br></span>WELLCOME <span>TO OUR</span> WEBSITE</h1>
            <P><b>THANKS TO VISIT OUR SITE</b></P>

            <div class="content">
                <div class="form">
                    <h2>Admin Login</h2>
                    <input type="email" name="email" placeholder="Enter username Here">
                    <input type="password" name="password" placeholder="Enter password Here">
                    <button class="btn"><a href="#">Login</a></button>
                </div>
        
            </div>
</body>
</html>