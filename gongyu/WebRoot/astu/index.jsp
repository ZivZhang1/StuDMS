<%@ page contentType="text/html; charset=utf-8" language="java" errorPage="error.jsp" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<HTML>
   <HEAD>
</HEAD>

<FRAMESET border=0 frameSpacing=0 rows=98,* frameBorder=NO>
    <FRAME name=topFrame src="<%=path %>/astu/top.jsp" noResize scrolling=no>
    <FRAMESET border=0 name=content frameSpacing=0 frameBorder=0 cols=166,*>
	    <FRAME name=BoardMenu marginWidth=0 marginHeight=0 src="<%=path %>/astu/menu.jsp" noResize scrolling=no target="main">
	    <FRAME name=main marginWidth=0 marginHeight=0 src="<%=path %>/astu/index/sysPro.jsp" noResize>
    </FRAMESET>
</FRAMESET>
</HTML>