<%@ page language="java"
	import="java.util.*,java.util.*,com.missionsky.training.domain.*,com.missionsky.training.util.*,java.text.*"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>missionsky_training_doc_operate</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">

<!-- <link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css"> -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-table.min.css">

<!-- <style type="text/css">body{font-family:Arial,Verdana,sans-serif; margin:100px;}</style> -->

</head>
<%
	List<DocumentInfo> result = (ArrayList) request
			.getAttribute("result");
	int pageIndex = Integer.parseInt(request.getAttribute("pageIndex")
			.toString());
	int pageCount = Integer.parseInt(request.getAttribute("pageCount")
			.toString());
%>
<body>
	<h3>文档管理</h3>
	<div class="uploader white">
		<form action="doc_upload.do" method="post" enctype="multipart/form-data">
			<input type="hidden" name="pageIndex" value=<%=pageIndex%>>
			 <input type="text" class="filename" readonly /> 
			 <input type="submit" class="button" value="上传文档"/> 
			 <input type="file" id="doc" name="doc"/>

		</form>
	</div>

	<form id="formlist" name="formlist" action="doc_op.do" method="post"
		class="table-responsive">
		<table class="table table-hover">
			<tr style="font-weight: bold;font-size:14px">
				<td>文件名</td>
				<td>文件大小</td>
				<td>上传日期</td>
				<td>上传者</td>
				<td>下载</td>
			</tr>
			<%
				for (DocumentInfo d : result) {
					String date_publishdate = new SimpleDateFormat(
							"yyyy-MM-dd HH:mm").format(d.getUploadDate());
			%>
			<tr>
				<td><%=d.getDocName()%></td>
				<td><%=d.getDocSize()%></td>
				<td><%=date_publishdate%></td>
				<td><%=d.getUser().getUserName()%></td>
				<td><a
					href="doc_download.do?docName=<%=Tools.getNewString(d.getDocName())%>&pageIndex=<%=pageIndex%>">下载</a></td>
			</tr>
			<%
				}
			%>
		</table>

		<table>
			<tr>
				<td width=230px>共<strong>${rowCount }</strong>条记录/共<strong>${pageCount }</strong>页，当前第<strong>${pageIndex }</strong>页
				</td>
				<td colspan=2>
					<%
						if (pageIndex != 1) {
					%> <a href="doc_op.do?pageIndex=<%=pageIndex - 1%>">上一页</a> <%
 	}
 %> 转到第: <select name="pageIndex" onchange="document.formlist.submit();">
						<%
							for (int i = 1; i <= pageCount; i++) {
						%>
						<option value=<%=i%>><%=i%></option>
						<%
							}
						%>
				</select>页 <%
					if (pageIndex != pageCount) {
				%> <a href="doc_op.do?pageIndex=<%=pageIndex + 1%>">下一页</a> <%
 	}
 %>
				</td>
			</tr>
		</table>
	</form>

	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap-table.js"></script>
	<script src="js/bootstrap-table-export.js"></script>

	<script>$(function(){
		$("input[type=file]").change(function(){$(this).parents(".uploader").find(".filename").val($(this).val());});
		$("input[type=file]").each(function(){
			if($(this).val()==""){$(this).parents(".uploader").find(".filename").val("No file selected...");}
			});
		});
	</script>
</body>
</html>
