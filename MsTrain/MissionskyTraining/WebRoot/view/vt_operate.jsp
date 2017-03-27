<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>missionsky_training_vt</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">

<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="layui/css/layui.css" media="all" />


<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script type="text/javaScript">
      function getAllType()
      {
          $.ajax({
            url:"getAllVT.do",
            type:"post",
            dataType:"json",
            data:{flag:"query"},
            success:function(alltypeList){
                $("#alltypeList").empty();
                var str="<tr><td>id</td>><td>名称</td></tr>"
                $("#alltypeList").append(str);
                 $.each(alltypeList,function(key,obj){
                    var str="<tr><td>"+obj.videoTypeId+"</td><td>"+obj.videoTypeName+"</td></tr>";
                    $("#alltypeList").append(str);
                 });
            }
         });
      }
	</script>

</head>

<body>
	<h3>添加视频分类</h3>


	<form action="addVT.do" method="post">

		<div class="layui-form-item">
			<label class="layui-form-label">类型名称</label>
			<div class="layui-input-block">
				<input type="text" id="videoTypeName" name="videoTypeName"
					lay-verify="title" autocomplete="off" placeholder="请输入标题"
					class="layui-input" >
			<input type="submit" value="添加" />
			</div>
		</div>

		<!-- 类型名称:<input type="text" id="videoTypeName" name="videoTypeName" /> <input
			type="submit" value="添加" /> -->
	</form>
	<hr>
	<h3>添加视频</h3>
	<form action="addVideo.do" method="post" enctype="multipart/form-data">
		
		<!-- <div class="layui-inline">
		<label class="layui-form-label">视频类型</label>
		<div class="layui-input-inline">
        <select name="modules" lay-verify="required" lay-search="">
          <option value="">直接选择或搜索选择</option>
          <option value="1">layer</option>
          <option value="2">form</option>
          <option value="3">layim</option>
          <option value="4">element</option>
          <option value="5">laytpl</option>
          <option value="6">upload</option>
          <option value="7">laydate</option>
          <option value="8">laypage</option>
          <option value="9">flow</option>
          <option value="10">util</option>
          <option value="11">code</option>
          <option value="12">tree</option>
        </select>
      </div>
      </div> -->
		<table class="table">
			<tr>
				<td>视频类型</td>
				<td><select name="videoTypeId">
						<option value="1">AA业务培训</option>
						<option value="2">ACA业务培训</option>
						<option value="3">QA测试培训</option>
				</select></td>
			</tr>
			<tr>
				<td>视频名称</td>
				<td><input type="text" name="VideoFileName" lay-verify="title" autocomplete="off" placeholder="请输入标题"
					class="layui-input" ></td>
			</tr>
			<tr>
				<td>发布人</td>
				<td><input type="text" name="publishUser" lay-verify="title" autocomplete="off" placeholder="请输入标题"
					class="layui-input" ></td>
			</tr>
			<tr>
				<td>链接地址</td>
				<td><input type="text" name="VideoURL" lay-verify="title" autocomplete="off" placeholder="请输入标题"
					class="layui-input" ></td>
			</tr>
			<tr>
				<td>链接封面</td>
				<td><input type="file" name="VideoImg" lay-verify="title" autocomplete="off" placeholder="请输入标题"
					class="layui-input" ></td>
			</tr>
			<tr>
				<td colspan=2><input type="submit" value="添加"></td>
			</tr>
		</table>
	</form>
	<hr>
	<a href="javascript:getAllType();">获取所有视频类型</a>
	<table id="alltypeList">
	</table>
	<hr>
	视频分页查询:
	<a href="getVideosByPage.do?videoTypeId=1&pageIndex=1">AA业务培训第1页</a>
	
	<script type="text/javascript" src="layui/layui.js"></script>

	<script>
	layui.use(['form', 'layedit', 'laydate'], function(){
	  var form = layui.form()
	  ,layer = layui.layer
	  ,layedit = layui.layedit
	  ,laydate = layui.laydate;
	  
	  //创建一个编辑器
	  var editIndex = layedit.build('LAY_demo_editor');
	 
	  //自定义验证规则
	  form.verify({
	    title: function(value){
	      if(value.length < 5){
	        return '标题至少得5个字符啊';
	      }
	    }
	    ,pass: [/(.+){6,12}$/, '密码必须6到12位']
	    ,content: function(value){
	      layedit.sync(editIndex);
	    }
	  });
	  
	  //监听指定开关
	  form.on('switch(switchTest)', function(data){
	    layer.msg('开关checked：'+ (this.checked ? 'true' : 'false'), {
	      offset: '6px'
	    });
	    layer.tips('温馨提示：请注意开关状态的文字可以随意定义，而不仅仅是ON|OFF', data.othis)
	  });
	  
	  //监听提交
	  form.on('submit(demo1)', function(data){
	    layer.alert(JSON.stringify(data.field), {
	      title: '最终的提交信息'
	    })
	    return false;
	  });
	  
  
});
</script>

	<script>$(function(){
		$("input[type=file]").change(function(){$(this).parents(".uploader").find(".filename").val($(this).val());});
		$("input[type=file]").each(function(){
			if($(this).val()==""){$(this).parents(".uploader").find(".filename").val("No file selected...");}
			});
		});
	</script>

</body>


</html>
