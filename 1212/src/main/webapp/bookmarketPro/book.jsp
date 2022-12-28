<%@page import="book.dao.BookRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="book.dto.Book" %>
<%@ page import="book.dao.BookRepository" %>
<%@ page errorPage="exceptionNoBookId.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css
">
<meta charset="UTF-8">
<title>도서 상세 정보</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">도서 정보</h1>
		</div>
	</div>
	<%
		String bookId = request.getParameter("id");
		BookRepository dao = BookRepository.getInstance();
		Book book = dao.getBookById(bookId);
	%>
	
	<div class="container">
		<div class="row">
			<div class="col-md-5">
				<img src="${pageContext.request.contextPath}/resources/images/<%=book.getFilename()%>" style="width: 100%" />
			</div>
			<div class="col-md-6">
				<h3><%=book.getName()%></h3>
				<p><%=book.getDescription()%>
				<p><b>도서 아이디 : </b><span class="badge badge-danger"> <%=book.getBookId()%></span>
				<p><b>저자</b> : <%=book.getAuthor()%>
				<p><b>출판사</b> : <%=book.getPublisher()%>
				<p><b>분류</b> : <%=book.getCategory()%>
				<p><b>재고 수</b> : <%=book.getUnitsInStock()%>
				<p><b>페이지 수</b> : <%=book.getTotalPages()%>
				<p><b>출판일</b> : <%=book.getReleaseDate()%>
				<p><b>상태</b> : <%=book.getCondition()%>
				<h4><%=book.getUnitPrice() %>원</h4>
				<a href="#" class="btn btn-info"> 상품 주문 &raquo;</a>
				<a href="./books.jsp" class="btn btn-secondary"> 상품 목록 &raquo;</a>
			</div>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>