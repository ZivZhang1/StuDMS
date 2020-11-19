<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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
		
        <script language="javascript">
           function susheDel(id)
           {
               if(confirm('您确定删除吗？'))
               {
                   window.location.href="<%=path %>/susheDel.action?id="+id;
               }
           }
           
           function susheAdd()
           {
                 var url="<%=path %>/admin/sushe/susheAdd.jsp";
                 //var n="";
                 //var w="480px";
                 //var h="500px";
                 //var s="resizable:no;help:no;status:no;scroll:yes";
				 //openWin(url,n,w,h,s);
				 window.location.href=url;
           }
           
           
                      function susheEdit(id)
           {
                   window.location.href="<%=path %>/susheEditPre.action?id="+id;
           }
       </script>
	</head>

	<body leftmargin="2" topmargin="2" background='<%=path %>/images/allbg.gif'>
	
	<form action="<%=path %>/susheQuery.action" name="formAdd" method="post">
				     <table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC" style="margin-bottom:8px">
						<tr bgcolor="#EEF4EA">
					        <td colspan="3" background="<%=path %>/images/wbg.gif" class='title'><span>宿舍查询</span></td>
					    </tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="10%" bgcolor="#FFFFFF" align="right">
						         房间号：
						    </td>
						    <td  bgcolor="#FFFFFF" align="left">
						        <input type="text" name="fangjianhao" size="20"/>
						    </td>
						     <td width="10%" bgcolor="#FFFFFF" align="right">
						         班级：
						    </td>
						    <td  bgcolor="#FFFFFF" align="left">
						        <input type="text" name="xueshengbanji" size="20"/>
						    </td>
						    <td>
						        <input type="submit" value="查询"/>&nbsp; 
						       <input type="reset" value="重置"/>&nbsp;
						     </td>
						</tr>
					 </table>
			</form>
	
	

			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan="5" background="<%=path %>/images/tbg.gif">&nbsp;学生宿舍管理&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width="20%">房间号</td>
					<td width="20%">学生人数</td>
					<td width="20%">学生班级</td>
					<td width="20%">楼号</td>
					<td width="20%">操作</td>
		        </tr>	
				<s:iterator value="#request.susheList" id="sushe">
				<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#sushe.fangjianhao"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#sushe.xueshengrenshu"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    <s:property value="#sushe.xueshengbanji"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    <s:property value="#sushe.louhao"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<a href="#" onclick="susheDel(<s:property value="#sushe.id"/>)" class="pn-loperator">删除</a>
				     <a href="#" onclick="susheEdit(<s:property value="#sushe.id"/>)" class="pn-loperator">编辑</a>
					</td>
				</tr>
				</s:iterator>
			</table>
			
			<table width='98%'  border='0'style="margin-top:8px;margin-left: 5px;">
			  <tr>
			    <td>
			      <input type="button" value="添加" style="width: 80px;" onclick="susheAdd()" />
			    </td>
			  </tr>
		    </table>
	</body>
</html>
