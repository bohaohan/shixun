package Dao;

import java.util.List;

import org.hibernate.LockOptions;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Example;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.transaction.annotation.Transactional;

/**
 * A data access object (DAO) providing persistence and search support for Book
 * entities. Transaction control of the save(), update() and delete() operations
 * can directly support Spring container-managed transactions or they can be
 * augmented to handle user-managed Spring transactions. Each of these methods
 * provides additional information for how to configure it for the desired type
 * of transaction control.
 * 
 * @see Dao.Book
 * @author MyEclipse Persistence Tools
 */
@Transactional
public class BookDAO {
	private static final Logger log = LoggerFactory.getLogger(BookDAO.class);
	// property constants
	public static final String BOOKID = "book_id";
	public static final String BOOKNAME = "bookname";
	public static final String AUTHOR = "author";
	public static final String IMAGEPATH = "imagepath";
	public static final String PUBLISH = "publish";
	public static final String PRICE = "price";
	public static final String QUALITY = "quality";
	public static final String DESCRIPTION = "description";
	public static final String CATEGORY = "category";

	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	private Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}

	protected void initDao() {
		// do nothing
	}

	public void save(Book transientInstance) {
		log.debug("saving Book instance");
		try {
			getCurrentSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Book persistentInstance) {
		log.debug("deleting Book instance");
		try {
			getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Book findById(java.lang.Integer id) {
		log.debug("getting Book instance with id: " + id);
		try {
			Book instance = (Book) getCurrentSession().get("Dao.Book", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Book instance) {
		log.debug("finding Book instance by example");
		try {
			List results = getCurrentSession().createCriteria("Dao.Book")
					.add(Example.create(instance)).list();
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findLikeByName(Object name) {
		log.debug("根据商品名称模糊查询商品 " + name);
		try {
			name = "'%" + name + "%'";
			Query q = getCurrentSession().createQuery(
					"from Book p where p.bookname like " + name);
			List instance = q.list();
			return instance;
		} catch (RuntimeException re) {
			log.error("根据商品名称模糊查询商品出错!", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value) {
		log.debug("finding Book instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Book as model where model."
					+ propertyName + "= ?";
			Query queryObject = getCurrentSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByBookname(Object bookname) {
		return findByProperty(BOOKNAME, bookname);
	}

	public List findByAuthor(Object author) {
		return findByProperty(AUTHOR, author);
	}

	public List findByImagepath(Object imagepath) {
		return findByProperty(IMAGEPATH, imagepath);
	}

	public List findByPublish(Object publish) {
		return findByProperty(PUBLISH, publish);
	}

	public List findByPrice(Object price) {
		return findByProperty(PRICE, price);
	}

	public List findByQuality(Object quality) {
		return findByProperty(QUALITY, quality);
	}

	public List findByDescription(Object description) {
		return findByProperty(DESCRIPTION, description);
	}

	public List findByCategory(Object category) {
		return findByProperty(CATEGORY, category);
	}

	public List findAll() {
		log.debug("finding all Book instances");
		try {
			String queryString = "from Book";
			Query queryObject = getCurrentSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Book merge(Book detachedInstance) {
		log.debug("merging Book instance");
		try {
			Book result = (Book) getCurrentSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Book instance) {
		log.debug("attaching dirty Book instance");
		try {
			getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Book instance) {
		log.debug("attaching clean Book instance");
		try {
			getCurrentSession().buildLockRequest(LockOptions.NONE).lock(
					instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static BookDAO getFromApplicationContext(ApplicationContext ctx) {
		return (BookDAO) ctx.getBean("BookDAO");
	}
}