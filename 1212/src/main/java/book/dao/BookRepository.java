package book.dao;

import java.util.ArrayList;

import book.dto.Book;

public class BookRepository {
	ArrayList<Book> listOfBooks = new ArrayList<Book>();
	private static BookRepository instance = new BookRepository();
	
	public static BookRepository getInstance() {
		return instance;
	}
	
	public BookRepository() {
		Book book1 = new Book("b1234", "만일 내가 인생을 다시 산다면", 15000);
		book1.setAuthor("김혜남");
		book1.setDescription("벌써 마흔이 된 당신에게 해 주고 싶은 말들");
		book1.setPublisher("메이븐");
		book1.setCategory("교양심리");
		book1.setUnitsInStock(500);
		book1.setTotalPages(280);
		book1.setReleaseDate("11/2022");
		book1.setCondition("신규 도서");
		book1.setFilename("b1234.jpg");
		
		
		Book book2 = new Book("b5678", "트렌드 코리아 2023", 19000);
		book2.setAuthor("김난도");
		book2.setDescription("서울대 소비트렌드 분석센터의 2023 전망");
		book2.setPublisher("미래의창");
		book2.setCategory("경제전망");
		book2.setUnitsInStock(500);
		book2.setTotalPages(424);
		book2.setReleaseDate("10/2022");
		book2.setCondition("E-Book");
		book2.setFilename("b5678.jpg");
		
		
		Book book3 = new Book("b0099", "야간비행", 19000);
		book3.setAuthor("앙투안 드 생텍쥐페리");
		book3.setDescription("앙투안 드 생텍쥐페리 장편소설");
		book3.setPublisher("문학동네");
		book3.setCategory("고전소설/문학선");
		book3.setUnitsInStock(500);
		book3.setTotalPages(144);
		book3.setReleaseDate("06/2018");
		book3.setCondition("중고 도서");
		book3.setFilename("b0099.jpg");
		
		listOfBooks.add(book1);
		listOfBooks.add(book2);
		listOfBooks.add(book3);
	}
	
	public ArrayList<Book> getAllBooks() {
		return listOfBooks;
	}
	
	public Book getBookById(String bookId) {
		Book bookById = null;
		
		for(int i=0; i<listOfBooks.size(); i++) {
			Book book = listOfBooks.get(i);
			if(book != null && book.getBookId() != null && book.getBookId().equals(bookId)) {
				bookById = book;
				break;
			}
		}
		return bookById;
	}
	
	public void addBook(Book book) {
		listOfBooks.add(book);
	}

}
