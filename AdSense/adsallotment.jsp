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
<head><title>AD-Sense Advertisement Allocation</title>

<script language="javascript">
function validate()
{

if(document.adsallot.c4.value.length==0)
	{
		alert("Select the start date");
		document.adsallot.c4.focus();
		return false
	}

	if(document.adsallot.c5.value.length==0)
	{
		alert("Select the end date");
		document.adsallot.c5.focus();
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
<body bgcolor="white" onLoad="document.adsallot.c3.focus()">

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
<%!
			Connection xconnection=null;
			Statement xstatement=null,xstatement1=null,xstatement2=null;
			ResultSet xresultset=null,xresultset1=null,xresultset2=null;

		String headline="",pagename="",memid="";
		 String id1="";
%>

<%
try
	  {	    
		 AS_DBCONNECT myConnection = new AS_DBCONNECT();
	     xstatement=myConnection.AS_Connection.createStatement();
		 xstatement1=myConnection.AS_Connection.createStatement();
		 xstatement2=myConnection.AS_Connection.createStatement();
	   	 System.out.println("Connection Established ");
		
		 String id=request.getParameter("id");
		 System.out.println(id);
				 
xresultset=xstatement.executeQuery("select ad_no,ad_headline from m_ads where ad_no='"+id+"'");
		while(xresultset.next())
		{
			id1=xresultset.getString(1).trim();
			headline=xresultset.getString(2).trim();
		}
	 
%>



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
<form method="POST" name="adsallot" action="Ads_Allot">
  <!--webbot bot="SaveResults" U-File="fpweb:///_private/form_results.txt"
  S-Format="TEXT/CSV" S-Label-Fields="TRUE" -->
  <div align="center">
    <center>
    <table border="2" cellpadding="0" width="519" height="262" bordercolordark="#BD9D3C" bordercolor="#BD9D3C" bordercolorlight="#BD9D3C">
      <tr>
        <td width="614" height="36" valign="middle" bgcolor="#BD9D3C">
          <p align="center"><b><font face="Verdana" color="#FFFFFF" size="2">Ads&nbsp; Allotment</font></b></td>
      </tr>
      <tr>
        <td width="614" height="222" valign="top">
         		    <div align="center">
            <table border="0" cellpadding="0" width="491" height="93">
              
		  </center>
		      <center>
            <tr>
                <td width="483" height="32" align="right" colspan="3">
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
                <font size="2" face="Verdana"><b>Ad. Number</b></font>

			</td>
                <td width="15" height="44" align="center">
                <font size="2" face="Verdana"><b>:</b></font>

			</td>
                <td width="251" height="44" align="left">
                <input type="text" name="c1" size="20" style="background-color: #C0C0C0" readonly value="<%=id1%>">&nbsp;

			</td>
            </tr>
            <tr>
                <td width="217" height="43" align="right">
                <font size="2" face="Verdana"><b>Ad. Headline</b></font>

			</td>
                <td width="15" height="43" align="center">
                <font size="2" face="Verdana"><b>:</b></font>

			</td>
                <td width="251" height="43" align="left">
                <input type="text" name="c2" size="20" style="background-color: #C0C0C0" readonly value="<%=headline%>">

			</td>
            </tr>
            <tr>
                <td width="217" height="47" align="right">
                <font face="Verdana" size="2"><span style="mso-bidi-font-size: 12.0pt; mso-fareast-font-family: MS Mincho; mso-bidi-font-family: Times New Roman; mso-ansi-language: EN-US; mso-fareast-language: JA; mso-bidi-language: AR-SA"><b style="mso-bidi-font-weight: normal; mso-bidi-font-size: 12.0pt; mso-fareast-font-family: MS Mincho; mso-bidi-font-family: Times New Roman; mso-ansi-language: EN-US; mso-fareast-language: JA; mso-bidi-language: AR-SA">Member
                ID </b></span></font>

			</td>
                <td width="15" height="47" align="center">
                <font size="2" face="Verdana"><b>:</b></font>
				</td>
                <td width="251" height="47" align="left">
                <select size="1" name="c3">
<%
	xresultset1=xstatement1.executeQuery("select mem_id,page_name from m_member");
	
	while(xresultset1.next())
	{
		memid=xresultset1.getString(1).trim();
		pagename=xresultset1.getString(2).trim();
	
			
%>
	<option value="<%=memid%>"><%=memid%></option>
<%}
%>
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
                <input type="text" name="c4" size="20"  placeholder="dd/mm/yyyy">
              

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
                <input type="text" name="c5" size="20"  placeholder="dd/mm/yyyy">
              

			</td>
            </tr>
            <tr>
                <td width="217" height="47" align="right">
                <font size="2" face="Verdana"><b>Status</b></font>

			</td>
                <td width="15" height="47" align="center">
                <font size="2" face="Verdana"><b>:</b></font>

			</td>
                <td width="251" height="47" align="left">
                <select size="1" name="c6">
                  <option selected value="Active">Active</option>
                 
                </select>
                
			</td>
            </tr>
            <tr>
                <td width="217" height="13" align="right">

			</td>
                <td width="15" height="13" align="center">

			</td>
                <td width="251" height="13" align="left">

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
       
        </td>
      </tr>
    </table>
  </div>
</form>

</body>
<%
		}
	
catch(SQLException e) 
	{
		System.out.println(e);
	}
	%>
</html>
