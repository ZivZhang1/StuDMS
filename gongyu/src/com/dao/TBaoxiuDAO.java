package com.dao;

import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.model.TBaoxiu;

/**
 * Data access object (DAO) for domain model class TBaoxiu.
 * 
 * @see com.model.TBaoxiu
 * @author MyEclipse Persistence Tools
 */

public class TBaoxiuDAO extends HibernateDaoSupport
{
	private static final Log log = LogFactory.getLog(TBaoxiuDAO.class);

	// property constants
	public static final String SHIJIAN = "shijian";

	public static final String YUANYIN = "yuanyin";

	public static final String SUSHE_ID = "susheId";

	public static final String SUSHE = "sushe";

	public static final String ZHUANGTAI = "zhuangtai";

	public static final String DEL = "del";

	protected void initDao()
	{
		// do nothing
	}

	public void save(TBaoxiu transientInstance)
	{
		log.debug("saving TBaoxiu instance");
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

	public void delete(TBaoxiu persistentInstance)
	{
		log.debug("deleting TBaoxiu instance");
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

	public TBaoxiu findById(java.lang.Integer id)
	{
		log.debug("getting TBaoxiu instance with id: " + id);
		try
		{
			TBaoxiu instance = (TBaoxiu) getHibernateTemplate().get(
					"com.model.TBaoxiu", id);
			return instance;
		} catch (RuntimeException re)
		{
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(TBaoxiu instance)
	{
		log.debug("finding TBaoxiu instance by example");
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
		log.debug("finding TBaoxiu instance with property: " + propertyName
				+ ", value: " + value);
		try
		{
			String queryString = "from TBaoxiu as model where model."
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

	public List findByYuanyin(Object yuanyin)
	{
		return findByProperty(YUANYIN, yuanyin);
	}

	public List findBySusheId(Object susheId)
	{
		return findByProperty(SUSHE_ID, susheId);
	}

	public List findBySushe(Object sushe)
	{
		return findByProperty(SUSHE, sushe);
	}

	public List findByZhuangtai(Object zhuangtai)
	{
		return findByProperty(ZHUANGTAI, zhuangtai);
	}

	public List findByDel(Object del)
	{
		return findByProperty(DEL, del);
	}

	public List findAll()
	{
		log.debug("finding all TBaoxiu instances");
		try
		{
			String queryString = "from TBaoxiu";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re)
		{
			log.error("find all failed", re);
			throw re;
		}
	}

	public TBaoxiu merge(TBaoxiu detachedInstance)
	{
		log.debug("merging TBaoxiu instance");
		try
		{
			TBaoxiu result = (TBaoxiu) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re)
		{
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(TBaoxiu instance)
	{
		log.debug("attaching dirty TBaoxiu instance");
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

	public void attachClean(TBaoxiu instance)
	{
		log.debug("attaching clean TBaoxiu instance");
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

	public static TBaoxiuDAO getFromApplicationContext(ApplicationContext ctx)
	{
		return (TBaoxiuDAO) ctx.getBean("TBaoxiuDAO");
	}
}