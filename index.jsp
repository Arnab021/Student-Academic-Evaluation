<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Result chaking</title>
    <style>
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
.background .btn{
    display: flex;
    justify-content: space-between;
    width: 346px;
    height: 50px;
    
}
.btn a{
    position: relative;
    display: inline-flex;
    justify-content: center;
    align-items: center;
    width: 150px;
    height: 100%;
    background: #005be2;
    border: 2px solid #eff6ff;
    border-radius: 8px;
    font-size: 19px;
    color: black;
    text-decoration: none;
    font-weight: 600;
    letter-spacing: 1px;
    z-index: 1;
    overflow: hidden;
    transform: .5s;
}
.btn a:hover{
    color: #005be2;
}
.btn a:nth-child(2){
    background: transparent;
    color: #f2f2f2;
}
.btn a:nth-child(2):hover{
    color: #081b29;
}
.btn a:nth-child(2)::before{
    background: #005be2;
}
.btn a::before{
    content: '';
    position: absolute;
    top:0;
    left: 0;
    width: 0;
    height: 100%;
    
    background: rgb(54, 52, 52);
    z-index: -1;
    transform: .5s;

}

.btn a:hover::before{
    width: 100%;
}
.img-box{
    width: 45%;
    height: 80%;
    position: absolute;
    bottom: 0;
    right: 100px;

}
.img-box img{
    height: 100%;
    position: absolute;
    left: 50%;
    bottom: 0;
    transform: translate(-50%);
    transition: bottom 1s, left 1s;
}
.img-box:hover .back-img{
    bottom: 40px;
}
.img-box:hover .main-img{
    left: 54%;
}
    </style>
</head>
<body>
    <div class="background">
        <nav>
            <img src="img/download (1).png" class="logo">
            <ul>
                <li><a href="">Home</a></li>
                <li><a href="">About us</a></li>
                <li><a href="">Help</a></li>
            </ul>
            
        </nav>
        <div class="info">
            <h1>WELLCOME <span>TO</span> OUR <br><span>WEBSITE</span></h1>
            <P>Please choose who are you Steudent or Teacher</P>
        <div class="btn">
            <a href="2nd_webpage.jsp">STUDENT</a>
            <a href="Admin_login.jsp">TEACHER</a>
        </div>
        </div>

        <div class="img-box">
            <img src="img/pattern.png" class="back-img">
            <img src="img/VisualsStock_AK40727.png" class="main-img">
        </div>
    </div>

    
</body>
</html>