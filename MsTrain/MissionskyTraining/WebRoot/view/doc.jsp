<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"> 
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/bootstrap.min.css"> 
    <link rel="stylesheet" href="../css/bootstrap-table.min.css">
    <title>Missionsky</title>
</head>
<body>
<div class="container">
    <div>
        <label>Cells: </label><input id="cells" type="text" placeholder="Cells" value="5">
        <label>Rows: </label><input id="rows" type="text" placeholder="Rows" value="100">
        <button id="build" class="btn btn-default">Build</button>
    </div>
    <table id="table"
           data-toggle="table"
           data-url="../data/data1.json"
           data-show-columns="true"
           data-search="true"
           data-show-refresh="true"
           data-show-toggle="true"
           data-pagination="true"
           data-height="500">
        <thead>
        <tr>
            <th data-field="id" data-formatter="idFormatter">ID</th>
            <th data-field="filename">文件名</th>
            <th data-field="upload_date">上传日期</th>
            <th data-field="upload_person">上传者</th>
            <th ><a href="#">操作</a></th>
        </tr>
        </thead>
    </table>
</div>
	<script src="../js/jquery.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/tableExport.js"></script>
	<script src="../js/jquery.base64.js"></script>
	<script src="../js/bootstrap-table.js"></script>
	<script src="../js/bootstrap-table-export.js"></script>
	<script>
    $(function () {
        $('#build').click(build);//.trigger('click');
        $('#cells, #rows').keyup(function (e) {
            if (e.keyCode === 13) {
                build();
            }
        });
    });

    function build() {
        var cells = $('#cells').val(),
            rows = $('#rows').val(),
            i, j, row,
            columns = [],
            data = [];

        for (i = 0; i < cells; i++) {
            columns.push({
                field: 'field' + i,
                title: 'Cell' + i
            });
        }
        for (i = 0; i < rows; i++) {
            row = {};
            for (j = 0; j < cells; j++) {
                row['field' + j] = 'Row-' + i + '-' + j;
            }
            data.push(row);
        }
        $('#table').bootstrapTable('destroy').bootstrapTable({
            columns: columns,
            data: data
        });
    }

    function idFormatter(value) {
        return value + 100;
    }
</script>
</body>
</html>
