package Service;

import java.util.List;

import Dao.Book;

public interface BookService {
	public List<Book> findAllBook();

	public void save(Book book);

	public void delete(Book book);

	public List<Book> findLikeByName(Object property);

	public List<Book> findByPublish(Object property);

	public List<Book> findByShopinfo(Object property);

	public List<Book> findByPath(Object property);

	public List<Book> findByCategory(Object property);
	
	public List<Book> findByAuthor(Object property);

}
