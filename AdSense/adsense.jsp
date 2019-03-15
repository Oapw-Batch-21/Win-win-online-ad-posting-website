<%@page import="com.dao.GetImageDao"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@ page import="java.io.*,java.sql.*,com.dal.*"%>

<html>
<head><title>AD-Sense End User Page</title>

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

<%	

DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
Date date = new Date();

System.out.println(dateFormat.format(date));
String date1=dateFormat.format(date);

String ip=request.getRemoteAddr();

System.out.println("ip address"+ip);

boolean flag=GetImageDao.checkusage(ip, date1);


			Connection xconnection=null;
			Class.forName("com.mysql.jdbc.Driver");
			try
			  {	 
			xconnection=DriverManager.getConnection("jdbc:mysql://localhost:3306/ad-sense", "root", "admin");
			Statement xstatement=null,xstatement1=null,xstatement2=null,stmt1=null,stmt2=null;
			ResultSet xresultset=null,xresultset1=null,xresultset2=null,rs1=null,rs2=null;
			

			
   
		 
	     xstatement=xconnection.createStatement();
		 xstatement1=xconnection.createStatement();
		 xstatement2=xconnection.createStatement();
		 stmt1=xconnection.createStatement();
		 stmt2=xconnection.createStatement();
		 System.out.println("Connection Established ");
 %>



<div align="center">
  <center>
  <table border="0" width="985" height="11" bgcolor="#BD9D3C">
    <tr>
      <td width="1" height="11"></td>
      <td width="593" height="1" valign="top">
        <p align="left"><b><font size="5" face="Lucida Calligraphy" color="#FFFFFF">AD-Sense</font></b><b><br>&nbsp;<font face="Lucida Calligraphy" color="#FFFFB3" size="2">Effective
        Online Advertisement System</font></b></td>
      <td width="148" height="29">&nbsp;</td>
    </tr>
  </table>
  </center>
</div>
<div align="left">

  <table border="0" width="985" height="453" bgcolor="#BD9D3C" bordercolor="white" bordercolordark="white" bordercolorlight="white" style="background-color: white; color: white; border: 1 solid white" cellspacing="1">
    <tr>
      <td width="75" height="23" align="center" style="border: 1 solid white" bgcolor="#BD9D3C">
        <p align="center"><font face="Verdana" size="2" color="#FFFFFF"><b>&nbsp;&nbsp;
        </b></font><A HREF="adsense.jsp"><font face="Verdana" size="2" color="#FFFFFF"><b>Home</b></font></A></td>
 
     
 
      <td width="301" height="476" rowspan="2" bgcolor="white" style="border: 1 solid #BD9D3C" valign="top">

      <div align="center">
    <center>
    <table border="0" cellpadding="0" width="272" height="102" bordercolordark="#BD9D3C" bordercolor="#BD9D3C" bordercolorlight="#BD9D3C">
<%!
			String Ano="",Ahead="",Adesc="",Alink="";
%>

<%	


xresultset2=xstatement2.executeQuery("Select * from m_ads");
		while(xresultset2.next())
		{
			Ano=xresultset2.getString("ad_no").trim();
			Ahead=xresultset2.getString("ad_headline").trim();
			Adesc=xresultset2.getString("ad_desc").trim();
			Alink=xresultset2.getString("ad_link").trim();
%> 
	  

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
      <td width="488" height="453" colspan="2" bgcolor="white" bordercolor="#BD9D3C" style="border: 1 solid #BD9D3C" valign="top">
      &nbsp;
      <div align="center">
    <center>
      <br>
  
<div align="center">
    <center>
    <table border="0" cellpadding="0" width="620" height="62" bordercolordark="#BD9D3C" bordercolor="#BD9D3C" bordercolorlight="#BD9D3C">
    
    <%
    String cNo="",cName="",mNo="",mId="",mCom="";
    rs1=stmt1.executeQuery("Select * from m_mem_cat");
	while(rs1.next())
	{
		cNo=rs1.getString("cat_no").trim();
		cName=rs1.getString("cat_name").trim();
    
    %>
	  <tr>
        <td width="603" height="22" valign="top" bgcolor="white" align="left">
          <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><font face="Verdana" color="#800000" size="2">
          <%=cName %></font></b></td>
      </tr>
      <tr>
        <td width="603" height="36" valign="top" bgcolor="white" align="left">
    <%
    
      rs2=stmt2.executeQuery("Select * from m_member where cat_no='"+cNo+"'");
      while(rs2.next())
      {
    	  	mNo=rs2.getString("mem_no").trim();
			mId=rs2.getString("mem_id").trim();
			mCom=rs2.getString("mem_company_name").trim();
			%>
		<br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <b>*</b>
           <a href="companyproducts.jsp?id=<%=mNo%>&flag=<%=flag%>"><font size="2" face="Verdana" ><b><u><%=mCom%></u></b></font></a><br>
         
	<%
      }
      
    }
	%>
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
			catch (Exception e) 
			{
				
			}

	%>

</body>

</html>
