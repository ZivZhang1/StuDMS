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
		<script type="text/javascript" src="<%=path %>/js/popup.js"></script>
        <script language="javascript">
           function laifangDel(id)
           {
               if(confirm('您确定删除吗？'))
               {
                   window.location.href="<%=path %>/laifangDel.action?id="+id;
               }
           }
           
           function laifangAdd()
           {
                 var url="<%=path %>/admin/laifang/laifangAdd.jsp";
                 //var n="";
                 //var w="480px";
                 //var h="500px";
                 //var s="resizable:no;help:no;status:no;scroll:yes";
				 //openWin(url,n,w,h,s);
				 window.location.href=url;
           }
           
                function laifangEdit(id)
           {
                   window.location.href="<%=path %>/laifangEditPre.action?id="+id;
           }    
           
           
            function laifangQushijianAdd(id)
		    {
		        var url="<%=path %>/admin/laifang/laifangQushijianAdd.jsp?id="+id;
		        var pop=new Popup({ contentType:1,isReloadOnClose:false,width:400,height:200});
	            pop.setContent("contentUrl",url);
	            pop.setContent("title","");
	            pop.build();
	            pop.show();
	            //另一红上传方式可以参照进销存
		    }
       </script>
	</head>

	<body leftmargin="2" topmargin="2" background='<%=path %>/images/allbg.gif'>
	<form action="<%=path %>/laifangQuery.action" name="formAdd" method="post">
	  <table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC" style="margin-bottom:8px">
        <tr bgcolor="#EEF4EA">
          <td colspan="3" background="<%=path %>/images/wbg.gif" class='title'><span>来访查询</span></td>
        </tr>
        <tr align='center' bgcolor="#FFFFFF" onmousemove="javascript:this.bgColor='red';" onmouseout="javascript:this.bgColor='#FFFFFF';" height="22">
          <td width="15%" bgcolor="#FFFFFF" align="right"> 来访者姓名： </td>
          <td width="23%" align="left"  bgcolor="#FFFFFF"><input type="text" name="laifangzhe" size="20"/>
          </td>
          <td width="10%" bgcolor="#FFFFFF" align="right"> 所去宿舍： </td>
          <td width="29%" align="left"  bgcolor="#FFFFFF"><input type="text" name="suoqusushe" size="20"/>
          </td>
          <td width="23%"><input name="submit" type="submit" value="查询"/>
            &nbsp;
            <input name="reset" type="reset" value="重置"/>
            &nbsp; </td>
        </tr>
      </table>
	</form>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan="5" background="<%=path %>/images/tbg.gif">&nbsp;来访信息管理&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width="20%">来访时间</td>
					<td width="20%">离开时间</td>
					<td width="20%">所去宿舍</td>
					<td width="20%">来访者姓名</td>
					<td width="20%">操作</td>
		        </tr>	
				<s:iterator value="#request.laifangList" id="laifang">
				<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#laifang.laishijian"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:if test="#laifang.qushijian==''">
					        <a href="#" style="color: red" onclick="laifangQushijianAdd(<s:property value="#laifang.id"/>)">录入离开时间</a> 
					    </s:if>
					    <s:else>
					        <s:property value="#laifang.qushijian"/>
					    </s:else>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					      <s:property value="#laifang.suoqusushe"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    <s:property value="#laifang.laifangzhe"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<a href="#" onclick="laifangDel(<s:property value="#laifang.id"/>)" class="pn-loperator">删除</a>
					<a href="#" onclick="laifangEdit(<s:property value="#laifang.id"/>)" class="pn-loperator">编辑</a>
					</td>
				</tr>
				</s:iterator>
			</table>
			
			<table width='98%'  border='0'style="margin-top:8px;margin-left: 5px;">
			  <tr>
			    <td>
			      <input type="button" value="添加" style="width: 80px;" onclick="laifangAdd()" />
			    </td>
			  </tr>
		    </table>
	</body>
</html>
