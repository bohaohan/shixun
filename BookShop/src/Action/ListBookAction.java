package Action;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import Dao.Book;
import Service.BookService;

import com.opensymphony.xwork2.ActionSupport;

public class ListBookAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	// ʵ��
	private List<Book> list;
	private List<Book> publishlist;
	private Book book;
	private BookService bookService;
	private File file;
	private String fileFileName;
	private String fileContentType;

	public File getFile() {
		return file;
	}

	public void setFile(File file) {
		this.file = file;
	}

	public String getFileFileName() {
		return fileFileName;
	}

	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}

	public String getFileContentType() {
		return fileContentType;
	}

	public void setFileContentType(String fileContentType) {
		this.fileContentType = fileContentType;
	}

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

	// ����book����е��������
	public String execute() {

		try {
			list = bookService.findAllBook();
			HttpServletRequest request = ServletActionContext.getRequest();

			request.setAttribute("list", list);
			HttpSession session = ServletActionContext.getRequest()
					.getSession();
			session.setAttribute("list", list);

			return SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
		}

		return ERROR;

	}

	// �������ط����������
	public String findByName() {
		try {
			list = bookService.findLikeByName(this.book.getBookname());
			return SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
		}

		return ERROR;
	}

	// 通过寻找出版社查找书籍类别
	public String findByPublish() {
		try {
			// URL传值用了GET方法
			HttpServletRequest request = ServletActionContext.getRequest();
			if (request.getMethod().equals("GET")) {
				// UTF-8转码
				request.setCharacterEncoding("utf-8");
				System.out.println(request.getParameter("book.publish"));// 在控制台看测试能不能输出正确的地址
				list = bookService.findByPublish(request
						.getParameter("book.publish"));
				request.setAttribute("list", list);
				return SUCCESS;

			} else {

				/*
				 * list = bookService.findByPublish(this.book.getPublish());
				 * request.setCharacterEncoding("utf-8");
				 * 
				 * request.setAttribute("list", list); return SUCCESS;
				 */
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return ERROR;
	}

	public String findSingle() {
		try {
			System.out.println("aaaaaa");

			System.out.println(this.book.getImagepath());

			list = bookService.findByPath(this.book.getImagepath());
			HttpServletRequest request = ServletActionContext.getRequest();
			request.setAttribute("list", list);
			return SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
		}

		return ERROR;
	}

	// 通过书籍分类寻找
	public String findByCategory() {
		try {
			// URL传值用了GET方法
			HttpServletRequest request = ServletActionContext.getRequest();
			if (request.getMethod().equals("GET")) {
				// UTF-8转码
				request.setCharacterEncoding("utf-8");
				System.out.println(request.getParameter("book.category"));// 在控制台看测试能不能输出正确的地址
				list = bookService.findByCategory(request
						.getParameter("book.category"));
				request.setAttribute("list", list);
				return SUCCESS;

			} else {
				// 这POST方法也用到了，是在
				list = bookService.findByCategory(this.book.getCategory());
				request.setCharacterEncoding("utf-8");

				request.setAttribute("list", list);
				return SUCCESS;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return ERROR;
	}

	public String findByAuthor() {
		try {
			// URL传值用了GET方法
			HttpServletRequest request = ServletActionContext.getRequest();
			if (request.getMethod().equals("GET")) {
				// UTF-8转码
				request.setCharacterEncoding("utf-8");
				System.out.println(request.getParameter("book.author"));// 在控制台看测试能不能输出正确的地址
				list = bookService.findByAuthor(request
						.getParameter("book.author"));
				request.setAttribute("list", list);
				return SUCCESS;

			} else {
				// 这POST方法也用到了，是在
				list = bookService.findByAuthor(this.book.getAuthor());
				request.setCharacterEncoding("utf-8");

				request.setAttribute("list", list);
				return SUCCESS;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return ERROR;
	}

	// 存储单个book对象
	public String save() throws Exception {

		if (file != null) {
			String dataDir = "C:\\Users\\a\\Desktop\\images";// 上传文件存放的目录
			File savedFile = new File(dataDir, fileFileName);// 上传文件在服务器具体的位置
			file.renameTo(savedFile);// 将上传文件从临时文件复制到指定文件
			this.book.setImagepath(savedFile.getAbsolutePath());
			if (this.book.getImagepath() != "")
				this.bookService.save(this.book);
		} else {
			return INPUT;
		}

		return SUCCESS;

	}

	public List<Book> getPublishlist() {
		return publishlist;
	}

	public void setPublishlist(List<Book> publishlist) {
		this.publishlist = publishlist;
	}

}
