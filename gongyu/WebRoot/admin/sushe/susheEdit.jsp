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
		<script language="javascript">
		    function check1()
		    {
		        if(document.form1.fangjianhao.value=="")
		        {
		            alert("请输入房间号");
		            return false;
		        }
		        if(document.form1.xueshengrenshu.value=="")
		        {
		            alert("请输入学生人数");
		            return false;
		        }
		                if(document.form1.xueshengbanji.value=="")
		        {
		            alert("请输入学生班级");
		            return false;
		        }
		                if(document.form1.louhao.value=="")
		        {
		            alert("请输入学生楼号");
		            return false;
		        }
		      
		        document.form1.submit();
		    }
        </script>
	</head>
	<body leftmargin="2" topmargin="9"  background='<%=path %>/images/allbg.gif'>
		
<!--<form action="<%=path %>/stuEdit1.action" name="form1" method="post">-->
<!--<input type="hidden" name="stuId" value="${requestScope.stu.stuId}" />-->
<!--				     <table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC" style="margin-bottom:8px">-->
<!--						<tr bgcolor="#EEF4EA">-->
<!--					        <td colspan="3" background="<%=path %>/images/wbg.gif" class='title'><span>学生录入</span></td>-->
<!--					    </tr>-->
<!--						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">-->
<!--						    <td width="25%" bgcolor="#FFFFFF" align="right">-->
<!--						         学号：-->
<!--						    </td>-->
<!--						    <td width="75%" bgcolor="#FFFFFF" align="left">-->
<!--						        <input type="text" name="stuXuehao" size="20" value="${requestScope.stu.stuXuehao}"/>-->
<!--						    </td>-->
<!--						</tr>-->
<!--						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">-->
<!--						    <td width="25%" bgcolor="#FFFFFF" align="right">-->
<!--						        姓名：-->
<!--						    </td>-->
<!--						    <td width="75%" bgcolor="#FFFFFF" align="left">-->
<!--						         <input type="text" name="stuRealname" size="20" value="${requestScope.stu.stuRealname}"/>-->
<!--						    </td>-->
<!--						</tr>-->
<!--						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">-->
<!--						    <td width="25%" bgcolor="#FFFFFF" align="right">-->
<!--						        性别：-->
<!--						    </td>-->
<!--						    <td width="75%" bgcolor="#FFFFFF" align="left">-->
<!--						         <input type="radio" name="stuSex" value="男" checked="checked"/>男-->
<!--						         &nbsp;&nbsp;-->
<!--						         <input type="radio" name="stuSex" value="女"/>女-->
<!--						         -->
<!--						    </td>-->
<!--						</tr>-->
<!--						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">-->
<!--						    <td width="25%" bgcolor="#FFFFFF" align="right">-->
<!--						        年龄：-->
<!--						    </td>-->
<!--						    <td width="75%" bgcolor="#FFFFFF" align="left" >-->
<!--						         <input type="text" name="stuAge" size="20" value="${requestScope.stu.stuAge}"/>-->
<!--						    </td>-->
<!--						</tr>-->
<!--						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">-->
<!--						    <td width="25%" bgcolor="#FFFFFF" align="right">-->
<!--						        政治面貌：-->
<!--						    </td>-->
<!--						    <td width="75%" bgcolor="#FFFFFF" align="left">-->
<!--						         <input type="text" name="stuZhengzhimianmao" size="20" value="${requestScope.stu.stuZhengzhimianmao}"/>-->
<!--						    </td>-->
<!--						</tr>-->
<!--						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">-->
<!--						    <td width="25%" bgcolor="#FFFFFF" align="right">-->
<!--						        班级：-->
<!--						    </td>-->
<!--						    <td width="75%" bgcolor="#FFFFFF" align="left">-->
<!--						         <input type="text" name="stuCard" size="20" value="${requestScope.stu.stuCard}"/>-->
<!--						    </td>-->
<!--						</tr>-->
<!--						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">-->
<!--						    <td width="25%" bgcolor="#FFFFFF" align="right">-->
<!--						        登陆账号：-->
<!--						    </td>-->
<!--						    <td width="75%" bgcolor="#FFFFFF" align="left">-->
<!--						         <input type="text" name="loginName" size="20" value="${requestScope.stu.loginName}"/>-->
<!--						    </td>-->
<!--						</tr>-->
<!--						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">-->
<!--						    <td width="25%" bgcolor="#FFFFFF" align="right">-->
<!--						        登录密码：-->
<!--						    </td>-->
<!--						    <td width="75%" bgcolor="#FFFFFF" align="left">-->
<!--						         <input type="text" name="loginPw" size="20" value="${requestScope.stu.loginPw}"/>-->
<!--						    </td>-->
<!--						</tr>-->
<!--						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">-->
<!--						    <td width="25%" bgcolor="#FFFFFF" align="right">-->
<!--						        &nbsp;-->
<!--						    </td>-->
<!--						    <td width="75%" bgcolor="#FFFFFF" align="left">-->
<!--						       <input type="submit" value="提交"/>&nbsp; -->
<!--						       <input type="reset" value="重置"/>&nbsp;-->
<!--						    </td>-->
<!--						</tr>-->
<!--					 </table>-->
<!--			</form>			-->
			
			
	<form action="<%=path %>/susheEdit1.action" name="form1" method="post">
	<input type="hidden" name="id" value="${requestScope.sushe.id}" />
				     <table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC" style="margin-bottom:8px">
						<tr bgcolor="#EEF4EA">
					        <td colspan="3" background="<%=path %>/images/wbg.gif" class='title'><span>学生宿舍管理</span></td>
					    </tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						         房间号：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						        <input type="text" name="fangjianhao" size="20" value="${requestScope.sushe.fangjianhao}"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						        学生人数：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						        <input type="text" name="xueshengrenshu" size="20" onpropertychange="onchange1(this.value)" onkeyup="this.value=this.value.replace(/\D/g,'')" value="${requestScope.sushe.xueshengrenshu}"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						         学生班级：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						        <input type="text" name="xueshengbanji" size="20" value="${requestScope.sushe.xueshengbanji}"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						         楼号：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						        <input type="text" name="louhao" size="20" value="${requestScope.sushe.louhao}"/>
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
