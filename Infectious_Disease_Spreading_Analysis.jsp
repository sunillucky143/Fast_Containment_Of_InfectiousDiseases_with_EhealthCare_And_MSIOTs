<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Infectious_Disease_Spreading_Analysis</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-chunkfive.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {font-size: 36px}
.style2 {
	color: #FF00FF;
	font-size: 24px;
}
.style6 {color: #00FF00}
.style7 {color: #FF0000}
.style8 {font-size: 18px}
.style9 {font-size: 16px}
.style10 {color: #0000FF}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li class="active"><a href="A_Login.jsp"><span>Healthcare Server</span></a></li>
          <li><a href="U_Login.jsp"><span>User</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="logo">
        <h1><a href="index.html" class="style1">Fast Containment of Infectious Diseases with E-healthcare Mobile Social Internet of Things</span></a></h1>
      </div>
      <div class="searchform"></div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /><span><big>Fast Containment of Infectious Diseases with E-healthcare Mobile Social Internet of Things</big></span></a> <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /><span><big>Fast Containment of Infectious Diseases with E-healthcare Mobile Social Internet of Things</big></span></a> <a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /><span><big>Fast Containment of Infectious Diseases with E-healthcare Mobile Social Internet of Things</big></span></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2 align="center"><span class="style2">View Infectious Disease Spreading Analysis</span></h2>
          <p>&nbsp;</p>
          <table width="601" border="5" align="center"  cellpadding="0" cellspacing="0"  ">
            <tr bgcolor="#99FF99">
			<td  width="47" height="34" valign="baseline" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style15 style21 style6 style9 style7"> Sl.No </div></td>
              <td  width="47" height="34" valign="baseline" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style15 style21 style6 style9 style7"> Disease Image </div></td>
			  
              <td  width="82" height="34" valign="baseline" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style15 style21 style6 style9 style7">Disease Type</div></td>
		      <td  width="82" height="34" valign="baseline" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style15 style21 style6 style9 style7">Disease Description</div></td>

		   	  <td  width="82" height="34" valign="baseline" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style15 style21 style6 style9 style7">Added Date and Time</div></td>
	<td  width="82" height="34" valign="baseline" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style15 style21 style6 style9 style7">No.Of Infected Peoples</div></td>
	<td  width="82" height="34" valign="baseline" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style10 style9 style21 style15"><strong>Spreading Zone</strong></div></td>
	<td  width="82" height="34" valign="baseline" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style10 style9 style21 style15"><strong>Mask Weared Status</strong></div></td>
          </tr>
           <%@ include file="connect.jsp" %>
            <%@ page import="java.util.*"%>
            <%@ page import="java.text.*"%>
            <%@ page import="java.util.Date"%>
            <%@ page import="java.sql.*"%>
            <%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
            <%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
            <%@ page import="org.bouncycastle.util.encoders.Base64"%>
            <%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
            <%
					 
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11;
						int i=1;
						try 
						{
						
						    int count=0;
						
							String stype=(String)application.getAttribute("hs");
						
						   	String query="select * from Infectious_Diseases  "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(6);//dtype
								s2=rs.getString(7);//ddesc
								s3=rs.getString(10); //date
								s4=rs.getString(12);// NIP
								s5=rs.getString(13); // Zone
								s6=rs.getString(14); // mws
								
								
								String keys = "ef50a0ef2c3e3a5f";
		
										byte[] keyValue = keys.getBytes();
										Key key = new SecretKeySpec(keyValue, "AES");
										Cipher c2 = Cipher.getInstance("AES");
										c2.init(Cipher.DECRYPT_MODE, key);
									
									   String s111= new String(Base64.decode(s1.getBytes()));
									    String s12= new String(Base64.decode(s2.getBytes()));
										
								
								
								int nip=Integer.parseInt(s4);
								
								if(s6.equalsIgnoreCase("No"))
								{
								count++;
					%>
            <tr>
              <td  valign="baseline" height="0"><p class="style22 style7">&nbsp;</p>
                  <div align="center" class="style22 style7">
                   
                      <%out.println(i);%>
                    
                    <p>&nbsp; </p>
                  </div></td>
				  
              <td width="116" rowspan="1" ><div class="style22 style7" style="margin:10px 13px 10px 13px;" > <a class="#" id="img1" href="#" >
                  <input  name="image" type="image" src="pimages.jsp?id=<%=i%>&value=<%="oimage"%>" style="width:90px; height:90px;"  />
              </a> </div></td>
			  <td  valign="baseline" height="0"><p class="style22 style7">&nbsp;</p>
                  <div align="center" class="style22 style7">
                   
                      <span class="style8">
                      
                      <%out.println(s111);%>
                      </span>
                      <p>&nbsp; </p>
                </div></td>
				  
				  
				   <td  valign="baseline" height="0"><p class="style22 style7">&nbsp;</p>
                  <div align="center" class="style22 style7">
                    
                      <span class="style8">
                      <textarea cols="15" rows="5"><%out.println(s12);%> </textarea>
                      </span>
                      <p>&nbsp; </p>
                  </div></td>
				  
				  
				  <td  valign="baseline" height="0"><p class="style22 style7">&nbsp;</p>
                  <div align="center" class="style22 style7">
                    
                      <span class="style8">
                      <%out.println(s3);%>
                      </span>
                      <p>&nbsp; </p>
                  </div></td>
    <td  valign="baseline" height="0"><p class="style22 style7">&nbsp;</p>
                  <div align="center" class="style22 style7">
                    
                      <span class="style8">
                      <%out.println(s4);%>
                      </span>
                      <p>&nbsp; </p>
                  </div></td>
				  <td height="0"  valign="baseline" bgcolor="#FFFF00"><p class="style22 style7">&nbsp;</p>
                  <div align="center" class="style22 style7">
                    
                      <span class="style8">
                      <%out.println(s5);%>
                      </span>
                      <p>&nbsp; </p>
              </div></td>
				  <td height="0"  valign="baseline" bgcolor="#FFFF00"><p class="style22 style7">&nbsp;</p>
                  <div align="center" class="style22 style7">
                    
                      <span class="style8">
                      <%out.println(s6);%>
                      </span>
                      <p>&nbsp; </p>
              </div></td>
            </tr>
            <%
					i=i+1;
						}
						
						
						}
					if(count<=0)
						{%>
						<h2>NO Infectious Disease Spreading FOUND</h2>
						
						<%}
				
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
            <tr>
              
              <td  valign="baseline" height="0">&nbsp;</td>
              <td  valign="baseline" height="0">&nbsp;</td>
              <td  valign="baseline" height="0">&nbsp;</td>
			  <td  valign="baseline" height="0">&nbsp;</td>
              <td  valign="baseline" height="0">&nbsp;</td>
              <td  valign="baseline" height="0">&nbsp;</td>
            </tr>
        </table>
          <p>&nbsp;</p>
          <p><a href="A_Main.jsp">Back</a></p>
          <div class="clr"></div>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
