<%@ page import="java.io.*,java.sql.*,com.dal.*" errorPage="memlogin.jsp" %>

<%!
String userID="",Tno="",Rname1="",Pname1="",Cname1="";
%>

<%
HttpSession hs=request.getSession(false);
if (hs!= null)
{
	if(!(hs.getAttribute("valid").equals("yes")))
	{
		response.sendRedirect("memlogin.jsp");
	}
	else
	{
		userID=(String)hs.getAttribute("userID");
		Tno=(String)hs.getAttribute("Tno");
	}
}
else
{
	response.sendRedirect("memlogin.jsp");
}

%>
<%!
			Connection xconnection=null;
			Statement xstatement=null,xstatement2=null;
			ResultSet xresultset=null,xresultset2=null;

			String Tpoint="";
%>

<%
try
	  {	    
		 AS_DBCONNECT myConnection = new AS_DBCONNECT();
		 xstatement2=myConnection.AS_Connection.createStatement();
		 xstatement=myConnection.AS_Connection.createStatement();
		 System.out.println("Connection Established ");
		
		 xresultset=xstatement.executeQuery("select mem_rep_name,page_name,mem_points from m_member where mem_id='"+userID+"'");
			while(xresultset.next())
			{
				Rname1=xresultset.getString("mem_rep_name").trim();
				Pname1=xresultset.getString("page_name").trim();
				Tpoint=xresultset.getString("mem_points").trim();
			}
	
%>
<html>
<head><title>AD-Sense User Change Password</title>
<script language="javascript">

function validate()
{
	
	var xinvalid = " "; // Invalid character is a space
    var xminLength = 6; // Minimum length
    var xpw1 = document.CP.c3.value;
    var xpw2 = document.CP.c4.value;
	var old = document.CP.c2.value;
	var xpassword=document.CP.c3.value;
    var xconfirmpassword=document.CP.c4.value;
	    
	if (old == "")
    {
        window.alert("Enter your old Password");
        document.CP.c2.focus();
		document.CP.c2.select();
        return false;
    }
	else if (xpassword == "")
    {
        window.alert("Enter your new password");
		document.CP.c3.focus();
		document.CP.c3.select();
        return false;
    }
     else if (xconfirmpassword == "")
    {
        window.alert("Enter re-type password");
		document.CP.c4.focus();
        document.CP.c4.select();
		return false;
    }
    if (xpw1 == '') {
    window.alert('Enter your Password');
    document.CP.c3.value = "";
    document.CP.c4.value = "";
    document.CP.c3.focus();
    document.CP.c3.select();
    return false;
   }
   else if(xpw2=='')
	{
		alert('Enter re-type password' );
		document.CP.c3.value = "";
        document.CP.c4.value = "";
		document.CP.c3.focus();
		document.CP.c3.select();
	return false;
	}
   // check for minimum length
   else if (document.CP.c3.value.length < xminLength)
   {
   window.alert('Password must be atleast ' + xminLength + ' characters.');
   document.CP.c3.value = "";
   document.CP.c4.value = "";
   document.CP.c3.focus();
   document.CP.c3.select();
   return false;
   }
   // check for spaces
   else if (document.CP.c3.value.indexOf(xinvalid) > -1)
   {
   window.alert("Spaces are not allowed");
   document.CP.c3.value = "";
   document.CP.c4.value = "";
   document.CP.c3.focus();
   document.CP.c3.select();
   return false;
   }
   else
	{
   if (xpw1 != xpw2) 
	{
   window.alert ("Password Mismatch");
   document.CP.c3.value = "";
   document.CP.c4.value = "";
   document.CP.c3.focus();
   document.CP.c3.select();
   return false;
   } 
}
   	
     return true;
}


</script><script language="JavaScript">
 function GL_Closer() 
{
 this.close();
 window.open("signout.jsp");
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
</style>
</head>
<body bgcolor="white" onLoad="document.CP.c2.focus()">
<div align="left">
  <center>
  <table border="0" width="986" height="56" bgcolor="#BD9D3C" style="border: 1 solid white">
    <tr>
      <td width="113" height="34" valign="bottom">
        <p align="center"><font face="Verdana" size="2" color="#FFFFFF"><b>AD-Sense
        Point</b></font></td>
      <td width="49" height="56" rowspan="2">&nbsp;</td>
      <td width="120" height="56" rowspan="2" valign="top">
        <p align="center">&nbsp;</td>
  </center>
      <td width="308" height="56" rowspan="2" valign="top">
        <p align="center"><b><font size="5" face="Lucida Calligraphy" color="#FFFFFF">AD-Sense</font></b>
		<br><font face="Verdana" size="2" color="#FFFFFF"><b><%=Pname1%></b></font>
		</td>
      <td width="35" height="33" valign="middle">
        <p align="right"></td>
      <td width="203" height="33" valign="top">
        <p align="right"><A HREF="changepass.jsp"><font face="Verdana" size="2" color="#FFFFFF"><b><u>Change Password</u></b></font></A></td>
      <td width="89" height="33" valign="top">
        <p align="right"><input type="button" value="Sign Out" onClick="GL_Closer()" style="background-color: #BD9D3C; color: #FFFFFF; font-family: Verdana; font-weight: bold; font-size: 10pt; text-decoration: underline; border-style: solid; border-color: #BD9D3C"></td>
    </tr>
  <center>
    <tr>
      <td width="113" height="26" valign="middle">
        <p align="center"><font face="Verdana" size="3" color="#FFFFFF"><b><%=Tpoint%></b></font></td>
      <td width="27" height="27" valign="top">
        &nbsp;</td>
  </center>
      <td width="276" height="20" colspan="2">
        <p align="right"><font face="Verdana" size="2" color="#FFFFFF"><b>Welcome&nbsp;&nbsp;&nbsp;<%=Rname1%></b></font></td>
    </tr>
  </table>
</div>
<div align="left">

  <table border="0" width="985" height="453" bgcolor="#BD9D3C" bordercolor="white" bordercolordark="white" bordercolorlight="white" style="background-color: white; color: white; border: 1 solid white" cellspacing="1">
    <tr>
      <td width="52" height="23" align="center" style="border: 1 solid white" bgcolor="#BD9D3C">
        <p align="center"><font face="Verdana" size="2" color="#FFFFFF"><b>&nbsp;
        </b></font><A HREF="userhome.jsp"><font face="Verdana" size="2" color="#FFFFFF"><b>Home</b></font></A></td>
 
      <td width="104" height="23" align="center" style="border: 1 solid white" bgcolor="#BD9D3C">
        <p align="center">
        <font face="Verdana" size="2" color="#FFFFFF"><b>&nbsp; </b></font>
        <A HREF="addproduct.jsp"><font face="Verdana" size="2" color="#FFFFFF"><b>Add
        Products</b></font></A></p>
      </td>
 
      <td width="122" height="23" align="center" style="border: 1 solid white" bgcolor="#BD9D3C">
        <p align="center">
        <font face="Verdana" size="2" color="#FFFFFF"><b>&nbsp; </b></font>
        <A HREF="addrequest.jsp"><font face="Verdana" size="2" color="#FFFFFF"><b>Advt. Request</b></font></A></p>

      </td>
 
      <td width="165" height="23" align="center" style="border: 1 solid white" bgcolor="#BD9D3C">
        <p align="center">
        <font face="Verdana" size="2" color="#FFFFFF"><b>&nbsp; </b></font>
        <A HREF="changepass.jsp"><font face="Verdana" size="2" color="#FFFFFF"><b>Change&nbsp;
        Password</b></font></A></p>
      </td>
 
      <td width="105" height="23" align="center" style="border: 1 solid white" bgcolor="#BD9D3C">
        <font face="Verdana" size="2" color="#FFFFFF"><b>&nbsp;&nbsp;&nbsp;&nbsp;
        </b></font>
        <A HREF="editprofile.jsp"><font face="Verdana" size="2" color="#FFFFFF"><b>Edit Profile</b></font></A></td>
 
      <td width="266" height="476" rowspan="2" bgcolor="white" style="border: 1 solid #BD9D3C" valign="top">
<p align="center">
<br>
&nbsp;&nbsp;&nbsp;<font color="#800000">&nbsp;</font><font color="#000000"> <b><u><font face="Verdana" size="2">Sponsored&nbsp;
Links</font></u></b></font></p>
      <div align="center">
    <center>
    <table border="0" cellpadding="0" width="272" height="102" bordercolordark="#BD9D3C" bordercolor="#BD9D3C" bordercolorlight="#BD9D3C">
<%!
			String Ano="",Ahead="",Adesc="",Alink="";
%>

<%					
xresultset2=xstatement2.executeQuery("SELECT m_ads.ad_no,m_ads.ad_headline,m_ads.ad_desc,m_ads.ad_link FROM t_ads,m_ads WHERE (t_ads.mem_id='"+userID+"' and t_ads.ad_no=m_ads.ad_no)");
		while(xresultset2.next())
		{
			Ano=xresultset2.getString(1).trim();
			Ahead=xresultset2.getString(2).trim();
			Adesc=xresultset2.getString(3).trim();
			Alink=xresultset2.getString(4).trim();
%>	  
	  
	  <tr>
        <td width="5" height="98" valign="top" bgcolor="white" align="left">
          &nbsp;</td>
        <td width="255" height="98" valign="top" bgcolor="white" align="left">
        <font size="2" face="Verdana" ><A HREF="memads.jsp?id=<%=Alink%>"><b><u><%=Ahead%></u></b></A></font>
		 <br>
		 <font size="2" face="Verdana" ><%=Adesc%></font>
		 </td>
		
        </tr>
<%}
%>
      
    </table>
  </div>
</center>
      </td>
 
    </tr>
  <center>
  </center>
    <tr>
      <td width="523" height="453" colspan="5" bgcolor="white" bordercolor="#BD9D3C" style="border: 1 solid #BD9D3C" valign="top">
      &nbsp;
<br><br><br><br>
<form method="POST" name="CP" action="Pass_Change">
  <!--webbot bot="SaveResults" U-File="fpweb:///_private/form_results.txt"
  S-Format="TEXT/CSV" S-Label-Fields="TRUE" -->
  <div align="right">
    <table border="2" cellpadding="0" width="449" height="262" bordercolordark="#BD9D3C" bordercolor="#BD9D3C" bordercolorlight="#BD9D3C">
      <tr>
        <td width="548" height="36" valign="middle" bgcolor="#BD9D3C">
          <p align="center"><b><font face="Verdana" color="#FFFFFF" size="2">Change
          Password</font></b></td>
      </tr>
    <center>
      <tr>
        <td width="548" height="222" valign="top">
         		    <div align="center">
            <table border="0" cellpadding="0" width="433" height="143">
              <tr>
                <td width="425" height="33" colspan="3">
               
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
		  </center>
		      <center>
            <tr>
                <td width="217" height="44" align="right">
                <font size="2" face="Verdana"><b>User Name </b></font>

			</td>
                <td width="15" height="44" align="center">
                <font size="2" face="Verdana"><b>:</b></font>

			</td>
                <td width="193" height="44" align="left">
     <input type="text" name="c1" size="20" value="<%=userID%>"  style="font-family: Verdana; font-size: 10pt; font-weight: bold; background-color: #C0C0C0" readonly>



			</td>
            </tr>
            <tr>
                <td width="217" height="47" align="right">
                <font size="2" face="Verdana"><b>Old Password</b></font>

			</td>
                <td width="15" height="47" align="center">
                <font size="2" face="Verdana"><b>:</b></font>

			</td>
                <td width="193" height="47" align="left">
                <input type="password" name="c2" size="20">

			</td>
            </tr>
            <tr>
                <td width="217" height="47" align="right">
                <font size="2" face="Verdana"><b>New Password</b></font>

			</td>
                <td width="15" height="47" align="center">
                <font size="2" face="Verdana"><b>:</b></font>

			</td>
                <td width="193" height="47" align="left">
                <input type="password" name="c3" size="20">

			</td>
            </tr>
            <tr>
                <td width="217" height="39" align="right">

            <b><font face="Verdana" size="2">Re-Type New Password</font></b>

			</td>
                <td width="15" height="39" align="center">

            <b><font face="Verdana" size="2">:</font></b>

			</td>
                <td width="193" height="39" align="left">

            <input type="password" name="c4" size="20">

			</td>
            </tr>
            <tr>
                <td width="425" height="47" align="right" colspan="3">
                <p align="center"><input type="image" src="AS_Images/Change.jpg" width="63" height="25" border="0"  onClick="return validate()">

			</td>
            </tr>
            <tr>
                <td width="425" height="2" align="right" colspan="3">

			</td>
            </tr>
            </table>
  </div>
      </td>
 
    </tr>
  </table>
</div><br>
<%
		}
	
catch(SQLException e) 
	{
		System.out.println(e);
	}
	%>

  </form>
    </table>

</body>

