<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie</title>
</head>
<body>
	
		<%
		boolean isLogin = false;
		Cookie[] cookies = request.getCookies();
		for (int i=0; i<cookies.length; i++) {
			if (cookies[i].getName().equals("userID") && cookies[i].getValue() != null) {
				isLogin = true;
			}
		}
		if (isLogin) {
			out.print(cookies[0].getValue() + "님 반갑습니다.");
		}
		else {
			response.sendRedirect("cookie.jsp");
		}
	%>
	
	<p><a href="cookie_out.jsp">로그아웃</a>

</body>
</html>