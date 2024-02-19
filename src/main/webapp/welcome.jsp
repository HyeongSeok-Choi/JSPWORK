<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import = "java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Welcome</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
	 	  
</head>
<body>
	<%@include file = "menu.jsp" %>
	 <%! String greeting = "Welcome to Web Shopping Mall";
	 	 String tagline = "Welcome to Web Market !";	%>
	 <div class = "jumbotron bg-danger" >
	 	<div class = "container bg-">
	 		<h1 class = "display-2"> &nbsp;&nbsp;&nbsp;<%=greeting %></h1>
	 	</div>
	 </div>	 
	 <div class = "container">
	 	<div class = "text-center">
	 		<h3>
	 		  <%=tagline %>
	 		</h3>
	 		<% 
	 		Date day = new java.util.Date();
	 		String am_pm;
	 		int hour = day.getHours();
	 		int minute = day.getMinutes();
	 		int second = day.getSeconds();
	 		if(hour / 12 == 0){
	 			am_pm = "AM";
	 			
	 		}else {
	 			am_pm = "PM";
	 			hour = hour -12;
	 		}
	 		String CT = hour + ":"+ minute + ":" + second +  " " + am_pm;
	 		out.println("현재 접속 시각: " + CT + "\n");
	 		
	 			%>
	 	</div>
	 	<hr>
	 </div>
	 
	<%@include file = "footer.jsp" %>
	 	 

	


</body>
</html>