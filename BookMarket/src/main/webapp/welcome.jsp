<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="menu.jsp" %>
	<%!String mainText = "도서 웹 쇼핑몰";
	String greeting = "Welcome to Web Market!";%>
			<h1>
				<%=mainText%>
			</h1>
			<h3>
				<%=greeting%>
			</h3>
			<hr>

<%@ include file="footer.jsp" %>

</body>
</html>