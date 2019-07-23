<%@page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Bootstrap 101 Template</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Bootstrap -->
        <link href="/bootstrap/css/bootstrap.css" rel="stylesheet" media="screen">
    </head>
    <body>
        <form>
            <div class="form-group">
                <label class="control-label" for="tel">电话号码</label>
                <div class="controls">
                    <input type="text" class="form-control" id="tel" placeholder="请输入电话号码">
                </div>
            </div>
            <div class="form-group">
                <label class="control-label" for="calltime">查询时间</label>
                <div class="controls">
                    <input type="text" class="form-control" id="calltime" placeholder="请输入查询时间">
                </div>
            </div>
            <button type="button" class="btn btn-default" onclick="queryData()">查询</button>
        </form>
    </body>
    <script src="/jquery/jquery-2.1.1.min.js"></script>
    <script src="bootstrap/js/bootstrap.js"></script>
    <script>
        function queryData(){
            window.location.href = "/query?tel=" + $("#tel").val() + "&calltime=" + $("#calltime").val()
        }
    </script>
</html>
