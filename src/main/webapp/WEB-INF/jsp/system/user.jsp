<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../includes/taglib.jsp"%>

<title>用户管理</title>

<link rel="stylesheet" href="${ctx}/public/vendor/datatables-bootstrap/dataTables.bootstrap.css">
<link rel="stylesheet" href="${ctx}/public/vendor/datatables-responsive/dataTables.responsive.css">
<link rel="stylesheet" href="${ctx}/public/vendor/jstree/jstree.css">
<link rel="stylesheet" href="${ctx}/public/vendor/alertify-js/alertify.css">
<link rel="stylesheet" href="${ctx}/public/vendor/multi-select/multi-select.css">
<link rel="stylesheet" href="${ctx}/public/vendor/jquery-strength/jquery-strength.css">
<link rel="stylesheet" href="${ctx}/public/vendor/formvalidation/formValidation.css">
<link rel="stylesheet" href="${ctx}/public/css/system/user.css">

<div class="page page-full bg-white animation-fade page-users">
    <div class="page-aside">
        <div class="page-aside-switch">
            <i class="icon wb-chevron-left" aria-hidden="true"></i>
            <i class="icon wb-chevron-right" aria-hidden="true"></i>
        </div>
        <div class="page-aside-inner height-full" data-plugin="slimScroll">
            <div class="page-aside-section">
                <div class="list-group">
                    <a class="list-group-item active" href="javascript:;">
                        <span class="item-right" data-allUsers="${total}">${total}</span><i class="icon wb-tag" aria-hidden="true"></i>所有用户
                    </a>
                </div>
            </div>
            <div class="page-aside-section">
                <h5 class="page-aside-title">角色</h5>
                <div class="list-group has-actions role-contents">
                    <c:forEach items="${roleList}" var="role" varStatus="status">
						<div class="list-group-item" data-user="${role.count}" data-id="${role.roleId}" data-url="">
							<div class="list-content">
								<span class="item-right">${role.count}</span> <span class="list-text">${role.roleName}</span>
								<div class="item-actions">
									<span class="btn btn-pure btn-icon btn-edit" data-toggle="modal" data-target="#roleForm"><i class="icon wb-edit" aria-hidden="true"></i></span>
									<span class="btn btn-pure btn-icon" data-tag="list-delete"><i class="icon wb-close" aria-hidden="true"></i></span>
								</div>
							</div>
						</div>
					</c:forEach>                   
                </div>
                <script type="text/html" id="roleTpl">
                    <div class="list-group-item" data-user="0" data-id="{{role.id}}" data-url="">
                        <div class="list-content">
                            <span class="item-right">0</span> <span class="list-text">{{role.name}}</span>
                            <div class="item-actions">
                                <span class="btn btn-pure btn-icon btn-edit" data-toggle="modal" data-target="#roleForm"><i class="icon wb-edit" aria-hidden="true"></i></span>
                                <span class="btn btn-pure btn-icon" data-tag="list-delete"><i class="icon wb-close" aria-hidden="true"></i></span>
                            </div>
                        </div>
                    </div>
                </script>
            </div>
            <div class="page-aside-section hidden-xs">
                <a class="list-group-item" href="#" data-toggle="modal" data-target="#roleForm" id="addRoleToggle">
                    <i class="icon wb-plus" aria-hidden="true"></i> 添加新角色
                </a>
            </div>
        </div>
    </div>
    <div class="page-main">
        <div class="page-header">
            <h3 class="page-title">用户列表</h3>
        </div>
        <div class="page-content" id="user_tables">
            <table class="table table-bordered table-hover text-nowrap dataTable table-striped margin-vertical-10 width-full print-hidden-first-column print-hidden-last-column" data-selectable="selectable" data-column-defs='[{ "orderable": false, "targets": 0},{ "orderable": false, "targets": 6}]'>
                <thead>
                <tr>
                    <th width="20" data-order="false">
                        <span class="checkbox-custom checkbox-primary user-select-all">
                            <input type="checkbox" class="user-checkbox selectable-all">
                            <label></label>
                        </span>
                    </th>
                    <th>用户名</th>
                    <th>创建日期</th>
                    <th>最后登录</th>
                    <th>登录次数</th>
                    <th>登录IP</th>
                    <th>操作</th>
                </tr>
                </thead>
            </table>
        </div>
    </div>

    <div class="site-action">
        <button type="button" class="site-action-toggle btn-raised btn btn-success btn-floating">
            <i class="front-icon wb-plus animation-scale-up" aria-hidden="true" data-toggle="tooltip" data-placement="left" title="添加"></i>
            <i class="back-icon wb-close animation-scale-up" aria-hidden="true" data-toggle="tooltip" data-placement="left" title="关闭"></i>
        </button>
        <div class="site-action-buttons">
            <button type="button" data-action="delete" class="btn-raised btn btn-success btn-floating animation-slide-bottom" data-toggle="tooltip" data-placement="left" title="删除所选用户">
                <i class="icon wb-trash" aria-hidden="true"></i>
            </button>
            <button type="button" data-action="move" class="btn-raised btn btn-success btn-floating animation-slide-bottom" data-toggle="tooltip" data-placement="left" title="禁用所选用户">
                <i class="icon wb-lock" aria-hidden="true"></i>
            </button>
        </div>
    </div>
</div>

<div class="modal modal-fall modal-fill-in" id="userInfoForm" aria-hidden="true" aria-labelledby="userInfoForm" role="dialog" tabindex="-1">
    <div class="modal-dialog modal-center">
        <form class="modal-content" id="userAccountInfo">
            <div class="modal-header">
                <button type="button" class="close" aria-hidden="true" data-dismiss="modal">×</button>
                <h4 class="modal-title">用户信息</h4>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <input type="hidden" name="userId">
                    <input type="text" class="form-control" name="loginName" placeholder="用户名" value="" readonly="">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" name="password" placeholder="密码" data-plugin="strength">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" name="confirm" placeholder="确认密码">
                </div>
                <div class="form-group">
                    <select class="form-control multi-select-methods form-control" multiple="multiple" name="roleIds"></select>
                    <script type="text/html" id="userAuth">
                            {{each auth}}
                            <option value="{{$value.id}}" {{$value.permission | authVal}}>{{$value.text}}
                            </option>                            {{/each}}
                        </script>
                </div>
                <div class="form-group">
                    <div class="checkbox-custom checkbox-inline checkbox-primary">
                        <input type="checkbox" id="disabledUser1" name="state" value="NORMAL">
                        <label for="disabledUser1">禁用该用户</label>
                    </div>
                </div>
                <div class="form-group margin-top-25">
                    <button class="btn btn-primary margin-right-10" type="submit">保存</button>
                    <a class="btn btn-default" data-dismiss="modal">取消</a>
                </div>
            </div>
        </form>
    </div>
</div>

<div class="modal fade" id="roleForm" aria-hidden="true" aria-labelledby="roleForm" role="dialog" tabindex="-1">
    <div class="modal-dialog modal-center">
        <form class="modal-content" id="roleInfo">
            <div class="modal-header">
                <button type="button" class="close" aria-hidden="true" data-dismiss="modal">×</button>
                <h4 class="modal-title">角色信息</h4>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <label class="control-label">角色名称：</label>
                    <input type="text" class="form-control" name="roleName">
                </div>
                <div class="form-group">
                    <label class="control-label">权限分配：</label>
                    <div class="treeview-box">
                        <div class="treeview-tools clearfix">
                            <div class="btn-group btn-group-sm pull-right" role="group">
                                <button type="button" class="btn btn-icon btn-outline btn-default btn-unfold">
                                    <i class="icon fa-angle-down"></i></button>
                                <button type="button" class="btn btn-icon btn-outline btn-default btn-fold">
                                    <i class="icon fa-angle-up"></i></button>
                            </div>
                            <div class="pull-left">
                                <div class="input-search">
                                    <button type="button" class="input-search-btn">
                                        <i class="icon wb-search" aria-hidden="true"></i></button>
                                    <input type="text" class="form-control input-sm" name="jstree_search" placeholder="快速查找...">
                                </div>
                            </div>
                        </div>
                        <div class="pagetree margin-top-10">
                            <div data-plugin="slimScroll">
                            	<div data-plugin="treeview"></div>
                            </div>
                            <input type="hidden" name="roleId">
                            <input type="hidden" name="roleAuth">
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button class="btn btn-primary btn-treeview" type="submit">保存</button>
                <a class="btn btn-default" data-dismiss="modal">取消</a>
            </div>
        </form>
    </div>
</div>

<script src="${ctx}/public/vendor/datatables/jquery.dataTables.min.js" data-name="dataTables"></script>
<script src="${ctx}/public/vendor/datatables-bootstrap/dataTables.bootstrap.min.js" data-deps="dataTables"></script>
<script src="${ctx}/public/vendor/datatables-responsive/dataTables.responsive.min.js" data-deps="dataTables"></script>
<script src="${ctx}/public/vendor/datatables-buttons/dataTables.buttons.min.js" data-deps="dataTables"></script>
<script src="${ctx}/public/vendor/datatables-buttons/buttons.print.min.js"></script>
<script src="${ctx}/public/vendor/datatables-buttons/buttons.html5.min.js"></script>
<script src="${ctx}/public/vendor/jszip/jszip.min.js"></script>
<script src="${ctx}/public/vendor/jstree/jstree.min.js"></script>
<script src="${ctx}/public/vendor/alertify-js/alertify.min.js"></script>
<script src="${ctx}/public/vendor/jquery-strength/jquery-strength.min.js"></script>
<script src="${ctx}/public/vendor/multi-select/jquery.multi-select.min.js"></script>
<script src="${ctx}/public/vendor/formvalidation/formValidation.min.js" data-name="formValidation"></script>
<script src="${ctx}/public/vendor/formvalidation/framework/bootstrap.min.js" data-deps="formValidation"></script>
<script src="${ctx}/public/themes/classic/global/js/plugins/sticky-header.js"></script>
<script src="${ctx}/public/themes/classic/global/js/plugins/action-btn.js"></script>
<script src="${ctx}/public/themes/classic/global/js/plugins/selectable.js"></script>
<script src="${ctx}/public/themes/classic/base/js/app.js" data-name="app"></script>
<script src="${ctx}/public/js/system/user.js" data-deps="app"></script>
