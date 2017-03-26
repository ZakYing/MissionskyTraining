<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>missionsky_training_index_top</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">

<style type="text/css">
.fl {
	float: left;
}

.fr {
	float: right;
}
</style>

</head>

<body bgcolor="#A6A6A6">
	<div>
		<h2 align="center">凌云新创信息科技培训网站</h2>
		<span class="fr"> <a href="logout.do" target="_parent">退出</a> </span>
		<span class="fr">欢迎您,<span style="color:blue;font-weight: bold">${user.userName}</span></span>
	</div>
</body>
</html>
