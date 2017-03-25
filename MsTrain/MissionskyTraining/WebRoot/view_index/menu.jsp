<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>QandA</title>
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<link rel="stylesheet" type="text/css" href="../css/stylepc.css">
	<!-- <script type="javascript" src="/js/pic.js"></script> -->
<!-- 	<link rel="stylesheet" type="text/css" href="css/shouj.css"> -->
</head>


<body>
	<div class="container">
		<div class="menu">
			
			<h3><i class="q-menu-img positionIicon"></i>入职须知</h3>
			
			<h3><i class="q-menu-img positionIicon"></i>HR</h3>
			<ul class="ulmenu1">
				<li><a class="selected" href="#tab1">入职要求</a></li>
				<li><a href="#">报销流程</a></li>
				<li><a href="#">事务处理</a></li>
				
			</ul>

			<h3><i class="q-menu-doit positionIicon"></i>业务培训</h3>
			<ul class="ulmenu2">
				<li><a href="#" class="selected">AA</a></li>
				<li><a href="#">ACA</a></li>
				<li><a href="#">QA</a></li>
				<li><a href="#">期初问题</a></li>
			</ul>
			<h3><i class="q-menu-doit positionIicon"></i>材料中心</h3>
			<ul class="ulmenu2">
				<li><a href="../view/doc.jsp" class="selected" target="iframe2">AA</a>
					
				</li>
				<li><a href="../doc_op.do?pageIndex=1" target="iframe3">ACA</a></li>
				<li><a href="#">QA</a></li>
				<li><a href="#">期初问题</a></li>
			</ul>

		</div>
		
		<div class="content">
			<div class="get-menu">
				<a href="#">帮助中心</a>
				<span>></span>
				<a class="A1" href="#">常见问题</a>
			</div>

			<div class="menu1 menu_tab">
				<div id="tab1" class="tab active">
					<h4>入职须知</h4>
					<p class="" style="font-size: 18px;">

						首先欢迎您来我公司工作，为了能让您有一个更好的工作环境，使我们的合作轻松愉快，请您仔细阅读 我公司新员工入职的有关规定：
						<br /> 1.新入职的员工必须完整的填写好入职申请表，必须保证向我公司提交的所有证件及资料等均真实有效。 否则公司可随时解除劳动关系，并追究相关经济法律责任。主要有效证件资料如下：
						<br /> （1）一寸免冠相片两张。 <br /> （2）身份证原件及复印件； <br /> （3）高职管理人员需要学历证件、资质（资格）证书、荣誉证书原件及复印件。
						<br /> （4）体检报告（县级以上医院开具的体检报告）；
						<br /> 2.公司每天上下班的时间为：
						<br /> 上午8：30——11：45 下午13：15——18：00 以完成当天工作为前提.如需加班，由部门领导安排 和填写加班申请单。

				</div>
				<div  id="tab2" class="tab">
					<p class="tt">1. 开始报销</p>
					<p>This is Answer！笔试有哪些部分组成，主要涉及哪些知识点？</p>

					<p class="tt">2.完成报销</p>
					<p>This is Answer！面试有哪几部分组成，涉及到哪些知识点？</p>
				</div>

				<div  id="tab3" class="tab">
					<p class="tt">6.新增银行账号处”是否现金账户”什么意思？</p>
					<p>This is Answer！6.新增银行账号处”是否现金账户”什么意思？6.新增银行账号处”是否现金账户”什么意思？</p>

					<p class="tt">7.事务处理处生成的凭证属于哪个会计期间的？？</p>
					<p>This is Answer！7.事务处理处生成的凭证属于哪个会计期间的？？7.事务处理处生成的凭证属于哪个会计期间的？？7.事务处理处生成的凭证属于哪个会计期间的？？7.事务处理处生成的凭证属于哪个会计期间的？？7.事务处理处生成的凭证属于哪个会计期间的？？</p>

					<p class="tt">8.凭单与费用报销单有什么区别？</p>
					<p>This is Answer！8.凭单与费用报销单有什么区别？8.凭单与费用报销单有什么区别？8.凭单与费用报销单有什么区别？8.凭单与费用报销单有什么区别？</p>

					<p class="tt">9.财务复核的时候若发现上交的发票与报销不符，在系统该怎么操作？</p>
					<p>This is Answer！9.财务复核的时候若发现上交的发票与报销不符，在系统该怎么操作？9.财务复核的时候若发现上交的发票与报销不符，在系统该怎么操作？9.财务复核的时候若发现上交的发票与报销不符，在系统该怎么操作？</p>

					<p class="tt">10.费用报销个步骤中，哪个步骤会自动生成会计凭证？</p>
					<p>This is Answer！10.费用报销个步骤中，哪个步骤会自动生成会计凭证？10.费用报销个步骤中，哪个步骤会自动生成会计凭证？10.费用报销个步骤中，哪个步骤会自动生成会计凭证？</p>

					<p class="tt">11.已提交的报销单如发现填写错误能撤回吗？</p>
					<p>This is Answer！11.已提交的报销单如发现填写错误能撤回吗？11.已提交的报销单如发现填写错误能撤回吗？11.已提交的报销单如发现填写错误能撤回吗？11.已提交的报销单如发现填写错误能撤回吗？</p>

					<p class="tt">12.工资处理处社保公积金都能自动计算的吗？</p>
					<p>This is Answer！12.工资处理处社保公积金都能自动计算的吗？</p>
				</div>

				<div  id="tab4" class="tab">
					<p class="tt">13.为什么关账后损益类科目还有余额？</p>
					<p>This is Answer！</p>

					<p class="tt">14.月末关账后发现凭证录入有误还能再修改吗？</p>
					<p>月末关账后发现凭证录入有误还能再修改吗？月末关账后发现凭证录入有误还能再修改吗？月末关账后发现凭证录入有误还能再修改吗？</p>
					
					<p class="tt">15.年结凭证需要自己手动录入吗</p>
					<p>年结凭证需要自己手动录入吗年结凭证需要自己手动录入吗年结凭证需要自己手动录入吗年结凭证需要自己手动录入吗</p>

					<p class="tt">16.系统能自动生成哪些凭证，哪些凭证需要手工录入？</p>
					<p>系统能自动生成哪些凭证，哪些凭证需要手工录入？16、系统能自动生成哪些凭证，哪些凭证需要手工录入？？</p>

					<p class="tt">17.在其他财务软件做的凭证能导入系统吗？</p>
					<p>在其他财务软件做的凭证能导入系统吗？在其他财务软件做的凭证能导入系统吗？在其他财务软件做的凭证能导入系统吗？在其他财务软件做的凭证能导入系统吗？</p>

					<p class="tt">18.为什么有些凭证不能删除？</p>
					<p>为什么有些凭证不能删除？为什么有些凭证不能删除？</p>

					<p class="tt">19.业务驱动收到或者开具的发票能删除吗？</p>
					<p>业务驱动收到或者开具的发票能删除吗？19.业务驱动收到或者开具的发票能删除吗？19.业务驱动收到或者开具的发票能删除吗？</p>

					<p class="tt">20.税收测算表的增值税及营业税以什么为根据来计算的？</p>
					<p>税收测算表的增值税及营业税以什么为根据来计算的？税收测算表的增值税及营业税以什么为根据来计算的？税收测算表的增值税及营业税以什么为根据来计算的？</p>

					<p class="tt">21.税收管理报表计提生成凭证后若发现计提错误还能修改吗？</p>
					<p>税收管理报表计提生成凭证后若发现计提错误还能修改吗？21、税收管理报表计提生成凭证后若发现计提错误还能修改吗？21、税收管理报表计提生成凭证后若发现计提错误还能修改吗？</p>

				</div>

				<div  id="tab5" class="tab">
					<p class="tt">22.账龄表初始化是什么意思？</p>
					<p>This is Answer！</p>

					<p class="tt">23.在哪里可以查看明细帐？</p>
					<p>在哪里可以查看明细帐？在哪里可以查看明细帐？在哪里可以查看明细帐？在哪里可以查看明细帐？</p>
					
					<p class="tt">24.每生成一张凭证之后为什么三大报表及科目余额表都会改变？</p>
					<p>每生成一张凭证之后为什么三大报表及科目余额表都会改变？每生成一张凭证之后为什么三大报表及科目余额表都会改变？每生成一张凭证之后为什么三大报表及科目余额表都会改变？每生成一张凭证之后为什么三大报表及科目余额表都会改变？</p>

					<p class="tt">25.如何查看关账月份前的报表？</p>
					<p>如何查看关账月份前的报表？如何查看关账月份前的报表？如何查看关账月份前的报表？</p>

				</div>


				<div  id="tab6" class="tab">
					<p class="tt">26.如何录入科目期初余额？</p>
					<p>This is Answer！</p>

					<p class="tt">27.初始化的时候期初余额录入错误怎么修改?</p>
					<p>初始化的时候期初余额录入错误怎么修改?</p>
					
					<p class="tt">28.初始化的时候科目余额为什么录入不进去？</p>
					<p>初始化的时候科目余额为什么录入不进去？28、初始化的时候科目余额为什么录入不进去？28、初始化的时候科目余额为什么录入不进去？</p>

					<p class="tt">29.科目匹配是什么意思？</p>
					<p>科目匹配是什么意思？科目匹配是什么意思？科目匹配是什么意思？</p>

					<p class="tt">30.为什么有些科目删除不了？</p>
					<p>This is Answer！</p>

					<p class="tt">31.如何增加一级科目？会计科目到几级？</p>
					<p>如何增加一级科目？会计科目到几级？如何增加一级科目？会计科目到几级？如何增加一级科目？会计科目到几级？如何增加一级科目？会计科目到几级？</p>
					
					<p class="tt">32.如何增加、修改、删除科目？</p>
					<p>如何增加、修改、删除科目？如何增加、修改、删除科目？如何增加、修改、删除科目？如何增加、修改、删除科目？如何增加、修改、删除科目？如何增加、修改、删除科目？</p>

					<p class="tt">33. 科目是按照哪个企业会计准则来的？</p>
					<p>科目是按照哪个企业会计准则来的？科目是按照哪个企业会计准则来的？科目是按照哪个企业会计准则来的？科目是按照哪个企业会计准则来的？</p>

					<p class="tt">34.是否支持辅助核算？如何核算每个客户或者供应商的往来款项？</p>
					<p>This is Answer！</p>

					<p class="tt">35.若员工离职了，如何把该员工从系统中删除？</p>
					<p>若员工离职了，如何把该员工从系统中删除若员工离职了，如何把该员工从系统中删除若员工离职了，如何把该员工从系统中删除？</p>
					
					<p class="tt">36.如何修改报销审批人？</p>
					<p>如何修改报销审批人？36、如何修改报销审批人？36、如何修改报销审批人？</p>

					<p class="tt">37.员工个人信息如何修改？</p>
					<p>员工个人信息如何修改员工个人信息如何修改员工个人信息如何修改员工个人信息如何修改</p>
				</div>

			</div>

			<div class="menu2 menu_tab">
				<div id="tab-1" class="tab">
					<iframe name="iframe2" title="" width="1000px" height="800px" frameborder="0">
					</iframe>
				</div>

				<div  id="ta-2" class="tab">
					<iframe name="iframe3" title="" width="1000px" height="800px" frameborder="0">
					</iframe>
				</div>

				<div  id="tab-3" class="tab">
					<p class="tt">3.Question</p>
					<p>This is Answer！</p>
					<p>This is Answer！</p>
				</div>

				<div  id="tab-4" class="tab">
					<p class="tt">2.Question</p>
					<p>This is Answer！</p>
					<p>This is Answer！</p>
				</div>

				<div  id="tab-5" class="tab">table5</div>
				<div  id="tab-6" class="tab">table6</div>
				<div  id="tab-7" class="tab">table7</div>
				<div  id="tab-8"  class="tab">table8</div>
				<div  id="tab-9" class="tab">table9</div>
				<div  id="tab-10" class="tab">table10</div>
				<div  id="tab-11"  class="tab">table11</div>
				<div  id="tab-12" class="tab">table12</div>
			</div>
			
			<div class="menu3 menu_tab">
				<div id="tab-3-1" class="tab">
					<p class="tt">1. 。。。如何收费？222</p>
					<p>。。。的个人版用户，100套账免费记，只需注册即可直接使用。。。。的代账公司版，多人操作且有服务运营管理系统，总账套数300套收费980元/年，总账套数1000套收费1980元/年。</p>

					<p class="tt">2. 。。。安全吗？</p>
					<p>在安全保障方面，我们参照并实施了多项国际及国家在信息安全领域的标准，成立了公司级安全小组，制定了详细的规章制度与考核标准，由安全监理负责监察规章制度的执行，确保客户数据的收集、储存及使用均遵守内部监控以及适用的法律及法规规定；用户数据安全方面我们采用安全性最好的独立部署模式，对每一家企业分配私有的专用服务器资源独立使用，数据单独存放，核心数据每天进行本地，本地异机与异地异机三重备份机制，解决因为极端事件给数据带来的安全隐患；在数据传输安全方面，所有用户关键及核心数据，我们全部使用SSL加密转输，杜绝了用户数据在传输过程中可能出现的窃听、篡改、伪造等行为。</p>


					<p class="tt">3. 有。。。的流程操作视频吗？</p>
					<p>。。。操作视频：http://kuaiji.youku.com/hall/?ykvid=XODYwMTkwOTQw</p>
					<p>帮助文档：http://www.uu.com.cn/help/index.html</p>

					<p class="tt">1. 。。。如何收费？</p>
					<p>。。。的数据是云端多重备份存储，是自动保存的。</p>
					<p>使用者年底也可以把总账、明细账下载到本地归档，操作步骤：点击“账簿管理”，选择某一公司账套，点击“账簿归档”，即能将所选年度的总账、明细账、数量金额明细账下载到本地用于归档。</p>

					<p class="tt">1. 。。。如何收费？</p>
					<p>。。。的个人版用户，100套账免费记，只需注册即可直接使用。。。。的代账公司版，多人操作且有服务运营管理系统，总账套数300套收费980元/年，总账套数1000套收费1980元/年。</p>

					<p class="tt">1. 。。。如何收费？</p>
					<p>。。。的个人版用户，100套账免费记，只需注册即可直接使用。。。。的代账公司版，多人操作且有服务运营管理系统，总账套数300套收费980元/年，总账套数1000套收费1980元/年。</p>

					<p class="tt">1. 。。。如何收费？</p>
					<p>。。。</p>

					<p class="tt">1. 。。。如何收费？</p>
					<p>。。。</p>
				</div>
				<div  id="tab-3-2" class="tab">table2</div>
				<div  id="tab-3-3" class="tab">table3</div>
				<div  id="tab-3-4" class="tab">
					<p class="tt">1. 。。。</p>
					<p>。。。的个人版用户，100套账免费记，只需注册即可直接使用。。。。的代账公司版，多人操作且有服务运营管理系统，总账套数300套收费980元/年，总账套数1000套收费1980元/年。</p>

					<p class="tt">2. 。。。安全吗？</p>
					<p>在安全保障方面，我们参照并实施了多项国际及国家在信息安全领域的标准，成立了公司级安全小组，制定了详细的规章制度与考核标准，由安全监理负责监察规章制度的执行，确保客户数据的收集、储存及使用均遵守内部监控以及适用的法律及法规规定；用户数据安全方面我们采用安全性最好的独立部署模式，对每一家企业分配私有的专用服务器资源独立使用，数据单独存放，核心数据每天进行本地，本地异机与异地异机三重备份机制，解决因为极端事件给数据带来的安全隐患；在数据传输安全方面，所有用户关键及核心数据，我们全部使用SSL加密转输，杜绝了用户数据在传输过程中可能出现的窃听、篡改、伪造等行为。</p></div>
				<div  id="tab-3-5" class="tab">table5</div>
				<div  id="tab-3-6" class="tab">table6</div>
				<div  id="tab-3-7" class="tab">table7</div>
				<div  id="tab-3-8"  class="tab">table8</div>
				<div  id="tab-3-9" class="tab">table9</div>
				<div  id="tab-3-10" class="tab">table10</div>
				<div  id="tab-3-11"  class="tab">table11</div>
				<div  id="tab-3-12" class="tab">table12</div>
			</div>

		</div>

	</div>
</body>
	<script type="text/javascript" src="../js/pc.js"></script>
</html>
</html>
