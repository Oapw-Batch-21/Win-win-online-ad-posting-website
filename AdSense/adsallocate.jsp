<%@ page import="java.io.*,java.sql.*,java.util.Date,java.text.SimpleDateFormat,com.dal.*" errorPage="adminlogin.jsp" %>

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
<head><title>AD-Sense Advertisement Allocation</title>
<script language="JavaScript">

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
<br><br>

<p align="center"><font size="3">&nbsp;</font><b><u><font color="#000000" face="Verdana" size="2">Ads&nbsp; Allocation</font></u></b></p>
<center>
 
 <div align="center">
<table align="center"  width="947" height="299">    
<tr>
<td border=1 width="1236" height="259" valign="top">

<table align="center" border=2 align="center" bordercolor="#BD9D3C" bordercolorlight="#BD9D3C" bordercolordark="#BD9D3C" size="10" bgcolor="white" align="center" width="892">
	<tr bgcolor="#BD9D3C">
<th  width="34" align="center"><font face="Verdana" color="#FFFFFF"size="2"><b>S.No</b></font></th>
<th  width="165" align="center"><font face="Verdana" color="#FFFFFF" size="2"><b>Headline</b></font></th>
<th  width="65" align="center"> <font face="Verdana" color="#FFFFFF" size="2"><b>&nbsp;Total
  Display</b></font></th>
<th  width="58" align="center"> <font face="Verdana" color="#FFFFFF" size="2"><b>Present
  Display</b></font></th>
<th  width="49" align="center"> <font face="Verdana" color="#FFFFFF" size="2"><b>Balance
  Display</b></font></th>
<th  width="93" align="center"> <font face="Verdana" color="#FFFFFF" size="2"><b>&nbsp;Start
  Date</b></font></th>
<th  width="87" align="center"> &nbsp;&nbsp;&nbsp; <b> <font face="Verdana" color="#FFFFFF" size="2">Exp.
  Date</font></b></th>
<th  width="48" align="center"><font face="Verdana" color="#FFFFFF" size="2"><b>Allot</b></font> </th> 
<th  width="56" align="center"><font face="Verdana" color="#FFFFFF"size="2"><b>View</font></b></th>
</tr>

 <%!
 	Connection xconnection=null;
	Statement xstatement=null,xstatement1=null;
	ResultSet xresultset=null,xresultset1=null;
	
 	String no="",line="",link="",total="",present="",balance="",start="",end="";
	int a; 	
	String getFormattedDate1(Date d1)
	{
		SimpleDateFormat simpleDate1 = new SimpleDateFormat("dd-MM-yyyy");
		return simpleDate1.format(d1);
	}
%>

<%try
{	    
	//where ad_end_date!='"+exp+"' 
	AS_DBCONNECT myConnection = new AS_DBCONNECT();
    xstatement=myConnection.AS_Connection.createStatement();
    xstatement1=myConnection.AS_Connection.createStatement();
	 System.out.println("Connection Established ");
	 Date d1 = new Date();
		String exp = getFormattedDate1 (d1);
		System.out.println(exp);
	 
	xresultset1=xstatement1.executeQuery("Select ad_no,ad_headline,ad_link,ad_total_display,ad_present_display,ad_balance_display,ad_start_date,ad_end_date from m_ads");
	a=1;
	while(xresultset1.next())
		{
			no=xresultset1.getString(1).trim();
			line=xresultset1.getString(2).trim();
			link=xresultset1.getString(3).trim();
			total=xresultset1.getString(4).trim();
			present=xresultset1.getString(5).trim();
			balance=xresultset1.getString(6).trim();
			start=xresultset1.getString(7).trim();
			end=xresultset1.getString(8).trim();
			
	
%>
 
			
<tr>
	<td width="34" align=center><font size="2" ><b> <%=a%> </b></font></td>
	
	<td width="165" align=center><font size="2" face="Verdana" ><b><%=line%></b></font></td>

	<td width="65" align=center><font size="2" face="Verdana" ><b><%=total%></b></font></td>

	<td width="58" align=center><font size="2" face="Verdana" ><b><%=present%></b></font></td>

	<td width="49" align=center><font size="2" face="Verdana" ><b><%=balance%></b></font></td>

	<td width="93" align=center><font size="2" face="Verdana" ><b><%=start%></b></font></td>

	<td width="87" align=center><font size="2" face="Verdana" ><b><%=end%></b></font></td>

	<td width="48" align=center><a href="adsallotment.jsp?id=<%=no%>"><font size="2" face="Verdana" color="0033CC"><b>Allot</b></font></a></td>

	<td width="60" align=center>
	<a href="adsview.jsp?id=<%=no%>"><font size="2" face="Verdana" color="0033CC"><b>View</b></font></a></td>
</tr>
 <%	
 a++;
 }%></table>
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
