
<title>Authentication</title>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date,java.util.Calendar" %>
<%@ page import="java.sql.*"%>
<%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<style type="text/css">
<!--
.style2 {font-size: 18px}
.style3 {
	font-size: 18px;
	font-weight: bold;
	color: #FF0000;
}
.style4 {font-size: 18px; font-weight: bold; }
-->
</style>
<%
     try
	{  
	
	
	       String s1=null,s2=null,s3=null,s4=null;
   
			String value=request.getParameter("value"); 
			
			if(value.equalsIgnoreCase("userlogin"))
			{
					String username=request.getParameter("username"); 
         			String password=request.getParameter("password");
					
					String sql = "SELECT * FROM user where username='"+username+"' and password='"+password+"'";
					Statement stmt = connection.createStatement();
					ResultSet rs = stmt.executeQuery(sql);
					if (rs.next()==true) 
					{
		
								String sql1="SELECT * FROM user where username='"+username+"' and status='Authorized' ";
								Statement stmt1 = connection.createStatement();
								ResultSet rs1 =stmt1.executeQuery(sql1);
								if(rs1.next()==true)
								{
									int i = rs1.getInt(1);
									s1=rs.getString(5);//mobno
								    s2=rs.getString(6);//dob
     								s3=rs.getString(8); // address
									s4=rs.getString(9); // location
									
									
									application.setAttribute("uname", username);
									application.setAttribute("dob", s2);
									application.setAttribute("mobno", s1);
									application.setAttribute("address", s3);
									application.setAttribute("loc", s4);
									
									
									
									response.sendRedirect("U_Main.jsp");
								}
								else
								{
										%>
								
									
									<br/>
									<p align="center" class="style3">You are not Authorized by the Healthcare Server, Please wait!! </p>
									<p align="center" class="style3"><br/>
								      <a href="U_Login.jsp" class="style4">Back</a></p>
									<p>
									  <%
								 }
					
					}
					else
					{
						response.sendRedirect("U_Wrong_Login.jsp");
					}
			
			
			}
			if(value.equalsIgnoreCase("ecommercelogin"))
			{
					String username=request.getParameter("username"); 
         			String password=request.getParameter("password");
					
					
					String sql = "SELECT * FROM ecommerce where username='"+username+"' and password='"+password+"'  ";
					Statement stmt = connection.createStatement();
					ResultSet rs = stmt.executeQuery(sql);
					if (rs.next()==true) 
					{
		
								String stype="Social Server";
		
									application.setAttribute("ss", stype);
									response.sendRedirect("E_Main.jsp");
								
					
					}
					else
					{
						response.sendRedirect("E_Wrong_Login.jsp");
					}
			
			
			}
			
			
			else if(value.equalsIgnoreCase("adminlogin"))
			{
					String username=request.getParameter("adminid"); 
         			String password=request.getParameter("pass");
					String sql = "SELECT * FROM admin where username='"+username+"' and password='"+password+"' ";
					Statement stmt = connection.createStatement();
					ResultSet rs = stmt.executeQuery(sql);
					if (rs.next()==true) 
					{                
					                String stype="Healthcare Server";
		
									application.setAttribute("hs", stype);
									response.sendRedirect("A_Main.jsp");
					
					}
					else
					{
						response.sendRedirect("A_Wrong_Login.jsp");
					}
			
			
			}
			
			
			else if(value.equalsIgnoreCase("userstatus"))
			{
					
					int id=Integer.parseInt(request.getParameter("id"));

					String sql1="update user set status='Authorized' where id='"+id+"'";
					Statement stmt1 = connection.createStatement();
					int k =stmt1.executeUpdate(sql1);
					if(k>0)
					{
					
						
						response.sendRedirect("A_AuthorizeUsers.jsp");
					}
					else
					{
							%>
						  
						</p>
						<p align="center" class="style3">Permision Not Granted..Please Try Again..<br/>
						  <br/>
						</p>
						<p align="center" class="style3"><a href="A_AuthorizeUsers.jsp" class="style2">Back</a>
						</p>
						<%
					 }
					
			
			}
			
			
			
			else if(value.equalsIgnoreCase("ecomstatus"))
			{
					
					int id=Integer.parseInt(request.getParameter("id"));

					String sql1="update ecommerce set status='Authorized' where id='"+id+"'";
					Statement stmt1 = connection.createStatement();
					int k =stmt1.executeUpdate(sql1);
					if(k>0)
					{
					
						
						response.sendRedirect("E_AuthorizeUsers.jsp");
					}
					else
					{
							%>
						  
						</p>
						<p align="center" class="style3">Permision Not Granted..Please Try Again..<br/>
						  <br/>
						</p>
						<p align="center" class="style3"><a href="E_AuthorizeUsers.jsp" class="style2">Back</a>
						</p>
						<%
					 }
					
			
			}
			else
			{}
			
			
			
	}
	catch(Exception e)
	{
		out.print(e);
	}
	
%>
								    </p>
									