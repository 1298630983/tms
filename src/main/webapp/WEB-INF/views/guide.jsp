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

    <title>导游列表</title>

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
                <h1 class="page-header">导游管理</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <div class="panel panel-default">
            <div class="panel-body">
                <form class="form-inline" action="${pageContext.request.contextPath }/guide/list.action" method="post">
                    <div class="form-group">
                        <label for="guideName">导游姓名</label>
                        <input type="text" class="form-control" id="guideName" value="${guideName }" name="guideName">
                    </div>
                    <div class="form-group">
                        <label for="guideLevel">导游等级</label>
                        <select	class="form-control" id="guideLevel" placeholder="导游等级" name="guideLevel">
                            <option value="">--请选择--</option>
                            <c:forEach items="${levelType}" var="item">
                                <option value="${item.dict_id}"<c:if test="${item.dict_id == guideLevel}"> selected</c:if>>${item.dict_item_name }</option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="guideLanguage">导游语种</label>
                        <select	class="form-control" id="guideLanguage"  name="guideLanguage">
                            <option value="">--请选择--</option>
                            <c:forEach items="${languageType}" var="item">
                                <option value="${item.dict_id}"<c:if test="${item.dict_id == guideLanguage}"> selected</c:if>>${item.dict_item_name }</option>
                            </c:forEach>
                        </select>
                    </div>
                    <button type="submit" class="btn btn-primary">查询</button>
                    <a href="#" class="btn btn-primary" data-toggle="modal" data-target="#guideAddDialog" onclick="addGuide(${row.guide_id})">增加</a>
                </form>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">导游信息列表</div>
                    <!-- /.panel-heading -->
                    <table class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th>导游姓名</th>
                            <th>导游等级</th>
                            <th>导游语种</th>
                            <th>固定电话</th>
                            <th>手机</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${page.rows}" var="row">
                            <tr>
                                <td>${row.guide_id}</td>
                                <td>${row.guide_name}</td>
                                <td>${row.guide_level}</td>
                                <td>${row.guide_language}</td>
                                <td>${row.guide_phone}</td>
                                <td>${row.guide_mobile}</td>
                                <td>
                                    <a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#guideEditDialog" onclick="editGuide(${row.guide_id})">修改</a>
                                    <a href="#" class="btn btn-danger btn-xs" onclick="deleteGuide(${row.guide_id})">删除</a>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    <div class="col-md-12 text-right">
                        <jhz:page url="${pageContext.request.contextPath }/guide/list.action" />
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
<!-- 导游增加对话框 -->
<div class="modal fade" id="guideAddDialog" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel2">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModalLabel2">增加导游信息</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="add_guide_form">
                    <input type="hidden" id="add_guide_id" name="guide_id"/>
                    <div class="form-group">
                        <label for="add_guideName" class="col-sm-2 control-label">导游姓名</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="add_guideName" placeholder="导游姓名" name="guide_name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add_guideLevel" style="float:left;padding:7px 15px 0 27px;">导游等级</label>
                        <div class="col-sm-10">
                            <select	class="form-control" id="add_guideLevel" placeholder="导游等级" name="guide_level">
                                <option value="">--请选择--</option>
                                <c:forEach items="${levelType}" var="item">
                                    <option value="${item.dict_id}"<c:if test="${item.dict_id == guideLevel}"> selected</c:if>>${item.dict_item_name }</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add_guideLanguage" style="float:left;padding:7px 15px 0 27px;">导游语种</label>
                        <div class="col-sm-10">
                            <select	class="form-control" id="add_guideLanguage"  name="guide_language">
                                <option value="">--请选择--</option>
                                <c:forEach items="${languageType}" var="item">
                                    <option value="${item.dict_id}"<c:if test="${item.dict_id == guideLanguage}"> selected</c:if>>${item.dict_item_name }</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add_phone" class="col-sm-2 control-label">固定电话</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="add_phone" placeholder="固定电话" name="guide_phone">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add_mobile" class="col-sm-2 control-label">移动电话</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="add_mobile" placeholder="移动电话" name="guide_mobile">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add_address" class="col-sm-2 control-label">联系地址</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="add_address" placeholder="联系地址" name="guide_address">
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" onclick="addSaveGuide()">保存修改</button>
            </div>
        </div>
    </div>
</div>

<!-- 导游编辑对话框 -->
<div class="modal fade" id="guideEditDialog" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModalLabel">修改导游信息</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="edit_guide_form">
                    <input type="hidden" id="edit_guide_id" name="guide_id"/>
                    <div class="form-group">
                        <label for="edit_guideName" class="col-sm-2 control-label">导游姓名</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="edit_guideName" placeholder="导游姓名" name="guide_name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit_guideLevel" style="float:left;padding:7px 15px 0 27px;">导游等级</label>
                        <div class="col-sm-10">
                            <select	class="form-control" id="edit_guideLevel" placeholder="导游等级" name="guide_level">
                                <option value="">--请选择--</option>
                                <c:forEach items="${levelType}" var="item">
                                    <option value="${item.dict_id}"<c:if test="${item.dict_id == guideLevel}"> selected</c:if>>${item.dict_item_name }</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit_guideLanguage" style="float:left;padding:7px 15px 0 27px;">导游语种</label>
                        <div class="col-sm-10">
                            <select	class="form-control" id="edit_guideLanguage"  name="guide_language">
                                <option value="">--请选择--</option>
                                <c:forEach items="${languageType}" var="item">
                                    <option value="${item.dict_id}"<c:if test="${item.dict_id == guideLanguage}"> selected</c:if>>${item.dict_item_name }</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit_phone" class="col-sm-2 control-label">固定电话</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="edit_phone" placeholder="固定电话" name="guide_phone">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit_mobile" class="col-sm-2 control-label">移动电话</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="edit_mobile" placeholder="移动电话" name="guide_mobile">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit_address" class="col-sm-2 control-label">联系地址</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="edit_address" placeholder="联系地址" name="guide_address">
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" onclick="updateGuide()">保存修改</button>
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
    function editGuide(id) {
        $.ajax({
            type:"get",
            url:"<%=basePath%>guide/edit.action",
            data:{"id":id},
            success:function(data) {
                $("#edit_guide_id").val(data.guide_id);
                $("#edit_guideName").val(data.guide_name);
                $("#edit_guideLevel").val(data.guide_level)
                $("#edit_guideLanguage").val(data.guide_language)
                $("#edit_phone").val(data.guide_phone);
                $("#edit_mobile").val(data.guide_mobile);
                $("#edit_address").val(data.guide_address);

            }
        });
    }
    function updateGuide() {
        $.post("<%=basePath%>guide/update.action",$("#edit_guide_form").serialize(),function(data){
            alert("导游信息更新成功！");
            window.location.reload();
        });
    }

    function addGuide(id) {
        $.ajax({
            type:"get",
            url:"<%=basePath%>guide/add.action",
            data:{"id":id},
            success:function(data) {
                $("#add_guide_id").val(data.guide_id);
                $("#add_guideName").val(data.guide_name);
                $("#add_guideLevel").val(data.guide_level)
                $("#add_guideLanguage").val(data.guide_language)
                $("#add_phone").val(data.guide_phone);
                $("#add_mobile").val(data.guide_mobile);
                $("#add_address").val(data.guide_address);

            }
        });
    }
    function addSaveGuide() {
        $.post("<%=basePath%>guide/addSave.action",$("#add_guide_form").serialize(),function(data){
            alert("导游信息增加成功！");
            window.location.reload();
        });
    }

    function deleteGuide(id) {
        if(confirm('确实要删除该导游吗?')) {
            $.post("<%=basePath%>guide/delete.action",{"id":id},function(data){
                alert("导游删除成功！");
                window.location.reload();
            });
        }
    }
</script>

</body>

</html>

