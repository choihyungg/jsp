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
		Book book1 = new Book("b1234", "���� ���� �λ��� �ٽ� ��ٸ�", 15000);
		book1.setAuthor("������");
		book1.setDescription("���� ������ �� ��ſ��� �� �ְ� ���� ����");
		book1.setPublisher("���̺�");
		book1.setCategory("����ɸ�");
		book1.setUnitsInStock(500);
		book1.setTotalPages(280);
		book1.setReleaseDate("11/2022");
		book1.setCondition("�ű� ����");
		book1.setFilename("b1234.jpg");
		
		
		Book book2 = new Book("b5678", "Ʈ���� �ڸ��� 2023", 19000);
		book2.setAuthor("�賭��");
		book2.setDescription("����� �Һ�Ʈ���� �м������� 2023 ����");
		book2.setPublisher("�̷���â");
		book2.setCategory("��������");
		book2.setUnitsInStock(500);
		book2.setTotalPages(424);
		book2.setReleaseDate("10/2022");
		book2.setCondition("E-Book");
		book2.setFilename("b5678.jpg");
		
		
		Book book3 = new Book("b0099", "�߰�����", 19000);
		book3.setAuthor("������ �� �������丮");
		book3.setDescription("������ �� �������丮 ����Ҽ�");
		book3.setPublisher("���е���");
		book3.setCategory("�����Ҽ�/���м�");
		book3.setUnitsInStock(500);
		book3.setTotalPages(144);
		book3.setReleaseDate("06/2018");
		book3.setCondition("�߰� ����");
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
