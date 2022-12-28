<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css
">
<meta charset="UTF-8">
<title>도서 등록</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
		<div class="jumbotron">
			<div class="container">
				<h1 class="display-3">도서 등록</h1>
		</div>
	</div>	
	<div class="container">
		<div class="text-right">
			<a href="logout.jsp" class="btn btn-sm btn-success pull-right">logout</a>
		</div>
		<form name="newProduct" action="./processAddBook.jsp" class="form-horizontal" method="post" enctype="multipart/form-data">
			<div class="form-group row">
				<label class="col-sm-2">도서 아이디</label>
				<div class="col-sm-3">
					<input type="text" name="bookId" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">도서명</label>
				<div class="col-sm-3">
					<input type="text" name="name" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">가격</label>
				<div class="col-sm-3">
					<input type="text" name="unitPrice" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">저자</label>
				<div class="col-sm-3">
					<input type="text" name="description" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">설명</label>
				<div class="col-sm-5">
					<textarea name="author" cols="50" rows="2" class="form-control"></textarea>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">출판사</label>
				<div class="col-sm-3">
					<input type="text" name="publisher" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">분류</label>
				<div class="col-sm-3">
					<input type="text" name="category" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">재고 수</label>
				<div class="col-sm-3">
					<input type="text" name="unitsInStock" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">페이지 수</label>
				<div class="col-sm-3">
					<input type="text" name="totalPages" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">출판일(월/년)</label>
				<div class="col-sm-3">
					<input type="text" name="releaseDate" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">상태</label>
				<div class="col-sm-5">
					<input type="radio" name="condition" value="New"> 신규 도서
					<input type="radio" name="condition" value="Old"> 중고 도서
					<input type="radio" name="condition" value="E-Book"> E-Book
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">이미지</label>
				<div class="col-sm-5">
					<input type="file" name="bookImage" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="submit" class="btn btn-primary" value="등록">
				</div>
			</div>
		</form>
	</div>
</body>
</html>