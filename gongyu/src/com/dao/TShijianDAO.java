package com.dao;

import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.model.TShijian;

/**
 * Data access object (DAO) for domain model class TShijian.
 * 
 * @see com.model.TShijian
 * @author MyEclipse Persistence Tools
 */

public class TShijianDAO extends HibernateDaoSupport
{
	private static final Log log = LogFactory.getLog(TShijianDAO.class);

	// property constants
	public static final String SHIJIAN = "shijian";

	protected void initDao()
	{
		// do nothing
	}

	public void save(TShijian transientInstance)
	{
		log.debug("saving TShijian instance");
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

	public void delete(TShijian persistentInstance)
	{
		log.debug("deleting TShijian instance");
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

	public TShijian findById(java.lang.Integer id)
	{
		log.debug("getting TShijian instance with id: " + id);
		try
		{
			TShijian instance = (TShijian) getHibernateTemplate().get(
					"com.model.TShijian", id);
			return instance;
		} catch (RuntimeException re)
		{
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(TShijian instance)
	{
		log.debug("finding TShijian instance by example");
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
		log.debug("finding TShijian instance with property: " + propertyName
				+ ", value: " + value);
		try
		{
			String queryString = "from TShijian as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re)
		{
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByShijian(Object shijian)
	{
		return findByProperty(SHIJIAN, shijian);
	}

	public List findAll()
	{
		log.debug("finding all TShijian instances");
		try
		{
			String queryString = "from TShijian";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re)
		{
			log.error("find all failed", re);
			throw re;
		}
	}

	public TShijian merge(TShijian detachedInstance)
	{
		log.debug("merging TShijian instance");
		try
		{
			TShijian result = (TShijian) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re)
		{
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(TShijian instance)
	{
		log.debug("attaching dirty TShijian instance");
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

	public void attachClean(TShijian instance)
	{
		log.debug("attaching clean TShijian instance");
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

	public static TShijianDAO getFromApplicationContext(ApplicationContext ctx)
	{
		return (TShijianDAO) ctx.getBean("TShijianDAO");
	}
}