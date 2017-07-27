package science.havelook.dao;

import java.util.List;

import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import science.havelook.bean.Allclass;

/**
 * A data access object (DAO) providing persistence and search support for
 * Allclass entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see science.havelook.bean.Allclass
 * @author MyEclipse Persistence Tools
 */

public class AllclassDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory
			.getLogger(AllclassDAO.class);
	// property constants
	public static final String CLASSNAME = "classname";

	protected void initDao() {
		// do nothing
	}

	public void save(Allclass transientInstance) {
		log.debug("saving Allclass instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Allclass persistentInstance) {
		log.debug("deleting Allclass instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Allclass findById(java.lang.Long id) {
		log.debug("getting Allclass instance with id: " + id);
		try {
			Allclass instance = (Allclass) getHibernateTemplate().get(
					"science.havelook.bean.Allclass", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Allclass instance) {
		log.debug("finding Allclass instance by example");
		try {
			List results = getHibernateTemplate().findByExample(instance);
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value) {
		log.debug("finding Allclass instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Allclass as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByClassname(Object classname) {
		return findByProperty(CLASSNAME, classname);
	}

	public List findAll() {
		log.debug("finding all Allclass instances");
		try {
			String queryString = "from Allclass";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Allclass merge(Allclass detachedInstance) {
		log.debug("merging Allclass instance");
		try {
			Allclass result = (Allclass) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Allclass instance) {
		log.debug("attaching dirty Allclass instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Allclass instance) {
		log.debug("attaching clean Allclass instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static AllclassDAO getFromApplicationContext(ApplicationContext ctx) {
		return (AllclassDAO) ctx.getBean("AllclassDAO");
	}
}