package Action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import Dao.Book;
import Service.BookService;

import com.opensymphony.xwork2.ActionSupport;

public class ListBookAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	// ʵ����
	private List<Book> list;
	private Book book;
	private BookService bookService;

	public BookService getBookService() {
		return bookService;
	}

	public void setBookService(BookService bookService) {
		this.bookService = bookService;
	}

	public List<Book> getList() {
		return list;
	}

	public void setList(List<Book> list) {
		this.list = list;
	}

	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

	// ����book����е���������
	public String execute() {

		try {
			list = bookService.findAllBook();
			HttpServletRequest request = ServletActionContext.getRequest();

			request.setAttribute("list", list);
			return SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
		}

		return ERROR;

	}

	// �����������ط�������������
	public String findByName() {
		try {
			list = bookService.findLikeByName(this.book.getBookname());
			return SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
		}

		return ERROR;
	}

	// ���ݳ����緵�ط�������������
	public String findByPublish() {
		try {
			list = bookService.findByPublish(this.book.getPublish());
			return SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
		}

		return ERROR;
	}

	// �����������ص���book����
	public String findSingle() {
		try {
			list = bookService.findByPath(this.book.getImagepath());
			HttpServletRequest request = ServletActionContext.getRequest();
			request.setAttribute("list", list);
			return SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
		}

		return ERROR;
	}

	// �洢����book����
	public String save() {
		try {
			this.bookService.save(this.book);
			return SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ERROR;
	}
}
