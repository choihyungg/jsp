<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Directives Tag</title>
</head>
<body>
	<%--
	include 디렉티브 태그로 외부 파일의 내용 포함하기
	1) 외부 파일 include01_header.jsp의 내용을 포함하도록 include 디렉티브 태그를 작성.
	--%>
	<%@ include file="include01.jsp" %>
	<h4>------------- 현재 페이지 영역 --------------</h4>

</body>
</html>