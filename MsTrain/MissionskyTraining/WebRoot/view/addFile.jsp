<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>add File</title>
		<link rel="stylesheet" href="../layui/css/layui.css" media="all"/>	
	</head>

	<body style="margin: 20px;">

		<form class="layui-form" action="">
			<div class="layui-form">

			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">文章标题</label>
				<div class="layui-input-block">
					<input name="title" lay-verify="title" placeholder="请输入" autocomplete="off" class="layui-input" type="text">
				</div>

			</div>

			<div class="layui-form-item">
				<label class="layui-form-label">主要内容</label>
				<div class="layui-input-block">
					<input name="username" lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input" type="text">
				</div>

			</div>

			<div class="layui-form-item layui-form-text">
				<label class="layui-form-label">编辑器</label>
				<div class="layui-input-block">
					<textarea class="layui-textarea layui-hide" name="content" lay-verify="content" id="LAY_demo_editor"></textarea>
				</div>
			</div>
			<div class="layui-form-item">
				<div class="layui-input-block">
					<button class="layui-btn" lay-submit="" lay-filter="demo1">立即提交</button>
					<button type="reset" class="layui-btn layui-btn-primary">重置</button>
				</div>
			</div>
		</form>
		<script src="../layui/lay/dest/layui.all.js"></script>

		<script src="../layui/layui.js"></script>

		<!--text editor-->
		<script type="text/javascript">
			layui.use(['form', 'layedit', 'laydate'], function() {
				var form = layui.form(),
					layer = layui.layer,
					layedit = layui.layedit,
					laydate = layui.laydate;

				//创建一个编辑器
				var editIndex = layedit.build('LAY_demo_editor');

				//自定义验证规则
				form.verify({
					title: function(value) {
						if(value.length < 5) {
							return '标题至少得5个字符啊';
						}
					},
					pass: [/(.+){6,12}$/, '密码必须6到12位'],
					content: function(value) {
						layedit.sync(editIndex);
					}
				});

				//监听指定开关
				form.on('switch(switchTest)', function(data) {
					layer.msg('开关checked：' + (this.checked ? 'true' : 'false'), {
						offset: '6px'
					});
					layer.tips('温馨提示：请注意开关状态的文字可以随意定义，而不仅仅是ON|OFF', data.othis)
				});

				//监听提交
				form.on('submit(demo1)', function(data) {
					layer.alert(JSON.stringify(data.field), {
						title: '最终的提交信息'
					})
					return false;
				});

			});
		</script>
	</body>

</html>