
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>


<%
	Connection connection = null;
 	try {

	  	Class.forName("com.mysql.jdbc.Driver");	
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/fcid","root","root");
      	String sql="";

	}
	catch(Exception e)
	{
		System.out.println(e);
	}
%>