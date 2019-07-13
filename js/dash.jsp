<%@page import="java.sql.*"%>
<html>
<head>
<meta charset ="uft-8">
<meta name="viewport" content ="width=device-width,intial-scale=1">
<link rel="icon" type="image" href="android-icon-96x96.png">
<link rel="stylesheet"href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="dash.css" >
<head>
<body>
	<a href="dash.jsp" class ="help"><h1>HelpMyInterview.com</h1>
	<a href="newsignup.html" class = "reg">Register</a>
	<h3>PLACEMENT PORTAL WITH FUN</h3>
	<div class="topnav">
	
		<a class="active" href="http://localhost:8080/HelpMyInterview/dash.jsp">
		<i class="fa fa-home"></i></a> 
		
		<div class="dropdown">
			<button class="dropbtn">
				Aptitude <i class="fa fa-caret-down"></i>
			</button>
			<div class="dropdown-content">
				<a href="dash.jsp?sec=Aptitude&sub=Problems on train">Problems on train</a> 
				<a href="dash.jsp?sec=Aptitude&sub=Height and Distance">Height and Distance</a>
				 <a href="dash.jsp?sec=Aptitude&sub=Percentage">Percentage</a> 
				 <a href="dash.jsp?sec=Aptitude&sub=Pipes and Cistern">Pipes and Cistern</a>
				 <a href="dash.jsp?sec=Aptitude&sub=Boats and Streams">Boats and Streams</a> 
				 <a href="dash.jsp?sec=Aptitude&sub=Numbers">Numbers</a> 
			</div>
		</div>
		
		
		<div class="dropdown">
			<button class="dropbtn">
				Languages <i class="fa fa-caret-down"></i>
			</button>
			<div class="dropdown-content">
				<a href="dash.jsp?sec=language&sub=C">C</a> 
				<a href="dash.jsp?sec=Language&sub=Cpp">C++</a>
				 <a href="dash.jsp?sec=Language&sub=Java">Java</a> 
				 <a href="dash.jsp?sec=language&sub=Python">Python</a> 
				 <a href="dash.jsp?sec=Language&sub=SQL">SQL</a> 
			</div>
		</div>

       <div class="dropdown">
			<button class="dropbtn">
				DS <i class="fa fa-caret-down"></i>
			</button>
			<div class="dropdown-content">
				<a href="dash.jsp?sec=DS&sub=Arrays">Arrays</a> 
				<a href="dash.jsp?sec=DS&sub=Linked List">Linked List</a>
				 <a href="dash.jsp?sec=DS&sub=Stack">Stack</a> 
				 <a href="dash.jsp?sec=DS&sub=Queue">Queue</a> 
			</div>
		</div>

		<a href="personality.html">Personality</a> 
		<a href="Resume.html">Resume</a>
		<a href="GD.html">GD</a> 
		<a href="abc.html">About-us</a>
		</div>
		<section>
	
		
		
		</section>
				
			<%!Connection con;
	ResultSet rs;
	Statement pst;%>


	<%
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/site", "root", "12345");
	%>
	<%
		String ch = "", ch1="";
		String sec = request.getParameter("sec");
		if (sec != null) 
		{	
			 
			
				ch=sec;
				   ch1=request.getParameter("sub");
                   if(ch1.equals("Cpp"))
                	   ch1="C++";
			
	%>

	<%   
		pst = con.createStatement();

			rs = pst.executeQuery("select * from questionbank where type='"+ch+"' and subtype='"+ch1+"'");
			%>
		<center>	<h1><%=ch1 %></h1>   </center>
			<%
			int x=1;
			while (rs.next()) {
	%><br>
	Question<%=x++%>.<br>
	<%=rs.getString(2)%>
	<b><%=rs.getString(3)%></b>

	<%
		}
	%>
	<%
		}
	%>

	</body>
</html>
