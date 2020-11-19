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
		        if(document.form1.stuName.value=="")
		        {
		            alert("请输入用户名");
		            return false;
		        }
		        if(document.form1.stuPw.value=="")
		        {
		            alert("请输入密码");
		            return false;
		        }
		      
		        document.form1.submit();
		    }
        </script>
	</head>
	<body leftmargin="2" topmargin="9"  background='<%=path %>/images/allbg.gif'>
<!--			<form action="<%=path %>/stuEdit1.action" name="form1" method="post">-->
<!--			<input type="hidden" name="stuId" value="${requestScope.stu.stuId }" />-->
<!--				<table width="98%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">-->
<!--					<tr>-->
<!--						<th height="40" colspan="2" bgcolor="#FFFFFF" class="f12b-red" style="font-size: 11px;">-->
<!--							编辑用户-->
<!--						</th>-->
<!--					</tr>-->
<!--					<tr>-->
<!--						<td width="20%" height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">-->
<!--							号码：-->
<!--						</td>-->
<!--						<td width="80%" bgcolor="#FFFFFF">-->
<!--							&nbsp;-->
<!--							<input type="text" name="userName" id="userName" value="${requestScope.user.userName }" readonly==true/>-->
<!--						</td>-->
<!--					</tr>-->
<!--					<tr>-->
<!--						<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">-->
<!--							密 码：-->
<!--						</td>-->
<!--						<td bgcolor="#FFFFFF">-->
<!--							&nbsp;-->
<!--							<input type="password" name="userPw" value="${requestScope.user.userPw }"/>-->
<!--						</td>-->
<!--					</tr>-->
<!--					<tr>-->
<!--						<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">-->
<!--							真实姓名：-->
<!--						</td>-->
<!--						<td bgcolor="#FFFFFF">-->
<!--							&nbsp;-->
<!--							<input type="text" name="userRealname" value="${requestScope.user.userRealname }"/>-->
<!--						</td>-->
<!--					</tr>-->
<!--					<tr>-->
<!--						<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">-->
<!--							住址：-->
<!--						</td>-->
<!--						<td bgcolor="#FFFFFF">-->
<!--							&nbsp;-->
<!--							<input type="text" name="userAddress" value="${requestScope.user.userAddress }"/>-->
<!--						</td>-->
<!--					</tr>-->
<!--					<tr>-->
<!--						<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">-->
<!--							性别：-->
<!--						</td>-->
<!--						<td bgcolor="#FFFFFF">-->
<!--							&nbsp;-->
<!--							<input type="radio" name="userSex" value="男" checked="checked"/>男-->
<!--							&nbsp;&nbsp;&nbsp;&nbsp;-->
<!--							<input type="radio" name="userSex" value="女"/>女-->
<!--						</td>-->
<!--					</tr>-->
<!--					<tr>-->
<!--						<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">-->
<!--							联系方式：-->
<!--						</td>-->
<!--						<td bgcolor="#FFFFFF">-->
<!--							&nbsp;-->
<!--							<input type="text" name="userTel" value="${requestScope.user.userTel }"/>-->
<!--						</td>-->
<!--					</tr>-->
<!--					<tr>-->
<!--						<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">-->
<!--							E-mail：-->
<!--						</td>-->
<!--						<td bgcolor="#FFFFFF">-->
<!--							&nbsp;-->
<!--							<input type="text" name="userEmail" value="${requestScope.user.userEmail }"/>-->
<!--						</td>-->
<!--					</tr>-->
<!--					<tr>-->
<!--						<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">-->
<!--							QQ：-->
<!--						</td>-->
<!--						<td bgcolor="#FFFFFF">-->
<!--							&nbsp;-->
<!--							<input type="text" name="userQq" value="${requestScope.user.userQq }"/>-->
<!--						</td>-->
<!--					</tr>-->
<!--					<tr>-->
<!--						<td height="30" align="right" bgcolor="#F9F9F9">&nbsp;-->
<!--							-->
<!--						</td>-->
<!--						<td bgcolor="#FFFFFF">-->
<!--							&nbsp;-->
<!--							<input type="button" value="确定" onclick="check1();"/>-->
<!--							<input type="button" value="取消" onclick="closeOpen()"/>-->
<!--						</td>-->
<!--					</tr>-->
<!--				</table>-->
<!--			</form>-->
			
			
			
			
<form action="<%=path %>/stuEdit1.action" name="form1" method="post">
<input type="hidden" name="stuId" value="${requestScope.stu.stuId}" />
				     <table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC" style="margin-bottom:8px">
						<tr bgcolor="#EEF4EA">
					        <td colspan="3" background="<%=path %>/images/wbg.gif" class='title'><span>学生录入</span></td>
					    </tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						         学号：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						        <input type="text" name="stuXuehao" size="20" value="${requestScope.stu.stuXuehao}"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						        姓名：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						         <input type="text" name="stuRealname" size="20" value="${requestScope.stu.stuRealname}"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						        性别：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						         <input type="radio" name="stuSex" value="男" checked="checked"/>男
						         &nbsp;&nbsp;
						         <input type="radio" name="stuSex" value="女"/>女
						         
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						        年龄：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left" >
						         <input type="text" name="stuAge" size="20" value="${requestScope.stu.stuAge}"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						        学生宿舍：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						         <input type="text" name="stuZhengzhimianmao" size="20" value="${requestScope.stu.stuZhengzhimianmao}"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						        班级：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						         <input type="text" name="stuCard" size="20" value="${requestScope.stu.stuCard}"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						        登陆账号：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						         <input type="text" name="loginName" size="20" value="${requestScope.stu.loginName}"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						        登录密码：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						         <input type="text" name="loginPw" size="20" value="${requestScope.stu.loginPw}"/>
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
