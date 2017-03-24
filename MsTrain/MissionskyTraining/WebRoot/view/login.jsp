<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!doctype html>
<html lang="zh">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>入职培训</title>
	<link rel="stylesheet" type="text/css" href="css/default.css">
	<link rel="stylesheet" type="text/css" href="css/styles.css">
	<!--[if IE]>
		<script src="http://libs.baidu.com/html5shiv/3.7/html5shiv.min.js"></script>
	<![endif]-->
	
	<script type="text/javascript">
		function KeyDown(){
			if (event.keyCode==13){
				   subForm();
				}
			}
		function subForm() {
			if(checkInput()){
					var form = document.getElementById("loginForm");
					form.submit();
					return true;
				}
			return false;
		}

		function checkInput(){

	        //判断用户名

	        if($("input[name=username]").val() == null || $("input[name=username]").val() == ""){

	            alert("用户名不能为空");

	            $("input[name=username]").focus();

	            return false;

	        }

	        //判断密码

	        if($("input[name=password]").val() == null || $("input[name=password]").val() == ""){

	            alert("密码不能为空");

	            $("input[name=password]").focus();

	            return false;

	        }
		}
	</script>
	
	
</head>
<body>
	<article class="htmleaf-container">
		<header class="htmleaf-header">
			<h1>入职培训 <span>Missionsky</span></h1>
			<div class="htmleaf-links">
				
			</div>
		</header>
		<div class="panel-lite">
		  <div class="thumbur">
		    <div class="icon-lock"></div>
		  </div>
		  <h4>用户登录</h4>
		  <form method="post" action="login.do" id="loginForm">
			  <div class="form-group">
			    <input type="text" required="required" class="form-control" id="userName" name="userName" value="zak"/>
			    <label class="form-label">用户名    </label>
			  </div>
			  <div class="form-group">
			    <input type="password" required="required" class="form-control" id="password" name="password" value="123456"/>
			    <label class="form-label">密　码</label>
			  </div><a href="view/register.jsp">还没有账号?现在注册！  </a>
			  <button class="floating-btn" onclick="subForm()"><i class="icon-arrow"></i></button>
			  
		 </form>
		</div>
	
	</article>
	
</body>
</html>
