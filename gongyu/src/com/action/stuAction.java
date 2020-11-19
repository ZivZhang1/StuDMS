package com.action;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;

import com.dao.TStuDAO;
import com.model.TStu;
import com.opensymphony.xwork2.ActionSupport;

public class stuAction extends ActionSupport
{
	private int stuId;
	private String stuXuehao;
	private String stuRealname;
	private String stuSex;
	private String stuAge;
	private String stuZhengzhimianmao;
	private String stuCard;
	private String loginName;
	private String loginPw;
	 
	private String message;
	private String path;
	private TStuDAO stuDAO;
	
	private String filename;
    private InputStream inputStream;
    
    private static final int BUFFER_SIZE = 16 * 1024;
    private File fujian;
    private String fujianFileName;
	
	
	
	public String stuAdd()
	{
		List stuList=stuDAO.getHibernateTemplate().find("from TStu where del='no' and stuZhengzhimianmao='"+stuZhengzhimianmao+"'");
		if(stuList.size()<=5)
		{
		TStu stu=new TStu();
		stu.setStuXuehao(stuXuehao);
		stu.setStuRealname(stuRealname);
		stu.setStuSex(stuSex);
		stu.setStuAge(stuAge);
		stu.setStuZhengzhimianmao(stuZhengzhimianmao);
		stu.setStuCard(stuCard);
		stu.setLoginName(loginName);
		stu.setLoginPw(loginPw);
		stu.setDel("no");
		stuDAO.save(stu);
		this.setMessage("操作成功");
		this.setPath("stuMana.action");
		
		}
		else
		{
			this.setMessage("宿舍人员超出上限！");
			this.setPath("stuMana.action");
		}
		return "succeed";
	}
	
	
	
	public String stuMana()
	{
		List stuList=stuDAO.getHibernateTemplate().find("from TStu where del='no'");
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("stuList", stuList);
		return ActionSupport.SUCCESS;
	}
	
	
	public String stuSearch()
	{
		String sql="from TStu where del='no' and stuXuehao like '%"+stuXuehao.trim()+"%'";
		List stuList=stuDAO.getHibernateTemplate().find(sql);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("stuList", stuList);
		return ActionSupport.SUCCESS;
	}
	
	
	
	public String stuDel()
	{
		
		stuDAO.delete(stuDAO.findById(stuId));
		this.setMessage("删除成功");
		this.setPath("stuMana.action");
		return "succeed";
		
	}
	
	public String stuEditPre()
	{
		TStu stu=stuDAO.findById(stuId);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("stu", stu);
		return ActionSupport.SUCCESS;
	}
	
	public String stuEdit1()
	{
		TStu stu=stuDAO.findById(stuId);
		stu.setStuXuehao(stuXuehao);
		stu.setStuRealname(stuRealname);
		stu.setStuSex(stuSex);
		stu.setStuAge(stuAge);
		stu.setStuZhengzhimianmao(stuZhengzhimianmao);
		stu.setStuCard(stuCard);
		stu.setLoginName(loginName);
		stu.setLoginPw(loginPw);
		stu.setDel("no");
		stuDAO.attachDirty(stu);
		this.setMessage("操作成功");
		this.setPath("stuMana.action");
		return "succeed";
	}
	
	
	public String stuQuery()
	{
		String sql="from TStu where del='no' and stuXuehao like'%"+stuXuehao+"%'and stuRealname like'%"+stuRealname+"%'";
		List stuList=stuDAO.getHibernateTemplate().find(sql);
		for(int i=0;i<stuList.size();i++)
		{
			TStu Stu=(TStu)stuList.get(i);
			System.out.println(Stu.getStuId());
			//Stu.setGoodsCatelogName(catelogDAO.findById(goods.getGoodsCatelogId()).getCatelogName());
		}
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("stuList", stuList);
		return ActionSupport.SUCCESS;
	}	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public String stuDaochu()
	{
		try
		{
			this.filename=new String("学生信息.xls".getBytes(), "ISO-8859-1");
		} 
		catch (UnsupportedEncodingException e)
		{
			e.printStackTrace();
		}
	    return ActionSupport.SUCCESS;
	}


	public InputStream getInputStream()
	{
        HSSFWorkbook wb = new HSSFWorkbook();
		HSSFSheet sheet = wb.createSheet("new sheet");
		
		HSSFRow row = sheet.createRow(0);
		HSSFCell cell=row.createCell((short)0);
		cell.setEncoding(HSSFCell.ENCODING_UTF_16);
		cell.setCellValue("姓名");
				
		cell=row.createCell((short)1);
		cell.setEncoding(HSSFCell.ENCODING_UTF_16);
		cell.setCellValue("性别");
		
		cell=row.createCell((short)2);
		cell.setEncoding(HSSFCell.ENCODING_UTF_16);
		cell.setCellValue("年龄");
		
		cell=row.createCell((short)3);
		cell.setEncoding(HSSFCell.ENCODING_UTF_16);
		cell.setCellValue("学号");
		
		cell=row.createCell((short)4);
		cell.setEncoding(HSSFCell.ENCODING_UTF_16);
		cell.setCellValue("政治面貌");
		
		
		cell=row.createCell((short)5);
		cell.setEncoding(HSSFCell.ENCODING_UTF_16);
		cell.setCellValue("太平洋银行卡号");
		
		
				
		String sql="from TStu where del='no'";
		List stuList=stuDAO.getHibernateTemplate().find(sql);
		for(int i=0;i<stuList.size();i++)
		{
			TStu stu=(TStu)stuList.get(i);
			
			row=sheet.createRow(i+1);
			cell=row.createCell((short)0);
			cell.setEncoding(HSSFCell.ENCODING_UTF_16);
			cell.setCellValue(stu.getStuRealname());
					
			cell=row.createCell((short)1);
			cell.setEncoding(HSSFCell.ENCODING_UTF_16);
			cell.setCellValue(stu.getStuSex());
			
			cell=row.createCell((short)2);
			cell.setEncoding(HSSFCell.ENCODING_UTF_16);
			cell.setCellValue(stu.getStuAge());
			
			cell=row.createCell((short)3);
			cell.setEncoding(HSSFCell.ENCODING_UTF_16);
			cell.setCellValue(stu.getStuXuehao());
			
			cell=row.createCell((short)4);
			cell.setEncoding(HSSFCell.ENCODING_UTF_16);
			cell.setCellValue(stu.getStuZhengzhimianmao());
			
			cell=row.createCell((short)5);
			cell.setEncoding(HSSFCell.ENCODING_UTF_16);
			cell.setCellValue(stu.getStuCard());
			
			
			cell=row.createCell((short)6);
			cell.setEncoding(HSSFCell.ENCODING_UTF_16);
			cell.setCellValue(stu.getLoginName());
			
			
			cell=row.createCell((short)7);
			cell.setEncoding(HSSFCell.ENCODING_UTF_16);
			cell.setCellValue(stu.getLoginPw());
			
		}
		ByteArrayOutputStream os=new ByteArrayOutputStream();
		try
		{
			wb.write(os);
		} catch (IOException e)
		{
			e.printStackTrace();
		}
		byte[] content=os.toByteArray();
		InputStream is=new ByteArrayInputStream(content);
		return is;
	}
	
	
	
	public String stuDaoru() throws IOException
	{
		String dstPath = "c:\\:"+fujianFileName;
		File dstFile = new File(dstPath);
		copy(this.getFujian(),dstFile);
		
		
		FileInputStream fin=new FileInputStream(dstPath);
	    HSSFWorkbook workbook=new HSSFWorkbook(fin);//创建工作薄
	    HSSFSheet sheet=workbook.getSheetAt(0);//得到工作表
	    HSSFRow row=null;//对应excel的行
	    HSSFCell cell=null;//对应excel的列
	   
	    int totalRow=sheet.getLastRowNum();//得到excel的总记录条数
	    for(int i=1;i<=totalRow;i++)
	    {
	        row=sheet.getRow(i);
	        
	        cell=row.getCell(0);
	        String stuRealname=cell.getRichStringCellValue().toString();
	        
	        cell=row.getCell(1);
	        String stuSex=cell.getRichStringCellValue().toString();
	        
	        cell=row.getCell(2);
	        String stuAge=cell.getRichStringCellValue().toString();
	       
	        cell=row.getCell(3);
	        String stuXuehao=cell.getRichStringCellValue().toString();
	        
	        cell=row.getCell(4);
	        String stuZhengzhimianmao=cell.getRichStringCellValue().toString();
	        
	        cell=row.getCell(5);
	        String stuCard=cell.getRichStringCellValue().toString();
	        
	        cell=row.getCell(6);
	        String loginName=cell.getRichStringCellValue().toString();
	        
	        cell=row.getCell(7);
	        String loginPw=cell.getRichStringCellValue().toString();
	        
	        TStu stu=new TStu();
			stu.setStuXuehao(stuXuehao);
			stu.setStuRealname(stuRealname);
			stu.setStuSex(stuSex);
			stu.setStuAge(stuAge);
			stu.setStuZhengzhimianmao(stuZhengzhimianmao);
			stu.setStuCard(stuCard);
			stu.setLoginName(loginName);
			stu.setLoginPw(loginPw);
			stu.setDel("no");
			stuDAO.save(stu);
	   }
	    
	    this.setMessage("操作成功");
		this.setPath("stuMana.action");
		return "succeed";
	}
	
	public String stuEditByMe()
	{
		Map session= ServletActionContext.getContext().getSession();
		TStu stu=(TStu)session.get("stu");
		stu.setStuXuehao(stuXuehao);
		stu.setStuRealname(stuRealname);
		stu.setStuSex(stuSex);
		stu.setStuAge(stuAge);
		stu.setStuZhengzhimianmao(stuZhengzhimianmao);
		stu.setStuCard(stuCard);
		stu.setLoginName(loginName);
		stu.setLoginPw(loginPw);
		stu.setDel("no");
		stuDAO.attachDirty(stu);
		session.put("stu", stu);
		this.setMessage("操作成功");
		this.setPath("astu/userinfo/stuinfo.jsp");
		return "succeed";
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
	public void setInputStream(InputStream inputStream)
	{
		this.inputStream = inputStream;
	}
	public String getFilename()
	{
		return filename;
	}
	public File getFujian()
	{
		return fujian;
	}
	private static void copy(File src, File dst) 
    {
        InputStream in = null;
        OutputStream out = null;
        try 
        {
            in = new BufferedInputStream(new FileInputStream(src), BUFFER_SIZE);
            out = new BufferedOutputStream(new FileOutputStream(dst),BUFFER_SIZE);
            byte[] buffer = new byte[BUFFER_SIZE];
            int len = 0;
            while ((len = in.read(buffer)) > 0) 
            {
                out.write(buffer, 0, len);
            }
        } 
        catch (Exception e)
        {
            e.printStackTrace();
        } 
        finally
        {
            if (null != in) 
            {
                try 
                {
                    in.close();
                } 
                catch (IOException e) 
                {
                    e.printStackTrace();
                }
            }
            if (null != out) 
            {
                try 
                {
                    out.close();
                } 
                catch (IOException e) 
                {
                    e.printStackTrace();
                }
            }
        }
    }
	public void setFujian(File fujian)
	{
		this.fujian = fujian;
	}
	public void setFilename(String filename)
	{
		this.filename = filename;
	}
	public TStuDAO getStuDAO()
	{
		return stuDAO;
	}
	public void setStuDAO(TStuDAO stuDAO)
	{
		this.stuDAO = stuDAO;
	}
	public void setPath(String path)
	{
		this.path = path;
	}
	public String getStuAge()
	{
		return stuAge;
	}
	public String getLoginName()
	{
		return loginName;
	}
	public void setLoginName(String loginName)
	{
		this.loginName = loginName;
	}
	public String getLoginPw()
	{
		return loginPw;
	}
	public void setLoginPw(String loginPw)
	{
		this.loginPw = loginPw;
	}
	public void setStuAge(String stuAge)
	{
		this.stuAge = stuAge;
	}
	public String getStuCard()
	{
		return stuCard;
	}
	public void setStuCard(String stuCard)
	{
		this.stuCard = stuCard;
	}
	public int getStuId()
	{
		return stuId;
	}
	public void setStuId(int stuId)
	{
		this.stuId = stuId;
	}
	public String getStuRealname()
	{
		return stuRealname;
	}
	public void setStuRealname(String stuRealname)
	{
		this.stuRealname = stuRealname;
	}
	public String getStuSex()
	{
		return stuSex;
	}
	public void setStuSex(String stuSex)
	{
		this.stuSex = stuSex;
	}
	public String getStuXuehao()
	{
		return stuXuehao;
	}
	public void setStuXuehao(String stuXuehao)
	{
		this.stuXuehao = stuXuehao;
	}
	public String getFujianFileName()
	{
		return fujianFileName;
	}
	public void setFujianFileName(String fujianFileName)
	{
		this.fujianFileName = fujianFileName;
	}
	public String getStuZhengzhimianmao()
	{
		return stuZhengzhimianmao;
	}
	public void setStuZhengzhimianmao(String stuZhengzhimianmao)
	{
		this.stuZhengzhimianmao = stuZhengzhimianmao;
	}
}
