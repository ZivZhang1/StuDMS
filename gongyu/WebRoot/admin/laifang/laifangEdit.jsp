<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />
		<link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
		   <script type="text/javascript" src="<%=path %>/My97DatePicker/WdatePicker.js"></script>
		<script language="javascript">
		    function check1()
		    {
		        if(document.form1.suoqusushe.value=="")
		        {
		            alert("请输入所去宿舍");
		            return false;
		        }
		        if(document.form1.laifangzhe.value=="")
		        {
		            alert("请输入来访者姓名");
		            return false;
		        }
		      
		        document.form1.submit();
		    }
        </script>
	</head>
	<body leftmargin="2" topmargin="9"  background='<%=path %>/images/allbg.gif'>

			
<form action="<%=path %>/laifangEdit1.action" name="form1" method="post">
<input type="hidden" name="id" value="${requestScope.laifang.id}" />
				     <table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC" style="margin-bottom:8px">
						<tr bgcolor="#EEF4EA">
					        <td colspan="3" background="<%=path %>/images/wbg.gif" class='title'><span>来访信息管理</span></td>
					    </tr>
					    <tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						         来访时间：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						        <input  name="laishijian" readonly="readonly" class="Wdate"  type="text" onfocus="WdatePicker({skin:'whyGreen',dateFmt:'yyyy-MM-dd HH:mm'})" value="${requestScope.laifang.laishijian}" height="22">
						    </td>
						</tr>
						
			    <tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						         离开时间：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						        <input  name="qushijian" readonly="readonly" class="Wdate"  type="text" onfocus="WdatePicker({skin:'whyGreen',dateFmt:'yyyy-MM-dd HH:mm'})" value="${requestScope.laifang.qushijian}" height="22">
						    </td>
						</tr>
						
							<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						         所去宿舍：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						        <input type="text" name="suoqusushe" size="20" value="${requestScope.laifang.suoqusushe}">
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						        来访者姓名：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						        <input type="text" name="laifangzhe" size="20" value="${requestScope.laifang.laifangzhe}">
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						        &nbsp;
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						       <input type="submit" value="提交"/>&nbsp; 
						       <input type="reset" value="重置"/>&nbsp;
						    </td>
						</tr>
					 </table>
			</form>			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
	</body>
</html>
