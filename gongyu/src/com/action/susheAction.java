package com.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.TAdminDAO;
import com.dao.TSusheDAO;
import com.model.TAdmin;
import com.model.TStu;
import com.model.TSushe;
import com.opensymphony.xwork2.ActionSupport;
import com.util.Pagination;

public class susheAction extends ActionSupport
{
	private int id;
	private String fangjianhao;
	private int xueshengrenshu=0;
	private String xueshengbanji;
	private String louhao;
	 
	private String message;
	private String path;
	

	private TSusheDAO susheDAO;
	
	
	public String susheAdd()
	{
		TSushe sushe=new TSushe();
		sushe.setFangjianhao(fangjianhao);
		sushe.setXueshengrenshu(xueshengrenshu);
		sushe.setXueshengbanji(xueshengbanji);
		sushe.setLouhao(louhao);
		sushe.setDel("no");
		susheDAO.save(sushe);
		this.setMessage("操作成功");
		this.setPath("susheMana.action");
		return "succeed";
	}
	
	public String susheDel()
	{
		
		susheDAO.delete(susheDAO.findById(id));
		this.setMessage("删除成功");
		this.setPath("susheMana.action");
		return "succeed";
		
		
		
	}
	
	
	public String susheMana()
	{
		String sql="from TSushe where del='no'";
		List susheList=susheDAO.getHibernateTemplate().find(sql);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("susheList", susheList);
		return ActionSupport.SUCCESS;
	}

	public String susheEditPre()
	{
		TSushe sushe=susheDAO.findById(id);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("sushe", sushe);
		return ActionSupport.SUCCESS;
	}
	
	public String susheEdit1()
	{
		TSushe sushe=susheDAO.findById(id);
		sushe.setFangjianhao(fangjianhao);
		sushe.setXueshengbanji(xueshengbanji);
		sushe.setLouhao(louhao);
		sushe.setXueshengrenshu(xueshengrenshu);
		sushe.setDel("no");
		susheDAO.attachDirty(sushe);
		this.setMessage("操作成功");
		this.setPath("susheMana.action");
		return "succeed";
	}	
	
	public String susheQuery()
	{
		String sql="from TSushe where del='no' and fangjianhao like'%"+fangjianhao+"%'and xueshengbanji like'%"+xueshengbanji+"%'";
		List susheList=susheDAO.getHibernateTemplate().find(sql);
		for(int i=0;i<susheList.size();i++)
		{
			TSushe sushe=(TSushe)susheList.get(i);
			//System.out.println(Stu.getStuId());
			//Stu.setGoodsCatelogName(catelogDAO.findById(goods.getGoodsCatelogId()).getCatelogName());
		}
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("susheList", susheList);
		return ActionSupport.SUCCESS;
	}	
	

	public String getFangjianhao()
	{
		return fangjianhao;
	}

	public void setFangjianhao(String fangjianhao)
	{
		this.fangjianhao = fangjianhao;
	}

	public int getId()
	{
		return id;
	}

	public void setId(int id)
	{
		this.id = id;
	}

	public String getLouhao()
	{
		return louhao;
	}

	public void setLouhao(String louhao)
	{
		this.louhao = louhao;
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


	public TSusheDAO getSusheDAO()
	{
		return susheDAO;
	}

	public void setSusheDAO(TSusheDAO susheDAO)
	{
		this.susheDAO = susheDAO;
	}

	public String getXueshengbanji()
	{
		return xueshengbanji;
	}

	public void setXueshengbanji(String xueshengbanji)
	{
		this.xueshengbanji = xueshengbanji;
	}

	public int getXueshengrenshu()
	{
		return xueshengrenshu;
	}

	public void setXueshengrenshu(int xueshengrenshu)
	{
		this.xueshengrenshu = xueshengrenshu;
	}
	
}
