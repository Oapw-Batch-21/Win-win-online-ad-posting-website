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
<head><title>AD-Sense Advertisement Allotment Details</title>
<script language="JavaScript">

function GL_Closer() 
{
 this.close();
 window.open("signout.jsp");
}
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
<body bgcolor="white">

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
      <td width="130" height="23" style="border: 1 solid #FFFFFF" bgcolor="#BD9D3C" bordercolor="#FFFFFF" bordercolorlight="#FFFFFF" bordercolordark="#FFFFFF" align="center"><A HREF="adminhome.jsp"><font face="Verdana" size="2" color="#FFFFFF"><b>Home</b></font></A></td>
      <td width="192" height="23" style="border: 1 solid #FFFFFF" bgcolor="#BD9D3C" bordercolor="#FFFFFF" bordercolorlight="#FFFFFF" bordercolordark="#FFFFFF" align="center"><A HREF="adminuserdetails.jsp"><font face="Verdana" size="2" color="#FFFFFF"><b>Admin
        Details</b></font></A></td>
      <td width="194" height="23" style="border: 1 solid #FFFFFF" bgcolor="#BD9D3C" bordercolor="#FFFFFF" bordercolorlight="#FFFFFF" bordercolordark="#FFFFFF" align="center"><A HREF="memberdetails.jsp"><font face="Verdana" size="2" color="#FFFFFF"><b>Member
        Details</b></font></A></td>
      <td width="148" height="23" style="border: 1 solid #FFFFFF" bgcolor="#BD9D3C" bordercolor="#FFFFFF" bordercolorlight="#FFFFFF" bordercolordark="#FFFFFF" align="center"><A HREF="adsdetails.jsp"><font face="Verdana" size="2" color="#FFFFFF"><b>Online
        Ads</b></font></A></td>
      <td width="139" height="23" style="border: 1 solid #FFFFFF" bgcolor="#BD9D3C" bordercolor="#FFFFFF" bordercolorlight="#FFFFFF" bordercolordark="#FFFFFF" align="center"><A HREF="adsallocate.jsp"><font face="Verdana" size="2" color="#FFFFFF"><b>Ads
        Allocation</b></font></A></td>
      <td width="142" height="23" style="border: 1 solid #FFFFFF" bgcolor="#BD9D3C" bordercolor="#FFFFFF" bordercolorlight="#FFFFFF" bordercolordark="#FFFFFF" align="center"><A HREF="memberpoints.jsp"><font face="Verdana" size="2" color="#FFFFFF"><b>Members
        Points</b></font></A></td>
    </tr>
  </table>
<br><br>

<p align="center"><font size="3">&nbsp;</font><b><u><font color="#000000" face="Verdana" size="2">Ads&nbsp;
Allotment&nbsp; Details</font></u></b></p>
<center>
 
 <div align="center">
<table align="center"  width="608" height="297">    
<tr>
<td border=1 width="897" height="257" valign="top">

<table align="center" border=2 align="center" bordercolor="#BD9D3C" bordercolorlight="#BD9D3C" bordercolordark="#BD9D3C" size="10" bgcolor="white" align="center" width="577">
	<tr bgcolor="#BD9D3C">
<th  width="34" align="center"><font face="Verdana" color="#FFFFFF"size="2"><b>S.No</b></font></th>
<th  width="65" align="center"><font face="Verdana" color="#FFFFFF" size="2"><b>Ads.
  no</b></font></th>
<th  width="101" align="center"> <font face="Verdana" color="#FFFFFF" size="2"><b>Member
  ID</b></font></th>
<th  width="135" align="center"><font face="Verdana" color="#FFFFFF" size="2"><b>Start
  Date</b></font> </th> 
<th  width="120" align="center"><font face="Verdana" color="#FFFFFF" size="2"><b>End
  Date</b></font> </th> 
<th  width="76" align="center"><font face="Verdana" color="#FFFFFF" size="2"><b>Status</b></font></th>
</tr>

 <%!
 	Connection xconnection=null;
	Statement xstatement=null,xstatement1=null;
	ResultSet xresultset=null,xresultset1=null;
	
 	String aid="",mid="",start="",end="",status="";
	int a; 	
%>
<%try
{	    
	 String id=request.getParameter("id");
	 
	 AS_DBCONNECT myConnection = new AS_DBCONNECT();
    xstatement=myConnection.AS_Connection.createStatement();
    xstatement1=myConnection.AS_Connection.createStatement();
	 System.out.println("Connection Established ");
	 
	xresultset1=xstatement1.executeQuery("Select * from t_ads where ad_no='"+id+"'");
	a=1;
	while(xresultset1.next())
		{
			aid=xresultset1.getString("ad_no").trim();
			mid=xresultset1.getString("mem_id").trim();
			start=xresultset1.getString("t_ad_start_date").trim();
			end=xresultset1.getString("t_ad_exp_date").trim();
			status=xresultset1.getString("t_ad_status").trim();
			
	
%>
 
			
<tr>
	<td width="34" align=center><font size="2" ><b> <%=a%> </b></font></td>
	
	<td width="65" align=center><font size="2" face="Verdana" ><b><%=aid%></b></font></td>

	<td width="101" align=center><font size="2" face="Verdana" ><b><%=mid%></b></font></td>

	<td width="135" align=center><font size="2" face="Verdana" ><b><%=start%></b></font></td>

	<td width="120" align=center><font size="2" face="Verdana" ><b><%=end%></b></font></td>

	<td width="80" align=center><font size="2" face="Verdana" ><b><%=status%></b></font></td>
</tr>
 <%	
 a++;
 }%></table>&nbsp&nbsp
	 </td>
	 </tr>
  </table>
  </div>
<%	}
		
		catch(SQLException e) 
			{
				System.out.println(e);
			}

		catch(Exception e1)
			{
				System.out.println(e1);
			}
%>	
</body>

</html>
