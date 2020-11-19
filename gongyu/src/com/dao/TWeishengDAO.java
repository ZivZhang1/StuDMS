package com.dao;

import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.model.TWeisheng;

/**
 * Data access object (DAO) for domain model class TWeisheng.
 * 
 * @see com.model.TWeisheng
 * @author MyEclipse Persistence Tools
 */

public class TWeishengDAO extends HibernateDaoSupport
{
	private static final Log log = LogFactory.getLog(TWeishengDAO.class);

	// property constants
	public static final String SHIJIAN = "shijian";

	public static final String SUSHE_ID = "susheId";

	public static final String SUSHE = "sushe";

	public static final String FENSHU = "fenshu";

	public static final String DEL = "del";

	protected void initDao()
	{
		// do nothing
	}

	public void save(TWeisheng transientInstance)
	{
		log.debug("saving TWeisheng instance");
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

	public void delete(TWeisheng persistentInstance)
	{
		log.debug("deleting TWeisheng instance");
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

	public TWeisheng findById(java.lang.Integer id)
	{
		log.debug("getting TWeisheng instance with id: " + id);
		try
		{
			TWeisheng instance = (TWeisheng) getHibernateTemplate().get(
					"com.model.TWeisheng", id);
			return instance;
		} catch (RuntimeException re)
		{
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(TWeisheng instance)
	{
		log.debug("finding TWeisheng instance by example");
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
		log.debug("finding TWeisheng instance with property: " + propertyName
				+ ", value: " + value);
		try
		{
			String queryString = "from TWeisheng as model where model."
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

	public List findBySusheId(Object susheId)
	{
		return findByProperty(SUSHE_ID, susheId);
	}

	public List findBySushe(Object sushe)
	{
		return findByProperty(SUSHE, sushe);
	}

	public List findByFenshu(Object fenshu)
	{
		return findByProperty(FENSHU, fenshu);
	}

	public List findByDel(Object del)
	{
		return findByProperty(DEL, del);
	}

	public List findAll()
	{
		log.debug("finding all TWeisheng instances");
		try
		{
			String queryString = "from TWeisheng";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re)
		{
			log.error("find all failed", re);
			throw re;
		}
	}

	public TWeisheng merge(TWeisheng detachedInstance)
	{
		log.debug("merging TWeisheng instance");
		try
		{
			TWeisheng result = (TWeisheng) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re)
		{
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(TWeisheng instance)
	{
		log.debug("attaching dirty TWeisheng instance");
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

	public void attachClean(TWeisheng instance)
	{
		log.debug("attaching clean TWeisheng instance");
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

	public static TWeishengDAO getFromApplicationContext(ApplicationContext ctx)
	{
		return (TWeishengDAO) ctx.getBean("TWeishengDAO");
	}
}