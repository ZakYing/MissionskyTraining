<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>missionsky_training_index_menu</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	
  </head>
  
  <body bgcolor="pink">
      <ul>
      <li><a href="view_index/content.jsp" target="right">入职要求</a></li>
      <li><a href="view_index/content.jsp" target="right">报销流程</a></li>
      <li><a href="doc_op.do?pageIndex=1" target="right">相关文档</a></li>
      <li><a href="view/vt_operate.jsp" target="right">培训视频</a></li>
      </ul>
  </body>
</html>
