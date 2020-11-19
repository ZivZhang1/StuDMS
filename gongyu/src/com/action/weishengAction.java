package com.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.TAdminDAO;
import com.dao.TWeishengDAO;
import com.fuzhu.Paiming;
import com.model.TAdmin;
import com.model.TWeisheng;
import com.opensymphony.xwork2.ActionSupport;
import com.util.Pagination;

public class weishengAction extends ActionSupport
{
	private int id;
	private String shijian;
	private String sushe;
	private int fenshu=0;
	private String beizhu;
	 
	private String message;
	private String path;
	
	private TWeishengDAO weishengDAO;
	
	
	public String weishengAdd()
	{
		TWeisheng weisheng=new TWeisheng();
		weisheng.setShijian(shijian);
		weisheng.setSushe(sushe);
		weisheng.setFenshu(fenshu);
		weisheng.setBeizhu(beizhu);
		weishengDAO.save(weisheng);
		this.setMessage("操作成功");
		this.setPath("weishengMana.action");
		return "succeed";
	}
	
	public String weishengDel()
	{
		
		weishengDAO.delete(weishengDAO.findById(id));
		this.setMessage("删除成功");
		this.setPath("weishengMana.action");
		return "succeed";
	}
	
	
	public String weishengMana()
	{
		List weishengList=weishengDAO.findAll();
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("weishengList", weishengList);
		return ActionSupport.SUCCESS;
	}
	
	public String weishengManaPaiming()
	{
		List paimingList=new ArrayList();
		
		String sql="select sum(fenshu),sushe from  TWeisheng group by sushe order by sum(fenshu) desc";
		List weishengList=weishengDAO.getHibernateTemplate().find(sql);
		
		for(int i=0;i<weishengList.size();i++)
		{
			Object[] o=(Object[])weishengList.get(i);
			Paiming paiming=new Paiming();
			paiming.setFenshu(o[0].toString());
			paiming.setSushe(o[1].toString());
			paimingList.add(paiming);
		}
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("paimingList", paimingList);
		return ActionSupport.SUCCESS;
	}

	public String getBeizhu()
	{
		return beizhu;
	}

	public void setBeizhu(String beizhu)
	{
		this.beizhu = beizhu;
	}


	public int getFenshu()
	{
		return fenshu;
	}

	public void setFenshu(int fenshu)
	{
		this.fenshu = fenshu;
	}

	public int getId()
	{
		return id;
	}

	public void setId(int id)
	{
		this.id = id;
	}

	public String getMessage()
	{
		return message;
	}

	public void setMessage(String message)
	{
		this.message = message;
	}

	public String getPath()
	{
		return path;
	}

	public void setPath(String path)
	{
		this.path = path;
	}

	public String getShijian()
	{
		return shijian;
	}

	public void setShijian(String shijian)
	{
		this.shijian = shijian;
	}

	public String getSushe()
	{
		return sushe;
	}

	public void setSushe(String sushe)
	{
		this.sushe = sushe;
	}

	public TWeishengDAO getWeishengDAO()
	{
		return weishengDAO;
	}

	public void setWeishengDAO(TWeishengDAO weishengDAO)
	{
		this.weishengDAO = weishengDAO;
	}
	
}
