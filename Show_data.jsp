<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style type="text/css">
    .abc{
    height: 20px;
    width: 100%;
    background-color: rgb(255, 81, 0);
    margin-top: -9px;
} 


}
.background{
    height: 100vh;
    width: 100%;
    font-family: sans-serif;
    position: relative;
    position: absolute;
    top: 0;
    left: 0;
    background-color: red;
    background-repeat: no-repeat;
    background-size: cover;
    z-index: -1;
   
}
.color{
    background-color: rgb(153, 152, 152);
    height: 90px;
    width: 100%;
    padding: 0;
    margin-top: -10px;
 }

.logo{
    margin: 10px 0 0 40px;
    width: 70px;
    cursor: pointer;
}


.efg{ 
    height: 40px;
    width: 100%;
    background-color: rgb(255, 81, 0);
}
ul, li{
    text-decoration: none;
    display: inline;
    color: rgb(0, 0, 0);
   text-transform: capitalize;
}
li{
    margin-right: 30px;
    text-decoration: none;
}
a{
    text-decoration: none;
    color: rgb(255, 255, 255);
}
.button1 {
   
    margin-left: 1066px;
  margin-top: 9px;
}
.button1 a{
    color: black;
}
table{
    width: 100%;
}
th,td{
    text-align: center;
    height: 50px;
    /* border-bottom: 1px solid #ddd; */
}
tbody{
background-color: antiquewhite;
}
thead {
    background-color: #490dd3;
    color: white;
  }
tr:nth-child(even) {background-color: #7b7a7a;}
.table1{
    margin-top: 50px;
  margin-right: 30px;
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
      <div class="efg"><ul><li><a href="form.jsp">Add New Student</a></li>
      <li><a href="Show_data.jsp">Resistere</a></li></ul>
      <button class="button1"><a href="index.jsp">Logout</a></button></div>
  </div> 
    <div class="table1">
    <table class="table caption-top">
        <thead>
          <tr>
            <th scope="col">Registration Number</th>
            <th scope="col">Name</th>
            <th scope="col">Branch</th>
            <th scope="col">Father's name</th>
            <th>Gender</th>
          </tr>
        </thead>
        <tbody>
        <%
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student-app", "root", "ccpcst");
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery("select * from student_info");
				while (rs.next()) {
			%>
          <tr>
            <th scope="row"><%=rs.getString(1)%></th>
            <td><%=rs.getString(2)%></td>
            <td><%=rs.getString(3)%></td>
            <td><%=rs.getString(4)%></td>
            <td><%=rs.getString(5)%></td>
          </tr>
        </tbody>
        <%
		}
		} catch (Exception e) {
		e.printStackTrace();
		}
		%>
      </table>
    </div>
    
</body>
</html>