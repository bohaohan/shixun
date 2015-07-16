package Service;

import java.util.List;

import Dao.Book;
import Dao.BookDAO;

public class BookServiceImpl implements BookService {

	private BookDAO bookDao;

	public BookDAO getBookDao() {
		return bookDao;
	}

	public void setBookDao(BookDAO bookDao) {
		this.bookDao = bookDao;
	}

	@Override
	public List<Book> findAllBook() {
		return this.bookDao.findAll();
	}

	@Override
	public void save(Book book) {

		this.bookDao.save(book);

	}

	@Override
	public void delete(Book book) {
		this.bookDao.delete(book);

	}

	@Override
	public List<Book> findByPublish(Object property) {
		return this.bookDao.findByProperty("publish", property);
	}

	@Override
	public List<Book> findByShopinfo(Object property) {
		return this.bookDao.findByProperty("shopinfo", property);
	}

	@Override
	public List<Book> findByPath(Object property) {
		return this.bookDao.findByProperty("imagepath", property);
	}

	public List<Book> findLikeByName(Object property) {
		return this.bookDao.findLikeByName(property);
	}

}
