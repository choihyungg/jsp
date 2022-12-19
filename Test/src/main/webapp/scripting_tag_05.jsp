<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scripting Tag</title>
</head>
<body>
	<%-- 표현문 태그 사용 예 --%>
	<%
		int count = 0;
	%>
	Page Count is
	<%-- 지역변수 count를 1 증가시킴 --%>
	<%=++count%>
</body>
</html>