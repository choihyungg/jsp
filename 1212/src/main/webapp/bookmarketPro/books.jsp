<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="book.dto.Book" %>
<%@ page import="book.dao.BookRepository" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css
">
<meta charset="UTF-8">
<title>도서 목록</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">도서 목록</h1>
		</div>
	</div>
	<%
		BookRepository dao = BookRepository.getInstance();
		ArrayList<Book> listOfBooks = dao.getAllBooks();
	%>
	
	<div class="container">
		<div class="col">
			<%
				for(int i=0; i<listOfBooks.size(); i++) {
					Book book = listOfBooks.get(i);
			%>
			<div class="col-md-6"> 
				<img src="${pageContext.request.contextPath}/resources/images/<%=book.getFilename()%>" style="width: 50%" alt="">
				<h3><%=book.getName() %></h3>
				<p><%=book.getDescription()%>
				<p><%=book.getAuthor()%> | <%=book.getCategory() %>
				<p><a href="./book.jsp?id=<%=book.getBookId()%>" class="btn btn-secondary" role="button">
				상세 정보 &raquo;</a>
			</div>
			<hr>
			<%
				}
			%>
		</div>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>