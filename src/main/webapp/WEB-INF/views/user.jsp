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

    <title>用户列表</title>

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
                <h1 class="page-header">用户管理</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <div class="panel panel-default">
            <div class="panel-body">
                <form class="form-inuser" action="${pageContext.request.contextPath }/user/list.action" method="post">
                    <div class="form-group">
                        <label for="userName">用户姓名</label>
                        <input type="text" class="form-control" id="userName" value="${userName }" name="userName">
                    </div>
                    <div class="form-group">
                        <label for="userDep">用户部门</label>
                        <select	class="form-control" id="userDep" placeholder="用户部门" name="userDep">
                            <option value="">--请选择--</option>
                            <c:forEach items="${depType}" var="item">
                                <option value="${item.dict_id}"<c:if test="${item.dict_id == userDep}"> selected</c:if>>${item.dict_item_name }</option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="userLevel">用户级别</label>
                        <select	class="form-control" id="userLevel"  name="userLevel">
                            <option value="">--请选择--</option>
                            <c:forEach items="${levelType}" var="item">
                                <option value="${item.dict_id}"<c:if test="${item.dict_id == userLevel}"> selected</c:if>>${item.dict_item_name }</option>
                            </c:forEach>
                        </select>
                    </div>
                    <button type="submit" class="btn btn-primary">查询</button>
                    <a href="#" class="btn btn-primary" data-toggle="modal" data-target="#userAddDialog" onclick="addUser(${row.user_id})">增加</a>
                </form>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">用户信息列表</div>
                    <!-- /.panel-heading -->
                    <table class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th>用户姓名</th>
                            <th>用户部门</th>
                            <th>用户级别</th>
                            <th>身份证</th>
                            <th>手机号</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${page.rows}" var="row">
                            <tr>
                                <td>${row.user_id}</td>
                                <td>${row.user_name}</td>
                                <td>${row.user_dep}</td>
                                <td>${row.user_level}</td>
                                <td>${row.user_doc}</td>
                                <td>${row.user_mobile}</td>
                                <td>
                                    <a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#userEditDialog" onclick="editUser(${row.user_id})">修改</a>
                                    <a href="#" class="btn btn-danger btn-xs" onclick="deleteUser(${row.user_id})">删除</a>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    <div class="col-md-12 text-right">
                        <jhz:page url="${pageContext.request.contextPath }/user/list.action" />
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
<!-- 用户增加对话框 -->
<div class="modal fade" id="userAddDialog" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel2">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModalLabel2">增加用户信息</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="add_user_form">
                    <input type="hidden" id="add_user_id" name="user_id"/>
                    <div class="form-group">
                        <label for="add_userName" class="col-sm-2 control-label">用户名</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="add_userName" placeholder="用户名" name="user_name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add_userPwd" class="col-sm-2 control-label">密码</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="add_userPwd" placeholder="密码" name="user_pwd">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add_userDep" style="float:left;padding:7px 15px 0 27px;">用户部门</label>
                        <div class="col-sm-10">
                            <select	class="form-control" id="add_userDep" placeholder="用户部门" name="user_dep">
                                <option value="">--请选择--</option>
                                <c:forEach items="${depType}" var="item">
                                    <option value="${item.dict_id}"<c:if test="${item.dict_id == userDep}"> selected</c:if>>${item.dict_item_name }</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add_userLevel" style="float:left;padding:7px 15px 0 27px;">用户级别</label>
                        <div class="col-sm-10">
                            <select	class="form-control" id="add_userLevel"  name="user_level">
                                <option value="">--请选择--</option>
                                <c:forEach items="${levelType}" var="item">
                                    <option value="${item.dict_id}"<c:if test="${item.dict_id == userLevel}"> selected</c:if>>${item.dict_item_name }</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add_doc" class="col-sm-2 control-label">身份证</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="add_doc" placeholder="身份证" name="user_doc">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add_mobile" class="col-sm-2 control-label">手机号</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="add_mobile" placeholder="手机号" name="user_mobile">
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" onclick="addSaveUser()">保存修改</button>
            </div>
        </div>
    </div>
</div>

<!-- 用户编辑对话框 -->
<div class="modal fade" id="userEditDialog" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModalLabel">修改用户信息</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="edit_user_form">
                    <input type="hidden" id="edit_user_id" name="user_id"/>
                    <div class="form-group">
                        <label for="edit_userName" class="col-sm-2 control-label">用户名</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="edit_userName" placeholder="用户名" name="user_name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit_userPwd" class="col-sm-2 control-label">密码</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="edit_userPwd" placeholder="密码" name="user_pwd">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit_userDep" style="float:left;padding:7px 15px 0 27px;">用户部门</label>
                        <div class="col-sm-10">
                            <select	class="form-control" id="edit_userDep" placeholder="用户部门" name="user_dep">
                                <option value="">--请选择--</option>
                                <c:forEach items="${depType}" var="item">
                                    <option value="${item.dict_id}"<c:if test="${item.dict_id == userDep}"> selected</c:if>>${item.dict_item_name }</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit_userLevel" style="float:left;padding:7px 15px 0 27px;">用户级别</label>
                        <div class="col-sm-10">
                            <select	class="form-control" id="edit_userLevel"  name="user_level">
                                <option value="">--请选择--</option>
                                <c:forEach items="${levelType}" var="item">
                                    <option value="${item.dict_id}"<c:if test="${item.dict_id == userLevel}"> selected</c:if>>${item.dict_item_name }</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit_doc" class="col-sm-2 control-label">身份证</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="edit_doc" placeholder="身份证" name="user_doc">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit_mobile" class="col-sm-2 control-label">手机号</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="edit_mobile" placeholder="手机号" name="user_mobile">
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" onclick="updateUser()">保存修改</button>
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
    function editUser(id) {
        $.ajax({
            type:"get",
            url:"<%=basePath%>user/edit.action",
            data:{"id":id},
            success:function(data) {
                $("#edit_user_id").val(data.user_id);
                $("#edit_userName").val(data.user_name);
                $("#edit_userPwd").val(data.user_pwd);
                $("#edit_userDep").val(data.user_dep);
                $("#edit_userLevel").val(data.user_level);
                $("#edit_doc").val(data.user_doc);
                $("#edit_mobile").val(data.user_mobile);
            }
        });
    }
    function updateUser() {
        $.post("<%=basePath%>user/update.action",$("#edit_user_form").serialize(),function(data){
            alert("用户信息更新成功！");
            window.location.reload();
        });
    }

    function addUser(id) {
        $.ajax({
            type:"get",
            url:"<%=basePath%>user/add.action",
            data:{"id":id},
            success:function(data) {
                $("#add_user_id").val(data.user_id);
                $("#add_userName").val(data.user_name);
                $("#edit_userPwd").val(data.user_pwd);
                $("#add_userDep").val(data.user_dep);
                $("#add_userLevel").val(data.user_level);
                $("#add_doc").val(data.user_doc);
                $("#add_mobile").val(data.user_mobile);
            }
        });
    }
    function addSaveUser() {
        $.post("<%=basePath%>user/addSave.action",$("#add_user_form").serialize(),function(data){
            alert("用户信息增加成功！");
            window.location.reload();
        });
    }

    function deleteUser(id) {
        if(confirm('确实要删除该用户吗?')) {
            $.post("<%=basePath%>user/delete.action",{"id":id},function(data){
                alert("用户删除成功！");
                window.location.reload();
            });
        }
    }
</script>

</body>

</html>

