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
<head><title>AD-Sense Admin User Details</title>
<script language="JavaScript">
function delete1()
	{

		if(confirm(" Do you want to delete this user?"))
		{
				document.adminuserdetail.action="admindelete.jsp";
		}
		else
		return false;
	}
	
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
<br><br><br>

<p align="center"><font size="3">&nbsp;</font><b><u><font color="#000000" face="Verdana" size="2">Admin&nbsp; User&nbsp; Details</font></u></b></p>
<center>
 
 <div align="center">
<table align="center"  width="579" height="200">    
<tr>
<td border=1 width="868" height="160" valign="top">

<table align="center" border=2 align="center" bordercolor="#BD9D3C" bordercolorlight="#BD9D3C" bordercolordark="#BD9D3C" size="10" bgcolor="white" align="center" width="544">
	<tr bgcolor="#BD9D3C">
<th  width="34" align="center"><font face="Verdana" color="#FFFFFF"size="2"><b>S.No</b></font></th>
<th  width="87" align="center"><font face="Verdana" color="#FFFFFF" size="2"><b>Admin
  ID</b></font></th>
<th  width="199" align="center"> <font face="Verdana" color="#FFFFFF" size="2"><b>Name</b></font></th>
<th  width="108" align="center"><font face="Verdana" color="#FFFFFF" size="2"><b>DOC</b></font> </th> 
<th  width="76" align="center"><font face="Verdana" color="#FFFFFF"size="2"><b>DELETE</font></b></th>
</tr>

 <%!
 	Connection xconnection=null;
	Statement xstatement=null,xstatement1=null;
	ResultSet xresultset=null,xresultset1=null;
	
 	String id="",name="",doc="";
	int a; 	
%>
<%try
{	    
	 AS_DBCONNECT myConnection = new AS_DBCONNECT();
    xstatement=myConnection.AS_Connection.createStatement();
    xstatement1=myConnection.AS_Connection.createStatement();
	 System.out.println("Connection Established ");
	
	xresultset1=xstatement1.executeQuery("Select admin_id,admin_doc,admin_name from m_admin");
	a=1;
	while(xresultset1.next())
		{
			id=xresultset1.getString(1).trim();
			doc=xresultset1.getString(2).trim();
			name=xresultset1.getString(3).trim();
			
	
%>
 
			
<tr>
	<td width="34" align=center><font size="2" ><b> <%=a%> </b></font></td>
	
	<td width="87" align=center><font size="2" face="Verdana" ><b><%=id%></b></font></td>

	<td width="199" align=center><font size="2" face="Verdana" ><b><%=name%></b></font></td>

	<td width="108" align=center><font size="2" face="Verdana" ><b><%=doc%></b></font></td>

	<td width="80" align=center>
	<a href="admindelete.jsp?id=<%=id%>" onclick="return delete1()"><font size="2" face="Verdana" color="0033CC"><b>Delete</b></font></a></td>
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
     
<br>
<form action="admincreate.jsp">
<center><input type="image" src="AS_Images/Create.jpg" width="63" height="25" border="0"></center>
</form>
</body>

</html>
