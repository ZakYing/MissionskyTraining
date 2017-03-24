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
          类型名称:<input type="text" id="videoTypeName" name="videoTypeName"/>
     <input type="submit" value="添加"/>
    </form>
   <hr>
    <h3>添加视频</h3>
    <form action="addVideo.do" method="post" enctype="multipart/form-data">
    <table>
    <tr>
    <td>视频类型</td>
    <td> 
    <select name="videoTypeId">
    <option value="1">AA业务培训</option>
    <option value="2">ACA业务培训</option>
    <option value="3">QA测试培训</option>
    </select>
    </td>
    </tr>
     <tr>
    <td>视频名称</td>
    <td><input type="text" name="VideoFileName"></td>
    </tr>
    <tr>
    <td>发布人</td>
    <td><input type="text" name="publishUser"></td>
    </tr>
     <tr>
    <td>链接地址</td>
    <td><input type="text" name="VideoURL"></td>
    </tr>
    <tr>
    <td>链接封面</td>
    <td><input type="file" name="VideoImg"></td>
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
  </body>
  
</html>
