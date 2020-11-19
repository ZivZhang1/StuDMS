<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style type="text/css">
        body {margin-left: 0px;margin-top: 0px;margin-right: 0px;margin-bottom: 0px;overflow:hidden;}
        .STYLE3 {font-size: 12px; color: #adc9d9; }
    </style>
    <script type='text/javascript' src='<%=path %>/dwr/interface/loginService.js'></script>
    <script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
    <script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
    <script language="javascript">
		 function denglu()
		 {                                                                                         
		     if(document.ThisForm.userName.value=="")
			 {
			 	alert("请输入用户名");
				document.ThisForm.userName.focus();
				return false;
			 }
			 if(document.ThisForm.userPw.value=="")
			 {
			 	alert("请输入密码");
				document.ThisForm.userPw.focus();
				return false;
			 }
			 if(document.ThisForm.userType.value=="-1")
			 {
			 	alert("请选择登陆身份");
				document.ThisForm.userType.focus();
				return false;
			 }
			 document.getElementById("indicator").style.display="block";
			 loginService.login(document.ThisForm.userName.value,document.ThisForm.userPw.value,document.ThisForm.userType.value,callback);
		 }
		
		 function callback(data)
		 {
		    document.getElementById("indicator").style.display="none";
		    if(data=="no")
		    {
		        alert("用户名或密码错误");
		    }
		    if(data=="yes")
		    {
		        alert("通过验证,系统登录成功");
		        window.location.href="<%=path %>/loginSuccess.jsp";
		    }
		 }
     </script>
  </head>
  
  <body>
  <table width="100%"  height="100%" border="0" cellspacing="0" cellpadding="0">
	  <tr>
	  <!---->
	     <td bgcolor="#1075b1">&nbsp;</td>
	  </tr>
      <tr>
         <td height="608" background="img/login_03.gif">
		    <form name="ThisForm" method="POST" action="">
		    <table width="847" border="0" align="center" cellpadding="0" cellspacing="0">
		        <tr>
		           <td height="318" background="<%=path %>/img/login_04.gif">&nbsp;</td>
		        </tr>
		        <tr>
	               <td height="84">
	                   <table width="100%" border="0" cellspacing="0" cellpadding="0">
	                      <tr>
	               			 <td width="381" height="84" background="<%=path %>/img/login_06.gif">&nbsp;</td>
	                         <td width="162" valign="middle" background="<%=path %>/img/login_07.gif">
	                             <table width="100%" border="0" cellspacing="0" cellpadding="0">
						                <tr>
						                   <td width="44" height="24" valign="bottom"><div align="right"><span class="STYLE3">用户:</span></div></td>
						                   <td width="10" valign="bottom">&nbsp;</td>
						                   <td height="24" colspan="2" valign="bottom">
							                  <div align="left">
							                    <input type="text" name="userName" id="textfield" style="width:100px; height:17px; background-color:#87adbf; border:solid 1px #153966; font-size:12px; color:#283439; ">
							                  </div>
						                   </td>
						                </tr>
                                        <tr>
							                <td height="24" valign="bottom"><div align="right"><span class="STYLE3">密码:</span></div></td>
							                <td width="10" valign="bottom">&nbsp;</td>
							                <td height="24" colspan="2" valign="bottom"><input type="password" name="userPw" id="textfield2" style="width:100px; height:17px; background-color:#87adbf; border:solid 1px #153966; font-size:12px; color:#283439; "></td>
						                </tr>
						                <tr style="display: block">
							                <td height="24" valign="bottom"><div align="right"><span class="STYLE3">类型:</span></div></td>
							                <td width="10" valign="bottom">&nbsp;</td>
							                <td width="52" height="24" valign="bottom">
							                    <select class="INPUT_text" name="userType" style="width:100px; height:17px; background-color:#87adbf; border:solid 1px #153966; font-size:12px; color:#283439; ">
												    <option value="-1" selected="selected">请选择</option>
													<option value="0">管理员</option>
													<option value="2">学生</option>
												 </select>
                                            </td>
							                <td width="62" valign="bottom"></td>
						                </tr>
						               <tr>
						               </tr>
                                 </table>
                             </td>
                             <td width="26"><img src="img/login_08.gif" width="26" height="84"></td>
                             <td width="67" background="img/login_09.gif">
                                 <table width="100%" border="0" cellspacing="0" cellpadding="0">
						              <tr>
						                <td height="40"><div align="center"><img src="img/dl.gif" width="57" height="30" onClick="denglu()"></div></td>
						              </tr>
						            <!-- 
						              <tr>
						                <td height="25"><div align="center"><img src="img/cz.gif" width="57" height="20" onClick="chongzhi()"></div></td>
						              </tr>
						              -->
						              
                                 </table>
                             </td>
                             <td width="211" background="img/login_10.gif"></td>
                          </tr>
                       </table>
                   </td>
                </tr>
                <tr>
                   <td height="206" background="img/login_11.gif">
                       <table>
                           <tr>
                              <td width="450"></td>
                              <td><img id="indicator" src="<%=path %>/img/loading.gif" style="display:none"/></td>
                           </tr>
                       </table>
                   </td>
                </tr>
            </table>
            </form>
         </td>
      </tr>
	  <tr>
	     <td bgcolor="#152753">&nbsp;</td>
	  </tr>
  </table>
  </body>
</html>
