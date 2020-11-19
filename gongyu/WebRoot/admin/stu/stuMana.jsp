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
           function stuDel(stuId)
           {
               if(confirm('您确定删除吗？'))
               {
                   window.location.href="<%=path %>/stuDel.action?stuId="+stuId;
               }
           }
           
           function stuEditPre(stuId)
           {
                   window.location.href="<%=path %>/stuEditPre.action?stuId="+stuId;
           }
           
           function stuAdd()
           {
                 var url="<%=path %>/admin/stu/stuAdd.jsp";
                 //var n="";
                 //var w="480px";
                 //var h="500px";
                 //var s="resizable:no;help:no;status:no;scroll:yes";
				 //openWin(url,n,w,h,s);
				 window.location.href=url;
           }
                function stuEdit(stuId)
           {
                   window.location.href="<%=path %>/stuEditPre.action?stuId="+stuId;
           }
           function daochu()
           {
               var url="<%=path %>/stuDaochu.action";
               window.open(url,"_self");
           }
           
           function daoru()
           {
               document.getElementById("liu").style.display="block";

           }
           
           
           
           
           
           
           
           
       </script>
	</head>

	<body leftmargin="2" topmargin="2" background='<%=path %>/images/allbg.gif'>
	
	
	<form action="<%=path %>/stuQuery.action" name="formAdd" method="post">
				     <table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC" style="margin-bottom:8px">
						<tr bgcolor="#EEF4EA">
					        <td colspan="6" background="<%=path %>/images/wbg.gif" class='title'><span>学生查询</span></td>
					    </tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="10%" bgcolor="#FFFFFF" align="right">
						         学号：
						    </td>
						    <td  bgcolor="#FFFFFF" align="left">
						        <input type="text" name="stuXuehao" size="20"/>
						    </td>
						     <td width="10%" bgcolor="#FFFFFF" align="right">
						         姓名：
						    </td>
						    <td  bgcolor="#FFFFFF" align="left">
						        <input type="text" name="stuRealname" size="20"/>
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
					<td height="14" colspan="9" background="<%=path %>/images/tbg.gif">&nbsp;学生管理&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width="11%">学号</td>
					<td width="11%">姓名</td>
					<td width="11%">性别</td>
					<td width="11%">年龄</td>
					<td width="11%">学生宿舍</td>
					<td width="12%">班级</td>
					<td width="11%">登陆账号</td>
					<td width="11%">登录密码</td>
					<td width="11%">操作</td>
		        </tr>	
				<s:iterator value="#request.stuList" id="stu">
				<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#stu.stuXuehao"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#stu.stuRealname"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    <s:property value="#stu.stuSex"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#stu.stuAge"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#stu.stuZhengzhimianmao"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    <s:property value="#stu.stuCard"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    <s:property value="#stu.loginName"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    <s:property value="#stu.loginPw"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<a href="#" onclick="stuDel(<s:property value="#stu.stuId"/>)" class="pn-loperator">删除</a>
					<a href="#" onclick="stuEdit(<s:property value="#stu.stuId"/>)" class="pn-loperator">编辑</a>
					
					</td>
				</tr>
				</s:iterator>
			</table>
			
			<table width='98%'  border='0'style="margin-top:8px;margin-left: 5px;">
			  <tr>
			    <td>
			      <input type="button" value="添加" style="width: 80px;" onclick="stuAdd()" />
			    </td>
			  </tr>
		    </table>
	</body>
</html>
