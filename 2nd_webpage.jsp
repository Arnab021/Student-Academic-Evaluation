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
    margin-top: 11%;
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
    margin: 20px 0 10px;
}
.from-box{
    margin-left: 8%;
    position: relative;
    display: flex;
    align-items: center;
    width: 512px;
    height: 180px;
    overflow: hidden;
    z-index: 2;
}
.regtration{
    width: 500px;
    display: flex;
    flex-direction: column;
    transition: .5s ease-in-out;
}
.two-forms{
    display: flex;
    gap: 15px;
}
.input-field{
    font-size: 15px;
    margin: 10px 0 0 0;
    background: rgb(255, 255, 255,0.2);
    color:#ffffff;
    height: 40px;
    width: 100px;
    padding: 0px 150px 10px 150px;
    border: none;
    border-radius: 30px;
    outline: none;
    transition: .2s ease;
}
.input-field:hover, .input-field:focus{
    background: rgb(255, 255, 255,0.25);
}
::-webkit-input-placeholder{
    color: #ffffff;

}
.input-box{
    margin: 10px 0 10px;
}

.submit{

    font-size: 15px;
    font-weight: 500;
    color: black;
    height: 45px;
    width: 100%;
    border: none;
    border-radius: 30px;
    outline: none;
    background: #9a9995;
    cursor: pointer;
    transition: .3s ease-in-out;
}
.submit:hover{
    background: rgba(255,255, 255, 0.5);
    box-shadow: 1px 5px 7px 1px rgba(0 ,0,0,0.2);

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
<form action="register" method="post">
    <div class="background">
        <nav>
            <img src="img/download (1).png" class="logo">
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="">About us</a></li>
                <li><a href="">Help</a></li>
            </ul>
        </nav>
        <div class="info">
            <h1>Please <span>Enter </span> your <br><span>Reg. Number</span></h1>
            <P>This is for student only</P>

      
        </div>

        <div class="from-box">
            <div class="regtration">
                <div class="two-forms">
                
                </div>
                <div class="input-box">
                    <input type="text" name="registration_number" class="input-field" placeholder="Reg. number">
                    
                </div>  
                <div class="input-box">
                    <a href=""><input type="submit" class="submit"></input></a>
                </div>
               
            </div>
        </div>
    
    </div>

        <div class="img-box">
            <img src="img/pattern.png" class="back-img">
            <img src="img/VisualsStock_AK40727.png" class="main-img">
        </div>
    </div>
    </form>

    
</body>
</html>