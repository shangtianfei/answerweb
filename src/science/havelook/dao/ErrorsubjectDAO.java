package science.havelook.dao;

import java.util.List;

import org.hibernate.LockMode;
import org.hibernate.Session;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import science.havelook.bean.Errorsubject;

/**
 * A data access object (DAO) providing persistence and search support for
 * Errorsubject entities. Transaction control of the save(), update() and
 * delete() operations can directly support Spring container-managed
 * transactions or they can be augmented to handle user-managed Spring
 * transactions. Each of these methods provides additional information for how
 * to configure it for the desired type of transaction control.
 * 
 * @see science.havelook.bean.Errorsubject
 * @author MyEclipse Persistence Tools
 */

public class ErrorsubjectDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory
			.getLogger(ErrorsubjectDAO.class);
	// property constants
	public static final String ERRORDEGREE = "errordegree";
	public static final String USERID = "userinfo.userid";
	protected void initDao() {
		// do nothing
	}

	public void save(Errorsubject transientInstance) {
		log.debug("saving Errorsubject instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Errorsubject persistentInstance) {
		log.debug("deleting Errorsubject instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Errorsubject findById(java.lang.Long id) {
		log.debug("getting Errorsubject instance with id: " + id);
		try {
			Errorsubject instance = (Errorsubject) getHibernateTemplate().get(
					"science.havelook.bean.Errorsubject", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Errorsubject instance) {
		log.debug("finding Errorsubject instance by example");
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
		log.debug("finding Errorsubject instance with property: "
				+ propertyName + ", value: " + value);
		try {
			String queryString = "from Errorsubject as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByErrordegree(Object errordegree) {
		return findByProperty(ERRORDEGREE, errordegree);
	}
	
	public List findByUserid(Long userid) {
		return findByProperty(USERID, userid);
	}

	public List findAll() {
		log.debug("finding all Errorsubject instances");
		try {
			String queryString = "from Errorsubject";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Errorsubject merge(Errorsubject detachedInstance) {
		log.debug("merging Errorsubject instance");
		try {
			Errorsubject result = (Errorsubject) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Errorsubject instance) {
		log.debug("attaching dirty Errorsubject instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Errorsubject instance) {
		log.debug("attaching clean Errorsubject instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static ErrorsubjectDAO getFromApplicationContext(
			ApplicationContext ctx) {
		return (ErrorsubjectDAO) ctx.getBean("ErrorsubjectDAO");
	}

	public List<Errorsubject> findByUidSid(Long userid, Long subjectid) {
		String queryString = "from Errorsubject as e where e.userinfo.userid='"+userid+"' and e.subject.subjectid = '"+subjectid+"'";
		return getHibernateTemplate().find(queryString);
	}

	public void deleteBySubjectid(Long subjectid) {
		Session session = getHibernateTemplate().getSessionFactory().openSession();
		session.createQuery("delete from Errorsubject e where e.subject.subjectid="+subjectid).executeUpdate();
	}
}