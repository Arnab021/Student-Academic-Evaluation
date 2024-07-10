<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%
try {
	String registration_number = request.getParameter("registration_number");
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student-app", "root", "ccpcst");
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery(
	"select * from student_info,etce where student_info.reg_no=etce.reg_no and student_info.reg_no='"
			+ registration_number + "'");
	while (rs.next()) {
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Marksheet</title>
<style>
body {
	background-image:
		url("img/WhatsApp Image 2024-05-25 at 14.47.26_fbdf9314.jpg");
}

table {
	background-color: rgb(240, 239, 239);
	margin: auto;
	padding: auto;
	height: 550px;
	width: 80%;
}

.container p {
	color: rgb(0, 0, 0);
	text-align: center;
}

.container h1 {
	color: rgb(255, 255, 255);
	font-size: 20px;
	text-align: center;
}
.center{
	text-align: center;
	color: white;
}
td {
	padding: 10px 45px;
	text-align: center;
}
</style>
</head>
<body>


	<div class="container">
		<h1>
			<u>CENTRAL CULCUTTA POLYTECHNIC <br>(BATCH: 2022-2025)
			</u>
		</h1>
		<P>
			<U>ANNUAL RESULT </U>
		</P>

		<table BORDER="1XP">
			<tr style="background-color: rgb(30, 255, 0);">
				<td colspan="2"><b>ROLL NUMBER: </b> DCCPETCES3</td>
				<td colspan="6"><b>NAME:</b> <%=rs.getString(2)%></td>

			</tr>


			<tr style="background-color: rgb(221, 255, 0);">
				<td colspan="2"><b>BRANCH:</b><%=rs.getString(3)%></td>
				<td colspan="6"><b>REGISTRATION Number:</b><%=rs.getString(1)%></td>
			</tr>
			<tr style="background-color: rgb(30, 255, 0);">
				<td colspan="6"><b>GENDER:</b> <%=rs.getString(5)%></td>

			<tr style="background-color: rgb(0, 255, 255);">
				<td><b>SUB-CODE</b></td>
				<td><b>SUBJECT NAME</b></td>
				<td><b>FULL MARKS</b></td>
				<td><b>PASSING MARKS</b></td>
				<td><b>OBITAINED MARKS</b></td>

			</tr>
			<tr>
				<th>CCP101</th>
				<th>Electronic Communication</th>
				<th>100</th>
				<th>40</th>
				<th><%=rs.getString(7)%></th>

			</tr>
			<tr>
				<th>CCP102</th>
				<th>Electronic Devices and Circuit</th>
				<th>100</th>
				<th>40</th>
				<th><%=rs.getString(8)%></th>

			</tr>
			<tr>
				<th>CCP103</th>
				<th>Digital Electronics</th>
				<th>100</th>
				<th>40</th>
				<th><%=rs.getString(9)%></th>

			</tr>
			<tr>
				<th>CCP104</th>
				<th>Electric circuit and Networks</th>
				<th>100</th>
				<th>40</th>
				<th><%=rs.getString(10)%></th>

			</tr>
			<tr>
				<th>CCP105</th>
				<th>Computer prigramming Language</th>
				<th>100</th>
				<th>40</th>
				<th><%=rs.getString(11)%></th>

			</tr>
			<tr style="background-color: rgb(0, 255, 255);">
				<td colspan="2"><b>TOTAL MARKS</b></td>
				<td>500</td>
				<td>200</td>
				<td>
				<%
						int sum = rs.getInt(7) + rs.getInt(8) + rs.getInt(9) + rs.getInt(10) + rs.getInt(11);
						out.println(sum);
						%>
				</td>
			</tr>
			<tr>
				<td colspan="3"><b>PERCENTAGE</b></td>
				<td colspan="6">
				<%
						out.println(((float) sum * 100) / 500);
						%>
				</td>

			</tr>
			<tr style="background-color: rgb(0, 255, 255);">
				<td colspan="3"><b>SUPPLY</b></td>
				<td colspan="6">
				<%
						if (rs.getInt(7) < 40 || rs.getInt(8) < 40 || rs.getInt(9) < 40 || rs.getInt(10) < 40 || rs.getInt(11) < 40) {
							if (rs.getInt(7) < 40)
								out.print("EC ");
							if (rs.getInt(8) < 40)
								out.print("EDC ");
							if (rs.getInt(9) < 40)
								out.print("DE ");
							if (rs.getInt(10) < 40)
								out.print("ECN ");
							if (rs.getInt(11) < 40)
								out.print("CPL ");
						} else
							out.print("ALL PASS");
						%>
				</td>

			</tr>
			<tr>
				<td colspan="3"><b>PASS OR FAIL</b></td>
				<td colspan="6">
				<%
						if ((sum * 100) / 500 >= 40) {
							out.println("PASS");
						} else {
							out.println("FAIL");
						}
						%>
				</td>

			</tr>

		</table>
	</div>
	<div class="center"><button class="button1"><a href="index.jsp">GO TO HOME</a></button></div>
</body>
</html>
<%
}
} catch (Exception e) {
e.printStackTrace();
}
%>