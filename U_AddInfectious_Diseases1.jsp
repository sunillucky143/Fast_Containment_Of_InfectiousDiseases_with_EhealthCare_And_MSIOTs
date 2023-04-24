<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>U_Add Infectious_Diseases1</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-chunkfive.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<script language="javascript" type="text/javascript">      <!--Start Reg Validation Jai Siddalinga-->
function valid()
{
var na3=document.s.categorie.value;
if(na3=="--Select--")

{
alert("Please Choose Categorie");
document.s.categorie.focus();
return false;
}
else
{

}
var na4=document.s.name.value;
if(na4=="")

{
alert("Please Enter Mobile name");
document.s.name.focus();
return false;
}

var na5=document.s.price.value;
if(na5=="")

{
alert("Please Enter Price");
document.s.price.focus();
return false;
}

var na6=document.s.size.value;
if(na6=="")

{
alert("Please Enter Description");
document.s.size.focus();
return false;
}
var na7=document.s.image.value;
if(na7=="")

{
alert("Please Enter Image");
document.s.image.focus();
return false;
}
var na8=document.s.subcategorie.value;
if(na8=="--Select--")

{
alert("Please Enter sub-categorie");
document.s.subcategorie.focus();
return false;
}
var na9=document.s.color.value;
if(na9=="")

{
alert("Please Enter color");
document.s.color.focus();
return false;
}
var na10=document.s.os.value;
if(na10=="")

{
alert("Please Enter OS");
document.s.os.focus();
return false;
}
var na11=document.s.im.value;
if(na11=="")

{
alert("Please Enter Internal Memory");
document.s.im.focus();
return false;
}
var na12=document.s.em.value;
if(na12=="")

{
alert("Please Enter External Memory");
document.s.em.focus();
return false;
}

}
</script> 



<!--
.style1 {font-size: 36px}
.style2 {color: #FF00FF}
.style3 {
	font-style: italic;
	color: #000000;
}
.style4 {font-weight: bold}
.style5 {
	color: #000000;
	font-weight: bold;
}
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
          <li><a href="A_Login.jsp"><span>Healthcare Server</span></a></li>
          <li class="active"><a href="U_Login.jsp"><span>Ecommerce website </span></a></li>
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
          <h2><span class="style2">Added Infectious Diseases Details </span></h2>
          <p class="infopost">&nbsp;</p>
<%@ include file="connect.jsp" %>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import ="java.text.SimpleDateFormat" %>
<%@ page import ="javax.crypto.Cipher" %> 
<%@ page import ="org.bouncycastle.util.encoders.Base64" %>
<%@ page import ="javax.crypto.spec.SecretKeySpec" %>
<%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
	
	
	
            <%
			       
					
				    ArrayList list = new ArrayList();
					
					ServletContext context = getServletContext();
					
					String dirName =context.getRealPath("Gallery/");
					
					String name=null,dob=null,mobno=null,image=null,bin = "", paramname=null,address=null,dtype=null,desc=null,dt=null,rtype=null,nip=null,loc=null,mws=null,vstatus=null;
					int rank=0;
					
					 String name1 = null;
				 String dob1 = null;
				 String mobno1 = null;
				 String address1 = null;
				 String dtype1 = null;
				 String desc1 = null;
				 						
					
					
					
					FileInputStream fs=null;
					
					File file1 = null;	
					try {
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024);	
						Enumeration params = multi.getParameterNames();
						while (params.hasMoreElements()) 
						{
							paramname = (String) params.nextElement();
							
							
							if(paramname.equalsIgnoreCase("name"))
							{
								name=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("dob"))
							{
								dob=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("mobno"))
							{
								mobno=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("address"))
							{
								address=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("dtype"))
							{
								dtype=multi.getParameter(paramname);
							}
							
							if(paramname.equalsIgnoreCase("desc"))
							{
								desc=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("rtype"))
							{
								rtype=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("nip"))
							{
								nip=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("loc"))
							{
								loc=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("mws"))
							{
								mws=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("vstatus"))
							{
								vstatus=multi.getParameter(paramname);
							}
							
							
							}
							
						int f = 0;
						Enumeration files = multi.getFileNames();	
						while (files.hasMoreElements()) 
						{
							paramname = (String) files.nextElement();
							
							if(paramname != null)
							{
								f = 1;
								image = multi.getFilesystemName(paramname);
								String fPath = context.getRealPath("Gallery\\"+image);
								file1 = new File(fPath);
								fs = new FileInputStream(file1);
								list.add(fs);
							
								
							}		
						}
						
					   SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
		   	           SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
			           Date now = new Date();
			           String strDate = sdfDate.format(now);
			           String strTime = sdfTime.format(now);
			            dt = strDate + "   " + strTime;
			
					     rank =0;
						 
				String keys = "ef50a0ef2c3e3a5f";
				byte[] keyValue = keys.getBytes();
      			Key key = new SecretKeySpec(keyValue, "AES");
      			Cipher c = Cipher.getInstance("AES");
      			c.init(Cipher.ENCRYPT_MODE, key);
      			
				 name1 = new String(Base64.encode(name.getBytes() ) );
				 dob1 = new String(Base64.encode(dob.getBytes() ) );
				 mobno1 = new String(Base64.encode(mobno.getBytes() ) );
				 address1 = new String(Base64.encode(address.getBytes() ) );
				 dtype1 = new String(Base64.encode(dtype.getBytes() ) );
				 desc1 = new String(Base64.encode(desc.getBytes() ) );
				 						
															
	PreparedStatement ps=connection.prepareStatement("insert into Infectious_Diseases(name,dob,mobno,address,dtype,desc1,p_image,rank,dt,rtype,nip,loc,mws,vstatus) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
						
						ps.setString(1,name1);
						ps.setString(2,dob1);
						ps.setString(3,mobno1);
						ps.setString(4,address1);
						ps.setString(5,dtype1);						
						ps.setString(6,desc1);
				        ps.setBinaryStream(7, (InputStream)fs, (int)(file1.length()));	
				        ps.setInt(8,rank);
						ps.setString(9,dt);
						ps.setString(10,rtype);
						ps.setString(11,nip);
						ps.setString(12,loc);
						ps.setString(13,mws);
						ps.setString(14,vstatus);
						
						
						ps.executeUpdate();
					   
						
							%> <h2>Infectious Diseases Added Successfully</h2>
							

			<p><a href="U_Main.jsp" class="style7">Back</a></p>
			<%
			
					
					
					
					
						
					}
					catch (Exception e) 
					{
						out.println(e.getMessage());
					}
			%>

          <p class="infopost">&nbsp;</p>
          <p class="infopost">&nbsp;</p>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
          <div class="clr"></div>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>User</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu style3">
            <strong></strong>
            <li><strong><a href="U_Main.jsp">Home</a></strong></li>
            <li><strong><a href="U_Login.jsp">LogOut</a></strong></li>
          </ul>
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
