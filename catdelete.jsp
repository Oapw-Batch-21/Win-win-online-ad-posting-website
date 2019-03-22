<%@ page import="java.io.*,java.sql.*,com.dal.*" errorPage="adminlogin.jsp"  %>

<%!
String userID="";
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

	}
}
else
{
	response.sendRedirect("adminlogin.jsp");
}

%>
<html>
<head>
<title>  </title>

<body   bgcolor="white" >

<p align= "center"> 

<br>

<%
		String id=request.getParameter("id");
		
		String tablename="m_mem_cat";
			RequestDispatcher rd;

		String[] ZT_Field_Name=new String[1];
		String[] ZT_Field_Type=new String[1];
		String[] ZT_Field_Value=new String[1];
		int nof=1;
		ZT_Field_Name[0]="cat_no";
		ZT_Field_Type[0]="S";
		ZT_Field_Value[0]=id;

		int xdeleteFlag,xconnect,xdisconnect=0;
	  
		try
			{

				AS_DBCONNECT myConnection=new AS_DBCONNECT();
	   			xdeleteFlag=myConnection.GL_Delete(tablename,ZT_Field_Name,ZT_Field_Type,ZT_Field_Value,nof);


					if(xdeleteFlag==1)
					{ 
						request.setAttribute("update","Category Deleted Successfully");
					    rd=request.getRequestDispatcher("catdetails.jsp");
			 		    out.println("Deleted Successfully");
					    rd.forward(request,response);
					}

					else
					{ %>

						<center>
							<h3>
								<font color="#DF0000"> <% out.println("User Not yet Deleted........."); %>
								</font>
							</h3>
						</center>

					<%
					}


				
		 }
			catch(Exception e)
				{
					System.out.println(e);
				}
	%>
		
 
</form>
</body>
</html>