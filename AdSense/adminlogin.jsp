<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.dao.GetImageDao"%>
<%@ page import="java.io.*,java.sql.*,com.dal.*"%>

<html>
<head><title>AD-Sense Admin Login</title>
<script language="JavaScript">
javascript:window.history.forward(1);
</script>
<%
    session.removeAttribute("userID");
	session.removeValue("userID");
	session.removeValue("userName");
	session.invalidate();
	
	

%>
<script language="JavaScript" src="AS_Validation/AS_Login_Validation.js">
</script>

</head>

<body bgcolor="white" onLoad="document.User_Login.id.focus()">
<div align="center">
  <center>
  <table border="0" width="985" height="11" bgcolor="#BD9D3C">
    <tr>
      
      <td width="593" height="1" valign="top">
        <p align="center"><b><font size="5" face="Lucida Calligraphy" color="#FFFFFF">AD-Sense</font></b><b><br>&nbsp;<font face="Lucida Calligraphy" color="#FFFFB3" size="2">Effective
        Online Advertisement System</font></b></td>
      
    </tr>
  </table>
  </center>
</div>
<br><br>
<div align="left">
<center>
  <table border="0" width="550" height="35" bgcolor="#BD9D3C" bordercolor="white" bordercolordark="white" bordercolorlight="white" style="background-color: white; color: white; border: 1 solid white" cellspacing="1">
    <tr>
      <td width="200" height="23" align="center" style="border: 1 solid white" bgcolor="#BD9D3C">
        <p><font face="Verdana" size="2" color="#FFFFFF"><b>&nbsp;&nbsp;&nbsp; </b></font><A HREF="adminlogin.jsp"><font face="Verdana" size="2" color="#FFFFFF"><b>Admin
        Login</b></font></A><font face="Verdana" size="2" color="#FFFFFF"><b>&nbsp;&nbsp;&nbsp;&nbsp;</b></font></td>
 		<br><br>
      <td width="200" height="23" align="center" style="border: 1 solid white" bgcolor="#BD9D3C">
        <p align="center">
        <font face="Verdana" size="2"><b>&nbsp;&nbsp;&nbsp;<font color="#FFFFFF">
        </font></b></font><font color="#FFFFFF">
        <A HREF="memlogin.jsp"><font face="Verdana" size="2" color="#FFFFFF"><b>
        Member Login</b></font></A>
        </font>
        </p>
      </td>
 
      
       
    </tr>
  
  </center>
   </table>
   </div><br>
   <div align="left"><center>
   <table><tr><td width="200" height="23" align="center" style="border: 1 solid white" bgcolor="#BD9D3C">
        <p><font face="Verdana" size="2" color="#FFFFFF"><b>&nbsp;&nbsp;&nbsp; </b></font><A HREF="adsense.jsp"><font face="Verdana" size="2" color="#FFFFFF"><b>End-User
     </b></font></A><font face="Verdana" size="2" color="#FFFFFF"><b>&nbsp;&nbsp;&nbsp;&nbsp;</b></font></td></tr></table></center>
<p>&nbsp;</p>
<br><br>
<form method="POST" name="User_Login" action="Admin_Login" onsubmit="return GL_Login()">
  <!--webbot bot="SaveResults" U-File="fpweb:///_private/form_results.txt"
  S-Format="TEXT/CSV" S-Label-Fields="TRUE" -->
  <div align="center">
    <center>
    <table border="2" cellpadding="0" width="454" height="77" bordercolordark="#BD9D3C" bordercolor="#BD9D3C" bordercolorlight="#BD9D3C">
      <tr>
        <td width="549" height="3" valign="middle" bgcolor="#BD9D3C">
          <p align="center"><b><font face="Verdana" size="3" color="#FFFFFF">Admin&nbsp; Login</font></b></td>
      </tr>
      <tr>
        <td width="549" height="37" valign="top">
          
		    <div align="center">
            <table border="0" cellpadding="0" width="444" height="1">
              <tr>
                <td width="566" height="27" colspan="2">
           <%
String status=(String)request.getAttribute("status");
System.out.println(status);
if(status!=null)
{

%>
<p align="center"><b><font face="Verdana" color="red" size="2"><%=status%></font></b></p>
<% } %>
			</td>
              </tr>
              <tr>
                <td width="381" height="1" valign="top" rowspan="3" align="center">
                  <p align="center">&nbsp;<font face="Verdana" size="2"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  User&nbsp; ID : <input type="text" name="id" size="14"></b></font></p>

          <p align="center"><font face="Verdana" size="2"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          Password :</b></font>
          <input type="password" name="pass" size="14" maxlength="10"  onKeyPress="GL_CheckCapsLock( event );"></p>
		 
          <p align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input type="image" src="AS_Images/Login.jpg" width="63" height="25" border="0">
		</p>
		  </center>
		 
                </td>
    <center>
                <td width="79" height="1" valign="top" align="center">
                </td>
              </tr>
    </center>
              <tr>
                <td width="79" height="2" valign="middle" align="center">
                 <div id="divMayus" style="visibility: hidden; width: 115; height: 25">
         <p align="left">
         <b><font color="#FF0000" face="Verdana" size="2">Caps Lock is on</font></b></div>
                
                </td>
              </tr>
    <center>
              <tr>
                <td width="79" height="1" valign="top" align="center">
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

</html>
