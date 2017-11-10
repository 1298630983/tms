<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="jhz" uri="http://jhz.team/common/"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>线路列表</title>

    <!-- Bootstrap Core CSS -->
    <link href="/static/css/bootstrap.min.css" rel="stylesheet">
    <!-- MetisMenu CSS -->
    <link href="/static/css/metisMenu.min.css" rel="stylesheet">

    <!-- DataTables CSS -->
    <link href="/static/css/dataTables.bootstrap.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="/static/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="/static/css/font-awesome.min.css" rel="stylesheet"
          type="text/css">
    <link href="/static/css/boot-crm.css" rel="stylesheet"
          type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

<div id="wrapper">

    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-static-top" role="navigation"
         style="margin-bottom: 0">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse"
                    data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span> <span
                    class="icon-bar"></span> <span class="icon-bar"></span> <span
                    class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.html">JHZ旅行社管理系统 v0.1</a>
        </div>
        <!-- /.navbar-header -->

        <ul class="nav navbar-top-links navbar-right">
            <li class="dropdown"><a class="dropdown-toggle"
                                    data-toggle="dropdown" href="#"> <i class="fa fa-envelope fa-fw"></i>
                <i class="fa fa-caret-down"></i>
            </a>
                <ul class="dropdown-menu dropdown-messages">
                    <li><a href="#">
                        <div>
                            <strong>黄浩</strong> <span class="pull-right text-muted">
									<em>昨天</em>
								</span>
                        </div>
                        <div>今天晚上朱大哥找我吃饭，讨论一下去十九大的事...</div>
                    </a></li>
                    <li class="divider"></li>
                    <li><a class="text-center" href="#"> <strong>查看全部消息</strong>
                        <i class="fa fa-angle-right"></i>
                    </a></li>
                </ul> <!-- /.dropdown-messages --></li>
            <!-- /.dropdown -->
            <li class="dropdown"><a class="dropdown-toggle"
                                    data-toggle="dropdown" href="#"> <i class="fa fa-tasks fa-fw"></i>
                <i class="fa fa-caret-down"></i>
            </a>
                <ul class="dropdown-menu dropdown-tasks">
                    <li><a href="#">
                        <div>
                            <p>
                                <strong>任务 1</strong> <span class="pull-right text-muted">完成40%</span>
                            </p>
                            <div class="progress progress-striped active">
                                <div class="progress-bar progress-bar-success"
                                     role="progressbar" aria-valuenow="40" aria-valuemin="0"
                                     aria-valuemax="100" style="width: 40%">
                                    <span class="sr-only">完成40%</span>
                                </div>
                            </div>
                        </div>
                    </a></li>
                    <li class="divider"></li>
                    <li><a href="#">
                        <div>
                            <p>
                                <strong>任务 2</strong> <span class="pull-right text-muted">完成20%</span>
                            </p>
                            <div class="progress progress-striped active">
                                <div class="progress-bar progress-bar-info" role="progressbar"
                                     aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"
                                     style="width: 20%">
                                    <span class="sr-only">完成20%</span>
                                </div>
                            </div>
                        </div>
                    </a></li>
                    <li class="divider"></li>
                    <li><a class="text-center" href="#"> <strong>查看所有任务</strong>
                        <i class="fa fa-angle-right"></i>
                    </a></li>
                </ul> <!-- /.dropdown-tasks --></li>
            <!-- /.dropdown -->
            <li class="dropdown"><a class="dropdown-toggle"
                                    data-toggle="dropdown" href="#"> <i class="fa fa-bell fa-fw"></i>
                <i class="fa fa-caret-down"></i>
            </a>
                <ul class="dropdown-menu dropdown-alerts">
                    <li><a href="#">
                        <div>
                            <i class="fa fa-comment fa-fw"></i> 新回复 <span
                                class="pull-right text-muted small">4分钟之前</span>
                        </div>
                    </a></li>
                    <li class="divider"></li>
                    <li><a href="#">
                        <div>
                            <i class="fa fa-envelope fa-fw"></i> 新消息 <span
                                class="pull-right text-muted small">4分钟之前</span>
                        </div>
                    </a></li>
                    <li class="divider"></li>
                    <li><a href="#">
                        <div>
                            <i class="fa fa-tasks fa-fw"></i> 新任务 <span
                                class="pull-right text-muted small">4分钟之前</span>
                        </div>
                    </a></li>
                    <li class="divider"></li>
                    <li><a href="#">
                        <div>
                            <i class="fa fa-upload fa-fw"></i> 服务器重启 <span
                                class="pull-right text-muted small">4分钟之前</span>
                        </div>
                    </a></li>
                    <li class="divider"></li>
                    <li><a class="text-center" href="#"> <strong>查看所有提醒</strong>
                        <i class="fa fa-angle-right"></i>
                    </a></li>
                </ul> <!-- /.dropdown-alerts --></li>
            <!-- /.dropdown -->
            <li class="dropdown"><a class="dropdown-toggle"
                                    data-toggle="dropdown" href="#"> <i class="fa fa-user fa-fw"></i>
                <i class="fa fa-caret-down"></i>
            </a>
                <ul class="dropdown-menu dropdown-user">
                    <li><a href="#"><i class="fa fa-user fa-fw"></i> 用户设置</a></li>
                    <li><a href="#"><i class="fa fa-gear fa-fw"></i> 系统设置</a></li>
                    <li class="divider"></li>
                    <li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i>
                        退出登录</a></li>
                </ul> <!-- /.dropdown-user --></li>
            <!-- /.dropdown -->
        </ul>
        <!-- /.navbar-top-links -->

        <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav navbar-collapse">
                <ul class="nav" id="side-menu">
                    <li class="sidebar-search">
                        <div class="input-group custom-search-form">
                            <input type="text" class="form-control" placeholder="查询内容...">
                            <span class="input-group-btn">
								<button class="btn btn-default" type="button">
									<i class="fa fa-search" style="padding: 3px 0 3px 0;"></i>
								</button>
							</span>
                        </div> <!-- /input-group -->
                    </li>
                    <li><a href="/customer/list.action" class="active"><i class="fa fa-user fa-fw"></i> 客户管理</a></li>
                    <li><a href="/guide/list.action"><i class="fa fa-child fa-fw"></i> 导游管理</a></li>
                    <li><a href="/line/list.action"><i class="fa fa-bus fa-fw"></i> 线路管理</a></li>
                    <li><a href="/user/list.action"><i class="fa fa-dashboard fa-fw"></i> 用户管理</a></li>
                </ul>
            </div>
            <!-- /.sidebar-collapse -->
        </div>
        <!-- /.navbar-static-side --> </nav>

    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">线路管理</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <div class="panel panel-default">
            <div class="panel-body">
                <form class="form-inline" action="${pageContext.request.contextPath }/line/list.action" method="post">
                    <div class="form-group">
                        <label for="lineName">线路名称</label>
                        <input type="text" class="form-control" id="lineName" value="${lineName }" name="lineName">
                    </div>
                    <div class="form-group">
                        <label for="lineType">线路类型</label>
                        <select	class="form-control" id="lineType" placeholder="线路类型" name="lineType">
                            <option value="">--请选择--</option>
                            <c:forEach items="${lineForm}" var="item">
                                <option value="${item.dict_id}"<c:if test="${item.dict_id == lineType}"> selected</c:if>>${item.dict_item_name }</option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="lineDes">目的地</label>
                        <select	class="form-control" id="lineDes"  name="lineDes">
                            <option value="">--请选择--</option>
                            <c:forEach items="${desType}" var="item">
                                <option value="${item.dict_id}"<c:if test="${item.dict_id == lineDes}"> selected</c:if>>${item.dict_item_name }</option>
                            </c:forEach>
                        </select>
                    </div>
                    <button type="submit" class="btn btn-primary">查询</button>
                    <a href="#" class="btn btn-primary" data-toggle="modal" data-target="#lineAddDialog" onclick="addLine(${row.line_id})">增加</a>
                </form>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">线路信息列表</div>
                    <!-- /.panel-heading -->
                    <table class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th>线路名称</th>
                            <th>线路类型</th>
                            <th>目的地</th>
                            <th>行程天数</th>
                            <th>人数</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${page.rows}" var="row">
                            <tr>
                                <td>${row.line_id}</td>
                                <td>${row.line_name}</td>
                                <td>${row.line_type}</td>
                                <td>${row.line_des}</td>
                                <td>${row.line_days}</td>
                                <td>${row.line_number}</td>
                                <td>
                                    <a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#lineEditDialog" onclick="editLine(${row.line_id})">修改</a>
                                    <a href="#" class="btn btn-danger btn-xs" onclick="deleteLine(${row.line_id})">删除</a>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    <div class="col-md-12 text-right">
                        <jhz:page url="${pageContext.request.contextPath }/line/list.action" />
                    </div>
                    <!-- /.panel-body -->
                </div>
                <!-- /.panel -->
            </div>
            <!-- /.col-lg-12 -->
        </div>
    </div>
    <!-- /#page-wrapper -->

</div>
<!-- 线路增加对话框 -->
<div class="modal fade" id="lineAddDialog" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel2">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModalLabel2">增加线路信息</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="add_line_form">
                    <input type="hidden" id="add_line_id" name="line_id"/>
                    <div class="form-group">
                        <label for="add_lineName" class="col-sm-2 control-label">线路名称</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="add_lineName" placeholder="线路名称" name="line_name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add_lineType" style="float:left;padding:7px 15px 0 27px;">线路类型</label>
                        <div class="col-sm-10">
                            <select	class="form-control" id="add_lineType" placeholder="线路类型" name="line_type">
                                <option value="">--请选择--</option>
                                <c:forEach items="${lineForm}" var="item">
                                    <option value="${item.dict_id}"<c:if test="${item.dict_id == lineType}"> selected</c:if>>${item.dict_item_name }</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add_lineDes" style="float:left;padding:7px 15px 0 27px;">目的地</label>
                        <div class="col-sm-10">
                            <select	class="form-control" id="add_lineDes"  name="line_des">
                                <option value="">--请选择--</option>
                                <c:forEach items="${desType}" var="item">
                                    <option value="${item.dict_id}"<c:if test="${item.dict_id == lineDes}"> selected</c:if>>${item.dict_item_name }</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add_days" class="col-sm-2 control-label">行程天数</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="add_days" placeholder="行程天数" name="line_days">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add_number" class="col-sm-2 control-label">人数</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="add_number" placeholder="人数" name="line_number">
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" onclick="addSaveLine()">保存修改</button>
            </div>
        </div>
    </div>
</div>

<!-- 线路编辑对话框 -->
<div class="modal fade" id="lineEditDialog" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModalLabel">修改线路信息</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="edit_line_form">
                    <input type="hidden" id="edit_line_id" name="line_id"/>
                    <div class="form-group">
                        <label for="edit_lineName" class="col-sm-2 control-label">线路名称</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="edit_lineName" placeholder="线路名称" name="line_name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit_lineType" style="float:left;padding:7px 15px 0 27px;">线路类型</label>
                        <div class="col-sm-10">
                            <select	class="form-control" id="edit_lineType" placeholder="线路类型" name="line_type">
                                <option value="">--请选择--</option>
                                <c:forEach items="${lineForm}" var="item">
                                    <option value="${item.dict_id}"<c:if test="${item.dict_id == lineType}"> selected</c:if>>${item.dict_item_name }</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit_lineDes" style="float:left;padding:7px 15px 0 27px;">目的地</label>
                        <div class="col-sm-10">
                            <select	class="form-control" id="edit_lineDes"  name="line_des">
                                <option value="">--请选择--</option>
                                <c:forEach items="${desType}" var="item">
                                    <option value="${item.dict_id}"<c:if test="${item.dict_id == lineDes}"> selected</c:if>>${item.dict_item_name }</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit_days" class="col-sm-2 control-label">行程天数</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="edit_days" placeholder="行程天数" name="line_days">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit_number" class="col-sm-2 control-label">人数</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="edit_number" placeholder="人数" name="line_number">
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" onclick="updateLine()">保存修改</button>
            </div>
        </div>
    </div>
</div>
<!-- /#wrapper -->

<!-- jQuery -->
<script src="/static/js/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="/static/js/bootstrap.min.js"></script>

<!-- Metis Menu Plugin JavaScript -->
<script src="/static/js/metisMenu.min.js"></script>

<!-- DataTables JavaScript -->
<script src="/static/js/jquery.dataTables.min.js"></script>
<script src="/static/js/dataTables.bootstrap.min.js"></script>

<!-- Custom Theme JavaScript -->
<script src="/static/js/sb-admin-2.js"></script>

<script type="text/javascript">
    function editLine(id) {
        $.ajax({
            type:"get",
            url:"<%=basePath%>line/edit.action",
            data:{"id":id},
            success:function(data) {
                $("#edit_line_id").val(data.line_id);
                $("#edit_lineName").val(data.line_name);
                $("#edit_lineType").val(data.line_type)
                $("#edit_lineDes").val(data.line_des)
                $("#edit_days").val(data.line_days);
                $("#edit_number").val(data.line_number);
            }
        });
    }
    function updateLine() {
        $.post("<%=basePath%>line/update.action",$("#edit_line_form").serialize(),function(data){
            alert("线路信息更新成功！");
            window.location.reload();
        });
    }

    function addLine(id) {
        $.ajax({
            type:"get",
            url:"<%=basePath%>line/add.action",
            data:{"id":id},
            success:function(data) {
                $("#add_line_id").val(data.line_id);
                $("#add_lineName").val(data.line_name);
                $("#add_lineType").val(data.line_type)
                $("#add_lineDes").val(data.line_des)
                $("#add_days").val(data.line_days);
                $("#add_number").val(data.line_number);
            }
        });
    }
    function addSaveLine() {
        $.post("<%=basePath%>line/addSave.action",$("#add_line_form").serialize(),function(data){
            alert("线路信息增加成功！");
            window.location.reload();
        });
    }

    function deleteLine(id) {
        if(confirm('确实要删除该线路吗?')) {
            $.post("<%=basePath%>line/delete.action",{"id":id},function(data){
                alert("线路删除成功！");
                window.location.reload();
            });
        }
    }
</script>

</body>

</html>

