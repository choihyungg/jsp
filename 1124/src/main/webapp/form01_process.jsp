<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String name = request.getParameter("name");
		String zipcode = request.getParameter("zipcode");
		String address1 = request.getParameter("address1");
		String address2 = request.getParameter("address2");
		String email = request.getParameter("email");
	%>
	<p> 이름 : <%=name%>
	<p> 우편번호 : <%=name%>
	<p> 주소 : <%=address1%> <%=address2%>
	<p> 이메일 : <%=email%>
</body>
</html>