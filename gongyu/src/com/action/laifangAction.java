package com.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.TAdminDAO;
import com.dao.TLaifangDAO;
import com.model.TAdmin;
import com.model.TLaifang;
import com.model.TSushe;
import com.opensymphony.xwork2.ActionSupport;
import com.util.Pagination;

public class laifangAction extends ActionSupport
{
	private int id;
	private String laishijian;
	private String qushijian;
	private String suoqusushe;
	private String laifangzhe;
	 
	private String message;
	private String path;
	
	private int index=1;

	private TLaifangDAO laifangDAO;
	
	
	public String laifangAdd()
	{
		TLaifang laifang=new TLaifang();
		laifang.setLaishijian(laishijian);
		laifang.setQushijian(qushijian);
		laifang.setSuoqusushe(suoqusushe);
		laifang.setLaifangzhe(laifangzhe);
		laifang.setDel("no");
		laifangDAO.save(laifang);
		this.setMessage("操作成功");
		this.setPath("laifangMana.action");
		return "succeed";
	}
	
	public String laifangDel()
	{
		
		laifangDAO.delete(laifangDAO.findById(id));
		this.setMessage("删除成功");
		this.setPath("laifangMana.action");
		return "succeed";
		
		
		
	}
	
	public String laifangMana()
	{
		String sql="from TLaifang where del='no' order by id desc";
		List laifangList=laifangDAO.getHibernateTemplate().find(sql);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("laifangList", laifangList);
		return ActionSupport.SUCCESS;
	}

	public String laifangQushijianAdd()
	{
		TLaifang laifang=laifangDAO.findById(id);
		laifang.setQushijian(qushijian);
		laifangDAO.attachDirty(laifang);
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("msg", "操作成功");
		return "msg";
	}
	
	
	
	
	public String laifangEditPre()
	{
		TLaifang laifang=laifangDAO.findById(id);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("laifang",laifang);
		return ActionSupport.SUCCESS;
	}
	
	public String laifangEdit1()
	{
		TLaifang laifang=laifangDAO.findById(id);
		
		laifang.setLaishijian(laishijian);
		laifang.setQushijian(qushijian);
		laifang.setSuoqusushe(suoqusushe);
		laifang.setLaifangzhe(laifangzhe);
		laifang.setDel("no");
		laifangDAO.attachDirty(laifang);
		this.setMessage("操作成功");
		this.setPath("laifangMana.action");
		return "succeed";
	}	
		
	
	
	public String laifangQuery()
	{
		String sql="from TLaifang where del='no' and suoqusushe like'%"+suoqusushe+"%'and laifangzhe like'%"+laifangzhe+"%'";
		List laifangList=laifangDAO.getHibernateTemplate().find(sql);
		for(int i=0;i<laifangList.size();i++)
		{
			TLaifang laifang=(TLaifang)laifangList.get(i);
			//System.out.println(Stu.getStuId());
			//Stu.setGoodsCatelogName(catelogDAO.findById(goods.getGoodsCatelogId()).getCatelogName());
		}
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("laifangList", laifangList);
		return ActionSupport.SUCCESS;
	}	
	
	
	
	
	
	
	
	
	
	public int getId()
	{
		return id;
	}



	public void setId(int id)
	{
		this.id = id;
	}



	public int getIndex()
	{
		return index;
	}



	public void setIndex(int index)
	{
		this.index = index;
	}



	public TLaifangDAO getLaifangDAO()
	{
		return laifangDAO;
	}



	public void setLaifangDAO(TLaifangDAO laifangDAO)
	{
		this.laifangDAO = laifangDAO;
	}



	public String getLaifangzhe()
	{
		return laifangzhe;
	}



	public void setLaifangzhe(String laifangzhe)
	{
		this.laifangzhe = laifangzhe;
	}



	public String getLaishijian()
	{
		return laishijian;
	}



	public void setLaishijian(String laishijian)
	{
		this.laishijian = laishijian;
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



	public String getQushijian()
	{
		return qushijian;
	}



	public void setQushijian(String qushijian)
	{
		this.qushijian = qushijian;
	}



	public String getSuoqusushe()
	{
		return suoqusushe;
	}



	public void setSuoqusushe(String suoqusushe)
	{
		this.suoqusushe = suoqusushe;
	}
	
}
