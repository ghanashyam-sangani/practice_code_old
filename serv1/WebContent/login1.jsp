<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String x=(String)session.getAttribute("f");
	if(x!=null)
	{
	out.println("wrong input");
	session.removeAttribute("f");
	}
%>
<form action="verify1" method="post">
Username:<input type="text" name="username1">
Password:<input type="text" name="password1">
<button>Submit</button>
</form>
</body>
</html>
