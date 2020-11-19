package com.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.TAdminDAO;
import com.dao.TBaoxiuDAO;
import com.model.TAdmin;
import com.model.TBaoxiu;
import com.model.TLaifang;
import com.model.TStu;
import com.opensymphony.xwork2.ActionSupport;
import com.util.Pagination;

public class baoxiuAction extends ActionSupport
{
	private int id;
	private String shijian;
	private String yuanyin;
	private String sushe;
	 
	private String message;
	private String path;
	
	private TBaoxiuDAO baoxiuDAO;
	
	
	public String baoxiuAddMy()
	{
		TBaoxiu baoxiu=new TBaoxiu();
		baoxiu.setShijian(shijian);
		baoxiu.setYuanyin(yuanyin);
		baoxiu.setSushe(sushe);
		baoxiu.setZhuangtai("weishouli");
		Map session= ServletActionContext.getContext().getSession(); 
		TStu stu=(TStu)session.get("stu");
		baoxiu.setStuId(stu.getStuId());
		baoxiu.setDel("no");
		baoxiuDAO.save(baoxiu);
		this.setMessage("操作成功");
		this.setPath("baoxiuManaMy.action");
		return "succeed";
	}
	
	
	
	public String baoxiuManaMy()
	{
		Map session= ServletActionContext.getContext().getSession(); 
		TStu stu=(TStu)session.get("stu");
		
		String sql="from TBaoxiu where stuId="+stu.getStuId();
		List baoxiuList=baoxiuDAO.getHibernateTemplate().find(sql);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("baoxiuList", baoxiuList);
		return ActionSupport.SUCCESS;
	}
	
	
	
	public String baoxiuShouli()
	{
		TBaoxiu baoxiu=baoxiuDAO.findById(id);
		baoxiu.setZhuangtai("yishouli");
		baoxiuDAO.attachDirty(baoxiu);
		this.setMessage("操作成功");
		this.setPath("baoxiuMana.action");
		return "succeed";
	}
	
	public String baoxiuMana()
	{
		String sql="from TBaoxiu where del='no' order by id desc";
		List baoxiuList=baoxiuDAO.getHibernateTemplate().find(sql);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("baoxiuList", baoxiuList);
		return ActionSupport.SUCCESS;
	}
	
	public String baoxiuDel()
	{
		
		baoxiuDAO.delete(baoxiuDAO.findById(id));
		this.setMessage("删除成功");
		this.setPath("baoxiuMana.action");
		return "succeed";
		
	}
	public String baoxiuDel1()
	{
		
		baoxiuDAO.delete(baoxiuDAO.findById(id));
		this.setMessage("删除成功");
		this.setPath("baoxiuManaMy.action");
		return "succeed";
		
	}
	public TBaoxiuDAO getBaoxiuDAO()
	{
		return baoxiuDAO;
	}



	public void setBaoxiuDAO(TBaoxiuDAO baoxiuDAO)
	{
		this.baoxiuDAO = baoxiuDAO;
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



	public String getYuanyin()
	{
		return yuanyin;
	}



	public void setYuanyin(String yuanyin)
	{
		this.yuanyin = yuanyin;
	}
	
}
