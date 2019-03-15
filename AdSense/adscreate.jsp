<%@ page import="java.io.*,java.sql.*,com.dal.*" errorPage="adminlogin.jsp" %>
 
<%!
String userID="",userName="";
%>

<%
HttpSession hs=request.getSession(false);
if (hs!= null)
{
	if(!(hs.getAttribute("valid").equals("yes")))
	{
		response.sendRedirect("adminlogin.jsp");
	}
	else
	{
		userID=(String)hs.getAttribute("userID");
		userName=(String)hs.getAttribute("userName");
	}
}
else
{
	response.sendRedirect("adminlogin.jsp");
}

%>
<html>
<head><title>AD-Sense Ads Creation</title>
<script language="javascript">
function validate()
{
	if(document.adscreate.c1.value.length==0)
	{
		alert("Enter the headline");
		document.adscreate.c1.focus();
		return false
	}
	
	if(document.adscreate.c2.value.length==0)
	{
		alert("Enter some description");
		document.adscreate.c2.focus();
		return false
	}

	if(document.adscreate.c3.value.length==0)
	{
		alert("Enter the link");
		document.adscreate.c3.focus();
		return false
	}

	if(document.adscreate.c4.value.length==0)
	{
		alert("Enter the total display");
		document.adscreate.c4.focus();
		return false
	}

	if(document.adscreate.c6.value.length==0)
	{
		alert("Select the start date");
		document.adscreate.c6.focus();
		return false
	}

	if(document.adscreate.c7.value.length==0)
	{
		alert("Select the expire date");
		document.adscreate.c7.focus();
		return false
	}

}



</script>

<script language="JavaScript">
 function GL_Closer() 
{
 this.close();
 window.open("signout.jsp");
}

function changeVisibility()
{
document.getElementById("p1").style.visibility="visible";
}

function changeVisibility1()
{
document.getElementById("p1").style.visibility="hidden";
}
</script>

<script language="JavaScript" >

<%
if((request.getAttribute("update"))!=null)
{
%>
	window.alert("<%=request.getAttribute("update")%>")
<%
}%>

<%
if((request.getAttribute("create"))!=null)
{
%>
	window.alert("<%=request.getAttribute("create")%>")
<%
}

%>
</script>

<style>
	a:link
 {
	color:blue;
	text-decoration:none;
	
  }

  a:visited
  {
	  color:blue;
	  text-decoration:none;
  }
  a:hover
  {
    color:blue;
	
	text-decoration:none;
  }
 <style type="text/css">
			.calendar {
				font-family: 'Trebuchet MS', Tahoma, Verdana, Arial, sans-serif;
				font-size: 0.9em;
				background-color: #EEE;
				color: #333;
				border: 1px solid #DDD;
				-moz-border-radius: 4px;
				-webkit-border-radius: 4px;
				border-radius: 4px;
				padding: 0.2em;
				width: 14em;
			}
			
			.calendar .months {
				background-color: #F6AF3A;
				border: 1px solid #E78F08;
				-moz-border-radius: 4px;
				-webkit-border-radius: 4px;
				border-radius: 4px;
				color: #FFF;
				padding: 0.2em;
				text-align: center;
			}
			
			.calendar .prev-month,
			.calendar .next-month {
				padding: 0;
			}
			
			.calendar .prev-month {
				float: left;
			}
			
			.calendar .next-month {
				float: right;
			}
			
			.calendar .current-month {
				margin: 0 auto;
			}
			
			.calendar .months .prev-month,
			.calendar .months .next-month {
				color: #FFF;
				text-decoration: none;
				padding: 0 0.4em;
				-moz-border-radius: 4px;
				-webkit-border-radius: 4px;
				border-radius: 4px;
				cursor: pointer;
			}
			
			.calendar .months .prev-month:hover,
			.calendar .months .next-month:hover {
				background-color: #FDF5CE;
				color: #C77405;
			}
			
			.calendar table {
				border-collapse: collapse;
				padding: 0;
				font-size: 0.8em;
				width: 100%;
			}
			
			.calendar th {
				text-align: center;
			}
			
			.calendar td {
				text-align: right;
				padding: 1px;
				width: 14.3%;
			}
			
			.calendar td span {
				display: block;
				color: #1C94C4;
				background-color: #F6F6F6;
				border: 1px solid #CCC;
				text-decoration: none;
				padding: 0.2em;
				cursor: pointer;
			}
			
			.calendar td span:hover {
				color: #C77405;
				background-color: #FDF5CE;
				border: 1px solid #FBCB09;
			}
			
			.calendar td.today span {
				background-color: #FFF0A5;
				border: 1px solid #FED22F;
				color: #363636;
			}
		</style>
  
</style>
<script language="JavaScript" >

<%
if((request.getAttribute("update"))!=null)
{
%>
	window.alert("<%=request.getAttribute("update")%>")
<%
}%>

<%
if((request.getAttribute("create"))!=null)
{
%>
	window.alert("<%=request.getAttribute("create")%>")
<%
}

%>
</script>



</head>
<body bgcolor="white" onLoad="document.adscreate.c1.focus()">

<DIV id=popCal onclick=event.cancelBubble=true style="BORDER-BOTTOM: 2px ridge; BORDER-LEFT: 2px 
ridge; BORDER-RIGHT: 2px ridge; BORDER-TOP: 2px ridge; POSITION: absolute; VISIBILITY: hidden; 
WIDTH: 10px; Z-INDEX: 100">
<IFRAME frameBorder=0 height=188 name=popFrame scrolling=no src="popcjs.htm" width=183>
</IFRAME>
</DIV>
<script event=onclick() 
                for=document>popCal.style.visibility = "hidden";
 </script>

<div align="center">
  <center>
  <table border="0" width="986" height="56" bgcolor="#BD9D3C" style="border: 1 solid white">
    <tr>
      <td width="113" height="34" valign="bottom">
       </td>
      <td width="49" height="56" rowspan="2">&nbsp;</td>
      <td width="120" height="56" rowspan="2" valign="top">
        <p align="center">&nbsp;</td>
  </center>
      <td width="308" height="56" rowspan="2" valign="top">
        <p align="center"><b><font size="5" face="Lucida Calligraphy" color="#FFFFFF">AD-Sense</font></b>
		</td>
      <td width="35" height="33" valign="middle">
        <p align="right"></td>
      <td width="203" height="33" valign="top">
        <p align="right"><A HREF="adminchangepass.jsp"><font face="Verdana" size="2" color="#FFFFFF"><b><u>Change Password</u></b></font></A></td>
      <td width="89" height="33" valign="top">
        <p align="right"><input type="button" value="Sign Out" onClick="GL_Closer()" style="background-color: #BD9D3C; color: #FFFFFF; font-family: Verdana; font-weight: bold; font-size: 10pt; text-decoration: underline; border-style: solid; border-color: #BD9D3C"></td>
    </tr>
  <center>
    <tr>
      <td width="113" height="26" valign="middle">
        </td>
      <td width="27" height="27" valign="top">
        &nbsp;</td>
  </center>
      <td width="276" height="20" colspan="2">
        <p align="right"><font face="Verdana" size="2" color="#FFFFFF"><b>Welcome&nbsp;&nbsp;&nbsp;<%=userName%></b></font></td>
    </tr>
  </table>
</div>
  <table border="1" width="985" height="23" bordercolor="#FFFFFF" bordercolorlight="#FFFFFF" bordercolordark="#FFFFFF" bgcolor="#BD9D3C" style="background-color: #FFFFFF; color: #FFFFFF; border: 1 solid #FFFFFF">
<tr>
      <td width="85" height="23" style="border: 1 solid #FFFFFF" bgcolor="#BD9D3C" bordercolor="#FFFFFF" bordercolorlight="#FFFFFF" bordercolordark="#FFFFFF" align="center"><A HREF="adminhome.jsp"><font face="Verdana" size="2" color="#FFFFFF"><b>Home</b></font></A></td>
      <td width="149" height="23" style="border: 1 solid #FFFFFF" bgcolor="#BD9D3C" bordercolor="#FFFFFF" bordercolorlight="#FFFFFF" bordercolordark="#FFFFFF" align="center"><A HREF="adminuserdetails.jsp"><font face="Verdana" size="2" color="#FFFFFF"><b>Admin
        Details</b></font></A></td>
      <td width="151" height="23" style="border: 1 solid #FFFFFF" bgcolor="#BD9D3C" bordercolor="#FFFFFF" bordercolorlight="#FFFFFF" bordercolordark="#FFFFFF" align="center"><A HREF="memberdetails.jsp"><font face="Verdana" size="2" color="#FFFFFF"><b>Member
        Details</b></font></A></td>
      <td width="154" height="23" style="border: 1 solid #FFFFFF" bgcolor="#BD9D3C" bordercolor="#FFFFFF" bordercolorlight="#FFFFFF" bordercolordark="#FFFFFF" align="center"><A HREF="catdetails.jsp"><font face="Verdana" size="2" color="#FFFFFF"><b>Category
        Details</b></font></A></td>
      <td width="119" height="23" style="border: 1 solid #FFFFFF" bgcolor="#BD9D3C" bordercolor="#FFFFFF" bordercolorlight="#FFFFFF" bordercolordark="#FFFFFF" align="center"><A HREF="adsdetails.jsp"><font face="Verdana" size="2" color="#FFFFFF"><b>Online
        Ads</b></font></A></td>
      <td width="139" height="23" style="border: 1 solid #FFFFFF" bgcolor="#BD9D3C" bordercolor="#FFFFFF" bordercolorlight="#FFFFFF" bordercolordark="#FFFFFF" align="center"><A HREF="adsallocate.jsp"><font face="Verdana" size="2" color="#FFFFFF"><b>Ads
        Allocation</b></font></A></td>
      <td width="142" height="23" style="border: 1 solid #FFFFFF" bgcolor="#BD9D3C" bordercolor="#FFFFFF" bordercolorlight="#FFFFFF" bordercolordark="#FFFFFF" align="center"><A HREF="memberpoints.jsp"><font face="Verdana" size="2" color="#FFFFFF"><b>Members
        Points</b></font></A></td>
    </tr>

  </table>
<br>
<form method="POST" name="adscreate" action="Ads_Create">
  <!--webbot bot="SaveResults" U-File="fpweb:///_private/form_results.txt"
  S-Format="TEXT/CSV" S-Label-Fields="TRUE" -->
  <div align="center">
    <center>
    <table border="2" cellpadding="0" width="519" height="262" bordercolordark="#BD9D3C" bordercolor="#BD9D3C" bordercolorlight="#BD9D3C">
      <tr>
        <td width="614" height="36" valign="middle" bgcolor="#BD9D3C">
          <p align="center"><b><font face="Verdana" color="#FFFFFF" size="2">New&nbsp;
          Advertisement</font></b></td>
      </tr>
      <tr>
        <td width="614" height="222" valign="top">
         		    <div align="center">
            <table border="0" cellpadding="0" width="491" height="35">
              
		  </center>
		      <center>
		      <tr>
                <td width="483" height="1" align="center" colspan="3">
                <%
String status=(String)request.getAttribute("status");
System.out.println(status);
if(status==null)
{
}
else{
%>
<p align="center"><b><font face="Verdana" color="red" size="2"><%=status%></font></b></p>
<% } %>
			</td>

   

            </tr>
		      
            <tr>
                <td width="217" height="44" align="right">
                <font size="2" face="Verdana"><b>Advt. Headline</b></font>

			</td>
                <td width="15" height="44" align="center">
                <font size="2" face="Verdana"><b>:</b></font>

			</td>
                <td width="251" height="44" align="left">
                <input type="text" name="c1" size="20">&nbsp;

			</td>
            </tr>
            <tr>
                <td width="217" height="47" align="right" valign="top">
                <font size="2" face="Verdana"><b>Advt. Description</b></font>

			</td>
                <td width="15" height="46" align="center" valign="top">
                <font size="2" face="Verdana"><b>:</b></font>

			</td>
                <td width="251" height="46" align="left">
                <textarea rows="3" name="c2" cols="24"></textarea>&nbsp;

			</td>
            </tr>
            <tr>
                <td width="217" height="43" align="right">
                <font size="2" face="Verdana"><b>Advt. Link</b></font>

			</td>
                <td width="15" height="43" align="center">
                <font size="2" face="Verdana"><b>:</b></font>

			</td>
                <td width="251" height="43" align="left">
                <input type="text" name="c3" size="20">

			</td>
            </tr>
            <tr>
                <td width="217" height="47" align="right">
                <font face="Verdana" size="2"><span style="mso-bidi-font-size: 12.0pt; mso-fareast-font-family: MS Mincho; mso-bidi-font-family: Times New Roman; mso-ansi-language: EN-US; mso-fareast-language: JA; mso-bidi-language: AR-SA"><b style="mso-bidi-font-weight: normal; mso-bidi-font-size: 12.0pt; mso-fareast-font-family: MS Mincho; mso-bidi-font-family: Times New Roman; mso-ansi-language: EN-US; mso-fareast-language: JA; mso-bidi-language: AR-SA">Total
                Display</b></span></font>

			</td>
                <td width="15" height="47" align="center">
                <font size="2" face="Verdana"><b>:</b></font>

			</td>
                <td width="251" height="47" align="left">
                <input type="text" name="c4" size="20">&nbsp;

			</td>
            </tr>
            <tr>
                <td width="217" height="37" align="right">
                <font size="2" face="Verdana"><b>Status</b></font>

			</td>
                <td width="15" height="37" align="center">
                <font size="2" face="Verdana"><b>:</b></font>

			</td>
                <td width="251" height="37" align="left">
                <select size="1" name="c5" >
                  <option selected value="Active">Active</option>
                 
                </select>
                
			</td>
            </tr>
            <tr>
                <td width="217" height="47" align="right">
                <font size="2" face="Verdana"><b>Start Date</b></font>

			</td>
                <td width="15" height="47" align="center">
                <font size="2" face="Verdana"><b>:</b></font>

			</td>
                <td width="251" height="47" align="left">
                <input type="text" name="c6" size="20"   placeholder="dd/mm/yyyy"  >
               

			</td>
            </tr>
            <tr>
                <td width="217" height="47" align="right">
                <font size="2" face="Verdana"><b>Exp. Date</b></font>

			</td>
                <td width="15" height="47" align="center">
                <font size="2" face="Verdana"><b>:</b></font>

			</td>
                <td width="251" height="47" align="left">
                <input name='c7' type='text'  size="20" placeholder="dd/mm/yyyy"    />
                
                            

			</td>
            </tr>
            <tr>
                <td width="217" height="47" align="right">
                <font face="Verdana" size="2"><span style="mso-bidi-font-size: 12.0pt; mso-fareast-font-family: MS Mincho; mso-bidi-font-family: Times New Roman; mso-ansi-language: EN-US; mso-fareast-language: JA; mso-bidi-language: AR-SA"><b style="mso-bidi-font-weight: normal; mso-bidi-font-size: 12.0pt; mso-fareast-font-family: MS Mincho; mso-bidi-font-family: Times New Roman; mso-ansi-language: EN-US; mso-fareast-language: JA; mso-bidi-language: AR-SA">Is
                Member</b></span></font>

			</td>
                <td width="15" height="47" align="center">
                <font size="2" face="Verdana"><b>:</b></font>

			</td>
                <td width="251" height="47" align="left">
               <input type="radio" name="c8" checked="checked" value="y" onclick="changeVisibility()" >
               <font size="2" face="Verdana"><b>Yes</b></font>&nbsp;&nbsp;&nbsp; 
				 <input type="radio" name="c8" value="n" onclick="changeVisibility1()" >
				 <font size="2" face="Verdana"><b>No</b></font>

			</td>
            </tr>
            <tr id="p1">
                <td width="217" height="47" align="right">
                <font face="Verdana" size="2"><span style="mso-bidi-font-size: 12.0pt; mso-fareast-font-family: MS Mincho; mso-bidi-font-family: Times New Roman; mso-ansi-language: EN-US; mso-fareast-language: JA; mso-bidi-language: AR-SA"><b style="mso-bidi-font-weight: normal; mso-bidi-font-size: 12.0pt; mso-fareast-font-family: MS Mincho; mso-bidi-font-family: Times New Roman; mso-ansi-language: EN-US; mso-fareast-language: JA; mso-bidi-language: AR-SA">Member
                Id</b></span></font>

			</td>
                <td width="15" height="47" align="center">
                <font size="2" face="Verdana"><b>:</b></font>

			</td>
                <td width="251" height="47" align="left">
                <input type="text" name="c9" size="20" value="Member Id" onfocus="if(this.value=='Member Id') this.value='';">&nbsp;

			</td>
            </tr>
            
            <tr>
                <td width="483" height="47" align="right" colspan="3">
                <p align="center">
		         <input type="image" src="AS_Images/Create.jpg" width="63" height="25" border="0"  onClick="return validate()">
				 </td>
            </tr>
            <tr>
                <td width="483" height="2" align="right" colspan="3">

			</td>
            </tr>
            </table>
          </div> 		    
       
        </center> 		    
       	<script type="text/javascript" src="datepickr.js"></script>
		<script type="text/javascript">
			new datepickr('datepick');
			
			new datepickr('datepick2', {
				'dateFormat': 'm/d/y'
			});
			
			new datepickr('datepick3', {
				'fullCurrentMonth': false,
				'dateFormat': 'l, F j'
			});
		</script>
        </td>
      </tr>
    </table>
  </div>
</form>
</body>
</html>
