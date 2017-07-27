package science.havelook.dao;

import java.util.List;

import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import science.havelook.bean.Subject;

/**
 	* A data access object (DAO) providing persistence and search support for Subject entities.
 			* Transaction control of the save(), update() and delete() operations 
		can directly support Spring container-managed transactions or they can be augmented	to handle user-managed Spring transactions. 
		Each of these methods provides additional information for how to configure it for the desired type of transaction control. 	
	 * @see science.havelook.bean.Subject
  * @author MyEclipse Persistence Tools 
 */

public class SubjectDAO extends HibernateDaoSupport  {
	     private static final Logger log = LoggerFactory.getLogger(SubjectDAO.class);
		//property constants
	public static final String CLASSID = "allclass.classid";

	protected void initDao() {
		//do nothing
	}
    
    public void save(Subject transientInstance) {
        log.debug("saving Subject instance");
        try {
            getHibernateTemplate().save(transientInstance);
            log.debug("save successful");
        } catch (RuntimeException re) {
            log.error("save failed", re);
            throw re;
        }
    }
    
	public void delete(Subject persistentInstance) {
        log.debug("deleting Subject instance");
        try {
            getHibernateTemplate().delete(persistentInstance);
            log.debug("delete successful");
        } catch (RuntimeException re) {
            log.error("delete failed", re);
            throw re;
        }
    }
    
    public Subject findById( java.lang.Long id) {
        log.debug("getting Subject instance with id: " + id);
        try {
            Subject instance = (Subject) getHibernateTemplate()
                    .get("science.havelook.bean.Subject", id);
            return instance;
        } catch (RuntimeException re) {
            log.error("get failed", re);
            throw re;
        }
    }
    
    
    public List findByExample(Subject instance) {
        log.debug("finding Subject instance by example");
        try {
            List results = getHibernateTemplate().findByExample(instance);
            log.debug("find by example successful, result size: " + results.size());
            return results;
        } catch (RuntimeException re) {
            log.error("find by example failed", re);
            throw re;
        }
    }    
    
    public List findByProperty(String propertyName, Object value) {
      log.debug("finding Subject instance with property: " + propertyName
            + ", value: " + value);
      try {
         String queryString = "from Subject as model where model." 
         						+ propertyName + "= ?";
		 return getHibernateTemplate().find(queryString, value);
      } catch (RuntimeException re) {
         log.error("find by property name failed", re);
         throw re;
      }
	}

	public List findByclassid(Object classid) {
		return findByProperty(CLASSID, classid);
	}

	

	public List findAll() {
		log.debug("finding all Subject instances");
		try {
			String queryString = "from Subject";
		 	return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}
	
    public Subject merge(Subject detachedInstance) {
        log.debug("merging Subject instance");
        try {
            Subject result = (Subject) getHibernateTemplate()
                    .merge(detachedInstance);
            log.debug("merge successful");
            return result;
        } catch (RuntimeException re) {
            log.error("merge failed", re);
            throw re;
        }
    }

    public void attachDirty(Subject instance) {
        log.debug("attaching dirty Subject instance");
        try {
            getHibernateTemplate().saveOrUpdate(instance);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }
    
    public void attachClean(Subject instance) {
        log.debug("attaching clean Subject instance");
        try {
            getHibernateTemplate().lock(instance, LockMode.NONE);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }

	public static SubjectDAO getFromApplicationContext(ApplicationContext ctx) {
    	return (SubjectDAO) ctx.getBean("SubjectDAO");
	}

	public List searchlike(String searchContent) {
		String queryString = "from Subject where subjecttext like '%"+searchContent+"%'";
	 	return getHibernateTemplate().find(queryString);
	}
}