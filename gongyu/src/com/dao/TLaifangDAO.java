package com.dao;

import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.model.TLaifang;

/**
 * Data access object (DAO) for domain model class TLaifang.
 * 
 * @see com.model.TLaifang
 * @author MyEclipse Persistence Tools
 */

public class TLaifangDAO extends HibernateDaoSupport
{
	private static final Log log = LogFactory.getLog(TLaifangDAO.class);

	// property constants
	public static final String LAISHIJIAN = "laishijian";

	public static final String QUSHIJIAN = "qushijian";

	public static final String LAIFANGZHE = "laifangzhe";

	public static final String SUSHE_ID = "susheId";

	public static final String SUOQUSUSHE = "suoqusushe";

	public static final String DEL = "del";

	protected void initDao()
	{
		// do nothing
	}

	public void save(TLaifang transientInstance)
	{
		log.debug("saving TLaifang instance");
		try
		{
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re)
		{
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(TLaifang persistentInstance)
	{
		log.debug("deleting TLaifang instance");
		try
		{
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re)
		{
			log.error("delete failed", re);
			throw re;
		}
	}

	public TLaifang findById(java.lang.Integer id)
	{
		log.debug("getting TLaifang instance with id: " + id);
		try
		{
			TLaifang instance = (TLaifang) getHibernateTemplate().get(
					"com.model.TLaifang", id);
			return instance;
		} catch (RuntimeException re)
		{
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(TLaifang instance)
	{
		log.debug("finding TLaifang instance by example");
		try
		{
			List results = getHibernateTemplate().findByExample(instance);
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re)
		{
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value)
	{
		log.debug("finding TLaifang instance with property: " + propertyName
				+ ", value: " + value);
		try
		{
			String queryString = "from TLaifang as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re)
		{
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByLaishijian(Object laishijian)
	{
		return findByProperty(LAISHIJIAN, laishijian);
	}

	public List findByQushijian(Object qushijian)
	{
		return findByProperty(QUSHIJIAN, qushijian);
	}

	public List findByLaifangzhe(Object laifangzhe)
	{
		return findByProperty(LAIFANGZHE, laifangzhe);
	}

	public List findBySusheId(Object susheId)
	{
		return findByProperty(SUSHE_ID, susheId);
	}

	public List findBySuoqusushe(Object suoqusushe)
	{
		return findByProperty(SUOQUSUSHE, suoqusushe);
	}

	public List findByDel(Object del)
	{
		return findByProperty(DEL, del);
	}

	public List findAll()
	{
		log.debug("finding all TLaifang instances");
		try
		{
			String queryString = "from TLaifang";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re)
		{
			log.error("find all failed", re);
			throw re;
		}
	}

	public TLaifang merge(TLaifang detachedInstance)
	{
		log.debug("merging TLaifang instance");
		try
		{
			TLaifang result = (TLaifang) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re)
		{
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(TLaifang instance)
	{
		log.debug("attaching dirty TLaifang instance");
		try
		{
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re)
		{
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(TLaifang instance)
	{
		log.debug("attaching clean TLaifang instance");
		try
		{
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re)
		{
			log.error("attach failed", re);
			throw re;
		}
	}

	public static TLaifangDAO getFromApplicationContext(ApplicationContext ctx)
	{
		return (TLaifangDAO) ctx.getBean("TLaifangDAO");
	}
}