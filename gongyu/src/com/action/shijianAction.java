package com.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.TAdminDAO;
import com.dao.TShijianDAO;
import com.model.TAdmin;
import com.model.TShijian;
import com.opensymphony.xwork2.ActionSupport;
import com.util.Pagination;

public class shijianAction extends ActionSupport
{
	private int id;
	private String shijian;
	 
	private String message;
	private String path;
	

	private TShijianDAO shijianDAO;

	public String jingxiaoshijian()
	{
		TShijian shijian1=shijianDAO.findById(1);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("shijian1", shijian1);
		return ActionSupport.SUCCESS;
	}
	
	public String jingxiaoshijianEdit()
	{
		TShijian shijian1=shijianDAO.findById(1);
		shijian1.setShijian(shijian);
		shijianDAO.attachDirty(shijian1);
		this.setMessage("操作成功");
		this.setPath("jingxiaoshijian.action");
		return "succeed";
	}
	
	
	public String xidengshijian()
	{
		TShijian shijian1=shijianDAO.findById(2);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("shijian1", shijian1);
		return ActionSupport.SUCCESS;
	}
	public String xidengshijianEdit()
	{
		TShijian shijian1=shijianDAO.findById(2);
		shijian1.setShijian(shijian);
		shijianDAO.attachDirty(shijian1);
		this.setMessage("操作成功");
		this.setPath("xidengshijian.action");
		return "succeed";
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


	public TShijianDAO getShijianDAO()
	{
		return shijianDAO;
	}


	public void setShijianDAO(TShijianDAO shijianDAO)
	{
		this.shijianDAO = shijianDAO;
	}
	
}
