<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page isELIgnored="false" %> 

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
          <script type='text/javascript' src='<%=path %>/dwr/interface/loginService.js'></script>
    <script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
    <script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
        
        <script language="javascript">
        		 function add()
		 {                                                                                         
		     if(document.formAdd.stuXuehao.value=="")
			 {
			 	stuXuehao1.innerHTML="请输入学号！";
	 			document.getElementById("stuXuehao1").style.color="red";
				document.formAdd.stuXuehao.focus();
				
				return false;
			 }
			      if(document.formAdd.stuRealname.value=="")
			 {
			 	stuRealname1.innerHTML="请输入姓名！";
	 			document.getElementById("stuRealname1").style.color="red";
					document.formAdd.stuRealname.focus();
					
				return false;
			 }
			      if(document.formAdd.stuAge.value=="")
			 {
			 	stuAge1.innerHTML="请输入年龄！";
	 			document.getElementById("stuAge1").style.color="red";
				document.formAdd.stuAge.focus();
				
				return false;
			 }
			     if(document.formAdd.stuZhengzhimianmao.value=="")
	 {
	 	text.innerHTML="请输入宿舍！";
	 	document.getElementById("text").style.color="red";
		document.formAdd.stuZhengzhimianmao.focus();
		return false;
	 }
			      if(document.formAdd.stuCard.value=="")
			 {
			 	stuCard1.innerHTML="请输入班级！";
	 			document.getElementById("stuCard1").style.color="red";
				document.formAdd.stuCard.focus();
				return false;
			 }
			      if(document.formAdd.loginName.value=="")
			 {
			 	loginName1.innerHTML="请输入账号！";
	 			document.getElementById("loginName1").style.color="red";
				document.formAdd.loginName.focus();
				return false;
			 }
			     if(document.formAdd.loginPw.value=="")
			 {
			 	loginPw1.innerHTML="请输入密码！";
	 			document.getElementById("loginPw1").style.color="red";
				document.formAdd.loginPw.focus();
				return false;
			 }
				
			document.formAdd.submit();
			
		 }
        
        
        
		function check()
 {                                                                              
     if(document.formAdd.stuZhengzhimianmao.value=="")
	 {
	 	text.innerHTML="请输入宿舍！";
	 	document.getElementById("text").style.color="red";
		document.formAdd.stuZhengzhimianmao.focus();
		return false;
	 }
	 loginService.check(document.formAdd.stuZhengzhimianmao.value,callback); 
 }

 function callback(data)
 {
    if(data=="no")
    {
   	
      	 text.innerHTML="宿舍最多住6人！";
      	 	document.getElementById("text").style.color="red";
    }
   else
    {
    
       text.innerHTML="现在入住人数"+data+"人";
       document.getElementById("text").style.color="blue";
      
    }
 }
     </script>
	</head>

	<body leftmargin="2" topmargin="9" background='<%=path %>/images/allbg.gif'>
			<form action="<%=path %>/stuAdd.action" name="formAdd" method="post">
				     <table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC" style="margin-bottom:8px">
						<tr bgcolor="#EEF4EA">
					        <td colspan="3" background="<%=path %>/images/wbg.gif" class='title'><span>学生录入</span></td>
					    </tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						         学号：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						        <input type="text" name="stuXuehao" size="20"/> <span id="stuXuehao1"></span>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						        姓名：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						         <input type="text" name="stuRealname" size="20"/>
						          <span id="stuRealname1"></span>
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
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						         <input type="text" name="stuAge" size="20"/>  
						         <span id="stuAge1"></span>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						        学生宿舍：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						         <input type="text" name="stuZhengzhimianmao" size="20" onblur="check()"/>
						   <span id="text"></span>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						        班级：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						         <input type="text" name="stuCard" size="20"/>  <span id="stuCard1"></span>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						        登陆账号：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						         <input type="text" name="loginName" size="20"/>  <span id="loginName1"></span>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						        登录密码：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						         <input type="text" name="loginPw" size="20"/>  <span id="loginPw1"></span>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						        &nbsp;
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						       <input type="button" value="提交"   onclick="add()"/>&nbsp; 
						       <input type="reset" value="重置"/>&nbsp;
						    </td>
						</tr>
					 </table>
			</form>
   </body>
</html>
