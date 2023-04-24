
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
try
{

%><html>
<head>
<title>Transaction Results</title>
<script type="text/javascript" src="sources/jscharts.js"></script>
</head>
<body>
<div id="graph">Loading graph...</div>
<script type="text/javascript">
var myData=new Array();
var colors=[];

<%
	int i=0;
	
	String s1=null;
	int rank=0;
	
			
					String query1="select dtype,nip from Infectious_Diseases"; 
					Statement st1=connection.createStatement();
					ResultSet rs1=st1.executeQuery(query1);
					while ( rs1.next() )
					{
								s1=rs1.getString(1);
								rank=rs1.getInt(2);
								
										String keys = "ef50a0ef2c3e3a5f";
		
										byte[] keyValue = keys.getBytes();
										Key key = new SecretKeySpec(keyValue, "AES");
										Cipher c2 = Cipher.getInstance("AES");
										c2.init(Cipher.DECRYPT_MODE, key);
									
									   String s11= new String(Base64.decode(s1.getBytes()));
								
					
						
						%>		
						myData["<%=i%>"]=["<%=s11 %>",<%=rank%>];
						<%
						i++;
					
			}
	%>
	
	var myChart = new JSChart('graph', 'bar');
	myChart.setDataArray(myData);
	myChart.setBarColor('#42aBdB');
	myChart.setBarOpacity(0.8);
	myChart.setBarBorderColor('#D9EDF7');
	myChart.setBarValues(true);
	myChart.setTitleColor('#8C8383');
	myChart.setAxisColor('#777E89');
	myChart.setSize(500,350);
	myChart.setAxisValuesColor('#777E81');
	myChart.draw();
	
</script>

</body>
</html>
<%
}
catch(Exception e)
{
e.printStackTrace();
}
%>

