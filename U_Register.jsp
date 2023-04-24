<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Registration Page</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-chunkfive.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&key=AIzaSyD0X4v7eqMFcWCR-VZAJwEMfb47id9IZao"></script>
        <script>
            var map;

            function initialize() {
                var mapOptions = {
                    zoom: 12,
                    center: new google.maps.LatLng(12.9716, 77.5946),
                    mapTypeId: google.maps.MapTypeId.ROADMAP
                };
                map = new google.maps.Map(document.getElementById('map_canvas'),
                    mapOptions
                );
                google.maps.event.addListener(map, 'click', function(event) {
                    document.getElementById('latMap').value = event.latLng.lat();
                    document.getElementById('lngMap').value = event.latLng.lng();
                });
            }
            function mapDivClicked (event) {
                var target = document.getElementById('map_canvas'),
                    posx = event.pageX - target.offsetLeft,
                    posy = event.pageY - target.offsetTop,
                    bounds = map.getBounds(),
                    neLatlng = bounds.getNorthEast(),
                    swLatlng = bounds.getSouthWest(),
                    startLat = neLatlng.lat(),
                    endLng = neLatlng.lng(),
                    endLat = swLatlng.lat(),
                    startLng = swLatlng.lng();

                document.getElementById('posX').value = posx;
                document.getElementById('posY').value = posy;
                document.getElementById('lat').value = startLat + ((posy/350) * (endLat - startLat));
                document.getElementById('lng').value = startLng + ((posx/500) * (endLng - startLng));
            }
            google.maps.event.addDomListener(window, 'load', initialize);
        </script>


<script language="javascript" type="text/javascript">      <!--Start Reg Validation Jai Siddalinga-->
function valid()
{
var na3=document.s.name.value;
if(na3=="")

{
alert("Please Enter User Name");
document.s.name.focus();
return false;
}
else
{

}
var na4=document.s.pwd.value;
if(na4=="")

{
alert("Please Enter Password");
document.s.pwd.focus();
return false;
}



var na6=document.s.email.value;
if(na6=="")

{
alert("Please Enter the Email");
document.s.email.focus();
return false;
}

var na7=document.s.mob.value;
if(na7=="")

{
alert("Please Enter the Mobile");
document.s.mob.focus();
return false;
}
var na5=document.s.dob.value;
if(na5=="")

{
alert("Please Enter the DOB");
document.s.dob.focus();
return false;
}

var na11=document.s.gen.value;
if(na11=="--Select--")

{
alert("please choose Gender");
document.s.gen.focus();
return false;
}
var na8=document.s.add.value;
if(na8=="")

{
alert("Please Enter the Address ");
document.s.add.focus();
return false;
}

var na9=document.s.loc.value;
if(na9=="")

{
alert("Please Enter the Location");
document.s.loc.focus();
return false;
}

var na12=document.s.lat.value;
if(na12=="")

{
alert("Please Enter the Latitued");
document.s.lat.focus();
return false;
}

var na13=document.s.lon.value;
if(na13=="")

{
alert("Please Enter the Longitued");
document.s.lon.focus();
return false;
}

var na10=document.s.photo.value;
if(na10=="")

{
alert("please choose image");
document.s.photo.focus();
return false;
}
var na11=document.s.cont.value;
if(na11=="")

{
alert("please choose Your Country");
document.s.cont.focus();
return false;
}
var na12=document.s.state.value;
if(na12=="")

{
alert("please choose Your State");
document.s.state.focus();
return false;
}



}
</script>
<style type="text/css">
<!--
.style1 {color: #FF00FF}
.style2 {color: #FF0000}
.style3 {font-size: 36px}
.style4 {font-size: 14px}
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
          <li><a href="A_Login.jsp"><span>Admin</span></a></li>
          <li class="active"><a href="U_Login.jsp"><span>User</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="logo">
        <h1><a href="index.html" class="style3">Fast Containment of Infectious Diseases with E-healthcare Mobile Social Internet of Things<br />
        </a></h1>
      </div>
      <div class="searchform"></div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" />Fast Containment of Infectious Diseases with E-healthcare Mobile Social Internet of Things<br />
        </a> <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" />Fast Containment of Infectious Diseases with E-healthcare Mobile Social Internet of Things<br />
        </a> <a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" />Fast Containment of Infectious Diseases with E-healthcare Mobile Social Internet of Things<br />
        </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
           <h2><span class="style1">User Registration Form</span></h2>
           <p>&nbsp;</p>
           <p align="center"><img src="images/Register.jpg" width="205" height="126" /></p>
           <form name="s" method="post" enctype="multipart/form-data" action="U_RegIns.jsp" onSubmit="return valid()"  ons>
	<table height="351" align="center" cellspacing="5">
	<tr>
	<td><table cellpadding="10">
	<tr>
	<td>
	  <div align="right" class="style4 style2"><span class="style11"><font size="+1">User Name : </font> </span></div></td>
	<td><input type="text" id="name" name="name" style="width:100%"></td>
	</tr>
	<tr>
	<td>
	  <div align="right" class="style4 style2"><span class="style11"><font size="+1">Password :</font> </span></div></td>
	<td><label>
	  <input type="password" id="pwd" name="pwd" style="width:100%">
	</label></td>
	</tr>
	<tr>
	<td><div align="right" class="style4 style2"><span class="style13"><font size="+1">Email :</font></span></div></td>
	<td><input type="text" id="email" name="email" style="width:100%" placeholder="abc@gmail.com"></td>
	</tr>
	<tr>
	<td>
	  <div align="right" class="style4 style2"><span class="style13"><font size="+1">Mobile :</font> </span></div></td>
	<td><label>
	  <input type="text" id="mob" name="mob" style="width:100%">
	</label>
	  </p></td>
	</tr>
	<tr>
	<td>
	  <div align="right" class="style4 style2"><span class="style13"><font size="+1">DOB :</font></span></div></td>
	<td><label>
	  <input type="text" id="dob" name="dob" style="width:100%" placeholder="DD/MM/YYYY">
	</label></td>
	</tr>
	<tr>
	<td>
	  <div align="right" class="style4 style2"><span class="style13"><font size="+1">Gender :</font></span></div></td>
	<td><label>
	  <select id="gen" name="gen">
	  <option>--Select--</option>
	  <option>Male</option>
	  <option>Female</option>
	  </select>
	</label></td>
	</tr>
	<tr>
	<td><div align="right" class="style4 style2"><span class="style13"><font size="+1">Address :</font> </span></div></td>
	<td>
	<label>
	
	 <textarea name="add" id="add" style="width:100%"></textarea>
	</label>
	  </p></td>
	</tr>
	<tr>
	<td><div align="right" class="style4 style2"><span class="style13"><font size="+1">Location :</font> </span></div></td>
	<td>
	   <input type="text" id="loc" name="loc" style="width:100%" placeholder="LOCATION"></td></tr>
	<tr>
	<td>
	  <div align="right" class="style4 style2"><span class="style13"><font size="+1">Choose Photo :</font> </span></div></td>
	<td>
	<input type="file" id="photo" name="photo" style="width:100%" > 	</td>
	</tr>
	
	  <td>&nbsp;</td>
	  <td>&nbsp;</td>
	  </tr>
	<tr>
	<td>&nbsp;</td>
	<td><input type="submit" value="Register" id="button1"><input type="reset" value="clear"></td>
		  </tr>
	</table>	</td>
	</tr>
	</table>
	</form>
  
   
     <p>&nbsp;</p>
	 <br>
	 <p align="right"><a href="U_Login.jsp" class="style3">Back</a></p>
          <div class="clr"></div>
        </div>
        <p class="pages">&nbsp;</p>
      </div>
     <div class="fbg"></div>
  </div>
    <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
