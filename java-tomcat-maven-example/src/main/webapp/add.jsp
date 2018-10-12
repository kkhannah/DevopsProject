<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<%!
	public String addNumbers(String a , String b) 
	{
		
		String output = "Default";
		try{
		Float res = Float.parseFloat(a) + Float.parseFloat(b);
		output = "The sum is : " + Float.toString(res);
		}
		catch(Exception e)
		{
			output = "Invalid Entry!";
		}
		finally{
			return "<h1>" +output+ "</h1>";
		}
	}
%>


<html>
    <head>
        <title>Enter two numbers: </title>
    </head>
    
    <body>
    <%-- <%= "<h1> The sum is "+(Integer.parseInt(request.getParameter("t1"))+Integer.parseInt(request.getParameter("t2")))+"</h1>"%> --%>
    <%= addNumbers(request.getParameter("t1"), request.getParameter("t2")) %>
    </body>
</html>