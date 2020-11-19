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
           
           function baoxiuAddMy()
           {
                 var url="<%=path %>/astu/baoxiu/baoxiuAddMy.jsp";
                 //var n="";
                 //var w="480px";
                 //var h="500px";
                 //var s="resizable:no;help:no;status:no;scroll:yes";
				 //openWin(url,n,w,h,s);
				 window.location.href=url;
           }
           function baoxiuShouli(id)
           {
                 var url="<%=path %>/baoxiuShouli.action?id="+id;
				 window.location.href=url;
           }
           
           
             function baoxiuDel(id)
           {
               if(confirm('您确定删除吗？'))
               {
                   window.location.href="<%=path %>/baoxiuDel.action?id="+id;
               }
           }
       </script>
	</head>

	<body leftmargin="2" topmargin="2" background='<%=path %>/images/allbg.gif'>
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan="4" background="<%=path %>/images/tbg.gif">&nbsp;报修&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
				<td width="18%">报修宿舍</td>
					<td width="18%">报修时间</td>
					<td width="18%">报修原因</td>
					<td width="18%">状态</td>
					<td width="18%">操作</td>
		        </tr>	
				<s:iterator value="#request.baoxiuList" id="baoxiu">
				<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
				<td bgcolor="#FFFFFF" align="center">
						<s:property value="#baoxiu.sushe"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#baoxiu.shijian"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#baoxiu.yuanyin"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    <s:if test="#baoxiu.zhuangtai=='weishouli'">
					        未受理
					    </s:if>
					    <s:if test="#baoxiu.zhuangtai=='yishouli'">
					       已受理
					    </s:if>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    <s:if test="#baoxiu.zhuangtai=='weishouli'">
					         <a style="color: red" href="#" onclick="baoxiuShouli(<s:property value="#baoxiu.id"/>)">受理</a>
					    </s:if>
					    <s:if test="#baoxiu.zhuangtai=='yishouli'">
					       已受理
					    </s:if>
		<a href="#" onclick="baoxiuDel(<s:property value="#baoxiu.id"/>)" class="pn-loperator">删除</a>			    
					</td>
				
				</tr>
				
				</s:iterator>
			</table>
	</body>
</html>
