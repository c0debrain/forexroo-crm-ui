<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../../includes/taglib.jsp"%>

<title>团队协作型</title>

<link rel="stylesheet" href="${ctx}/public/vendor/chartist-js/chartist.css">
<link rel="stylesheet" href="${ctx}/public/vendor/chartist-plugin-tooltip/chartist-plugin-tooltip.css">
<link rel="stylesheet" href="${ctx}/public/vendor/jquery-selective/jquery-selective.css">
<link rel="stylesheet" href="${ctx}/public/vendor/bootstrap-datepicker/bootstrap-datepicker.css">
<link rel="stylesheet" href="${ctx}/public/css/examples/pages/home/team.css">

<div class="page animation-fade page-team">
    <div class="page-content padding-30 container-fluid">
        <div class="row" data-plugin="matchHeight" data-by-row="true">


            <div class="col-xlg-3 col-lg-12">
                <div class="row height-full" data-plugin="matchHeight">
                    <div class="col-xlg-12 col-lg-4 col-sm-4 col-xs-12">
                        <div class="widget widget-shadow widget-completed-options">
                            <div class="widget-content padding-30">
                                <div class="row">
                                    <div class="col-xs-6">
                                        <div class="counter text-left blue-grey-700">
                                            <div class="counter-label margin-top-10">任务一完成
                                            </div>
                                            <div class="counter-number font-size-40 margin-top-10">
                                                1,234
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6">
                                        <div class="pie-progress pie-progress-sm" data-valuemax="100" data-barcolor="#57c7d4" data-size="100" data-barsize="10" data-goal="86" aria-valuenow="86" role="progressbar">
                                            <span class="pie-progress-number blue-grey-700 font-size-20">86%</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xlg-12 col-lg-4 col-sm-4 col-xs-12">
                        <div class="widget widget-shadow widget-completed-options">
                            <div class="widget-content padding-30">
                                <div class="row">
                                    <div class="col-xs-6">
                                        <div class="counter text-left blue-grey-700">
                                            <div class="counter-label margin-top-10">任务二完成
                                            </div>
                                            <div class="counter-number font-size-40 margin-top-10">
                                                698
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6">
                                        <div class="pie-progress pie-progress-sm" data-valuemax="100" data-barcolor="#62a8ea" data-size="100" data-barsize="10" data-goal="62" aria-valuenow="62" role="progressbar">
                                            <span class="pie-progress-number blue-grey-700 font-size-20">62%</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xlg-12 col-lg-4 col-sm-4 col-xs-12">
                        <div class="widget widget-shadow widget-completed-options">
                            <div class="widget-content padding-30">
                                <div class="row">
                                    <div class="col-xs-6">
                                        <div class="counter text-left blue-grey-700">
                                            <div class="counter-label margin-top-10">任务三完成
                                            </div>
                                            <div class="counter-number font-size-40 margin-top-10">
                                                1,358
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6">
                                        <div class="pie-progress pie-progress-sm" data-valuemax="100" data-barcolor="#926dde" data-size="100" data-barsize="10" data-goal="56" aria-valuenow="56" role="progressbar">
                                            <span class="pie-progress-number blue-grey-700 font-size-20">56%</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-12 col-xlg-9">
                <div id="teamCompletedWidget" class="widget widget-shadow example-responsive">
                    <div class="widget-content padding-20 padding-bottom-25">
                        <div class="row padding-bottom-40" data-plugin="matchHeight">
                            <div class="col-md-6 col-sm-12">
                                <div class="counter text-left padding-left-10">
                                    <div class="counter-label">团队任务完成情况</div>
                                    <div class="counter-number-group text-truncate">
                                        <span>1,439</span> <span>86%</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-12">
                                <ul class="list-inline margin-right-50">
                                    <li>
                                        任务一
                                    </li>
                                    <li>
                                        任务二
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="ct-chart"></div>
                    </div>
                </div>
            </div>


            <div class="col-xlg-4 col-lg-6 col-md-6">
                <div id="personalCompletedWidget" class="widget widget-shadow padding-bottom-20">
                    <div class="widget-header cover overlay">
                        <img class="cover-image" src="${ctx}/public/images/placeholder.png">
                        <div class="overlay-panel overlay-background vertical-align">
                            <div class="vertical-align-middle">
                                <a class="avatar" href="javascript:;">
                                    <img alt="" src="${ctx}/public/images/portraits/4.jpg">
                                </a>
                                <div class="font-size-20 margin-top-10">吕佳</div>
                                <div class="font-size-14">lv.jia@163.com</div>
                            </div>
                        </div>
                    </div>
                    <div class="widget-content">
                        <div class="row text-center margin-bottom-20">
                            <div class="col-xs-6">
                                <div class="counter">
                                    <div class="counter-label total-completed">总完成</div>
                                    <div class="counter-number red-600">8</div>
                                </div>
                            </div>
                            <div class="col-xs-6">
                                <div class="counter">
                                    <div class="counter-label">总用时</div>
                                    <div class="counter-number blue-600">17</div>
                                </div>
                            </div>
                        </div>
                        <div class="table-responsive">
                            <table class="table">
                                <caption>日报</caption>
                                <tbody>
                                <tr>
                                    <td>
                                        任务一
                                    </td>
                                    <td>
                                        <div class="progress progress-xs margin-bottom-0">
                                            <div class="progress-bar progress-bar-info bg-blue-600" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100" style="width: 90%"></div>
                                        </div>
                                    </td>
                                    <td>
                                        90%
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        任务二
                                    </td>
                                    <td>
                                        <div class="progress progress-xs margin-bottom-0">
                                            <div class="progress-bar progress-bar-info bg-green-600" role="progressbar" aria-valuenow="86" aria-valuemin="0" aria-valuemax="100" style="width: 86%"></div>
                                        </div>
                                    </td>
                                    <td>
                                        86%
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        任务三
                                    </td>
                                    <td>
                                        <div class="progress progress-xs margin-bottom-0">
                                            <div class="progress-bar progress-bar-info bg-red-600" role="progressbar" aria-valuenow="68" aria-valuemin="0" aria-valuemax="100" style="width: 68%"></div>
                                        </div>
                                    </td>
                                    <td>
                                        68%
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>


            <div class="col-xlg-4 col-lg-6 col-md-6">
                <div id="toDoListWidget" class="widget widget-shadow padding-bottom-20">
                    <div class="widget-header">
                        <a id="addNewItemBtn" href="javascript:;" class="add-item-toggle pull-right">
                            <i class="icon wb-plus" aria-hidden="true"></i></a>
                        <h5 class="widget-title">待办事项</h5>
                    </div>
                    <ul class="list-group">
                        <li class="list-group-item">
                            <div class="checkbox-custom checkbox-success checkbox-lg">
                                <input type="checkbox" name="checkbox" checked="checked">
                                <label class="item-title">会议室开总结大会</label>
                            </div>
                            <div class="item-due-date">
                                <span>9.12</span>
                            </div>
                            <ul class="item-members">
                                <li>
                                    <img class="avatar avatar-sm" src="${ctx}/public/images/portraits/3.jpg">
                                    <button class="btn btn-sm btn-icon btn-default btn-outline btn-round">
                                        <i class="icon wb-pencil" aria-hidden="true"></i>
                                    </button>
                                </li>
                            </ul>
                        </li>
                        <li class="list-group-item">
                            <div class="checkbox-custom checkbox-success checkbox-lg">
                                <input type="checkbox" name="checkbox" checked="checked">
                                <label class="item-title">确定 X 项目的原型图</label>
                            </div>
                            <div class="item-due-date">
                                <span>9.12</span>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="checkbox-custom checkbox-success checkbox-lg">
                                <input type="checkbox" name="checkbox">
                                <label class="item-title">修复不支持IE6的问题</label>
                            </div>
                            <div class="item-due-date">
                                <span>未确定日期</span>
                            </div>
                            <ul class="item-members">
                                <li>
                                    <img class="avatar avatar-sm" src="${ctx}/public/images/portraits/1.jpg">
                                    <button class="btn btn-sm btn-icon btn-default btn-outline btn-round">
                                        <i class="icon wb-pencil" aria-hidden="true"></i>
                                    </button>
                                </li>
                                <li>
                                    <img class="avatar avatar-sm" src="${ctx}/public/images/portraits/5.jpg">
                                    <button class="btn btn-sm btn-icon btn-default btn-outline btn-round">
                                        <i class="icon wb-pencil" aria-hidden="true"></i>
                                    </button>
                                </li>
                            </ul>
                        </li>
                        <li class="list-group-item">
                            <div class="checkbox-custom checkbox-success checkbox-lg">
                                <input type="checkbox" name="checkbox">
                                <label class="item-title">修复Bug</label>
                            </div>
                            <div class="item-due-date">
                                <span>9.15</span>
                            </div>
                            <ul class="item-members">
                                <li>
                                    <button class="btn btn-sm btn-icon btn-default btn-outline btn-round">
                                        <i class="icon wb-pencil" aria-hidden="true"></i>
                                    </button>
                                </li>
                            </ul>
                        </li>
                        <li class="list-group-item">
                            <div class="checkbox-custom checkbox-success checkbox-lg">
                                <input type="checkbox" name="checkbox">
                                <label class="item-title">汇报 X 项目的进展</label>
                            </div>
                            <div class="item-due-date">
                                <span>9.15</span>
                            </div>
                            <ul class="item-members">
                                <li>
                                    <img class="avatar avatar-sm" src="${ctx}/public/images/portraits/4.jpg">
                                    <button class="btn btn-sm btn-icon btn-default btn-outline btn-round">
                                        <i class="icon wb-pencil" aria-hidden="true"></i>
                                    </button>
                                </li>
                                <li>
                                    <img class="avatar avatar-sm" src="${ctx}/public/images/portraits/6.jpg">
                                    <button class="btn btn-sm btn-icon btn-default btn-outline btn-round">
                                        <i class="icon wb-pencil" aria-hidden="true"></i>
                                    </button>
                                </li>
                                <li>
                                    <img class="avatar avatar-sm" src="${ctx}/public/images/portraits/7.jpg">
                                    <button class="btn btn-sm btn-icon btn-default btn-outline btn-round">
                                        <i class="icon wb-pencil" aria-hidden="true"></i>
                                    </button>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>


            <div class="col-xlg-4 col-md-12">
                <div id="recentActivityWidget" class="widget widget-shadow padding-bottom-20">
                    <div class="widget-header">
                        <span class="label label-default label-round pull-right">查看所有</span>
                        <h5 class="widget-title">
                            近期动态 </h5>
                    </div>
                    <ul class="timeline timeline-icon">
                        <li class="timeline-reverse">
                            <div class="timeline-content-wrap">
                                <div class="timeline-dot bg-green-600">
                                    <i class="icon wb-chat" aria-hidden="true"></i>
                                </div>
                                <div class="timeline-content">
                                    <div class="title">
                                        <span class="authors">南学斌</span> 指派了新任务
                                    </div>
                                    <div class="metas">
                                        14 分钟前
                                    </div>
                                    <ul class="members">
                                        <li>
                                            <img class="avatar avatar-sm" src="${ctx}/public/images/portraits/7.jpg">
                                        </li>
                                        <li>
                                            <img class="avatar avatar-sm" src="${ctx}/public/images/portraits/6.jpg">
                                        </li>
                                        <li>
                                            <img class="avatar avatar-sm" src="${ctx}/public/images/portraits/8.jpg">
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li class="timeline-reverse">
                            <div class="timeline-content-wrap">
                                <div class="timeline-dot bg-blue-600">
                                    <i class="icon wb-image" aria-hidden="true"></i>
                                </div>
                                <div class="timeline-content">
                                    <div class="title">
                                        <span class="authors">吕佳</span> 上传了 3 张图片
                                    </div>
                                    <div class="metas">
                                        2 小时前
                                    </div>
                                    <ul class="photos">
                                        <li class="cover">
                                            <img class="cover-image" src="${ctx}/public/images/photos/animal-4.jpg">
                                        </li>
                                        <li class="cover">
                                            <img class="cover-image" src="${ctx}/public/images/photos/animal-2.jpg">
                                        </li>
                                        <li class="cover">
                                            <img class="cover-image" src="${ctx}/public/images/photos/animal-3.jpg">
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li class="timeline-reverse">
                            <div class="timeline-content-wrap">
                                <div class="timeline-dot bg-cyan-600">
                                    <i class="icon wb-file" aria-hidden="true"></i>
                                </div>
                                <div class="timeline-content">
                                    <div class="title">
                                        <span class="authors">赵烁利</span> 上传了工作日报
                                    </div>
                                    <div class="metas">
                                        4 小时前
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="timeline-reverse">
                            <div class="timeline-content-wrap">
                                <div class="timeline-dot bg-orange-600">
                                    <i class="icon wb-map" aria-hidden="true"></i>
                                </div>
                                <div class="timeline-content">
                                    <div class="title">
                                        <span class="authors">付于倩</span> 提交了武汉出差申请
                                    </div>
                                    <div class="metas">
                                        3 小时前
                                    </div>
                                    <ul class="operates">
                                        <li>
                                            <button class="btn btn-outline btn-success btn-round">同意</button>
                                        </li>
                                        <li>
                                            <button class="btn btn-outline btn-danger btn-round">拒绝</button>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>


        </div>
    </div>
</div>

<div id="addtodoItemForm" class="modal fade in" tabindex="-1" role="dialog" aria-labelledby="addtodoItemForm" aria-hidden="true">
    <div class="modal-dialog">
        <form class="modal-content form-horizontal" role="form" action="#" method="post">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="moadl-title">创建新任务</h4>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="title">标题：</label>
                    <div class="col-sm-10">
                        <input id="title" class="form-control" type="text" name="title">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="dueDate">完成日期：</label>
                    <div class="col-sm-10">
                        <div class="input-group">
                            <input id="dueDate" class="form-control" type="text" data-plugin="datepicker" data-language="zh-CN" data-container="#addtodoItemForm">
                            <span class="input-group-addon">
                                <i class="icon wb-calendar" aria-hidden="true"></i>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="people">人员：</label>
                    <div class="col-sm-10">
                        <select id="people" multiple="multiple" data-plugin="jquery-selective"></select>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <div class="form-actions">
                    <button class="btn btn-primary" data-dismiss="modal" type="button">
                        添加
                    </button>
                    <a class="btn btn-sm btn-white" data-dismiss="modal" href="javascript:;"> 取消</a>
                </div>
            </div>
        </form>
    </div>
</div>

<div class="modal fade" id="edittodoItemForm" aria-hidden="true" aria-labelledby="edittodoItemForm" role="dialog" tabindex="-1" data-show="false">
    <div class="modal-dialog">
        <form class="modal-content form-horizontal" action="#" method="post" role="form">
            <div class="modal-header">
                <button type="button" class="close" aria-hidden="true" data-dismiss="modal">×</button>
                <h4 class="modal-title">编辑任务列表</h4>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="editTitle">标题：</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="editTitle" name="editTitle">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="editDueDate">完成日期：</label>
                    <div class="col-sm-10">
                        <div class="input-group">
                            <input type="text" class="form-control" id="editDueDate" name="editDueDate" data-container="#edittodoItemForm" data-plugin="datepicker" data-language="zh-CN">
                            <span class="input-group-addon">
                                <i class="icon wb-calendar" aria-hidden="true"></i>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="editPeople">人员：</label>
                    <div class="col-sm-10">
                        <select id="editPeople" multiple="multiple" data-plugin="jquery-selective"></select>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <div class="form-actions">
                    <button class="btn btn-primary" data-dismiss="modal" type="button">保存</button>
                    <button class="btn btn-danger" data-dismiss="modal" type="button">删除</button>
                    <a class="btn btn-sm btn-white" data-dismiss="modal" href="javascript:;">取消</a>
                </div>
            </div>
        </form>
    </div>
</div>

<script src="${ctx}/public/vendor/chartist-js/chartist.js" data-name="chartist"></script>
<script src="${ctx}/public/vendor/chartist-plugin-tooltip/chartist-plugin-tooltip.js" data-deps="chartist"></script>
<script src="${ctx}/public/vendor/matchheight/jquery.matchHeight.min.js"></script>
<script src="${ctx}/public/vendor/jquery-selective/jquery-selective.min.js"></script>
<script src="${ctx}/public/vendor/bootstrap-datepicker/bootstrap-datepicker.min.js" data-name="datepicker"></script>
<script src="${ctx}/public/vendor/bootstrap-datepicker/locales/bootstrap-datepicker.zh-CN.min.js" data-deps="datepicker"></script>
<script src="${ctx}/public/js/examples/pages/home/team.js"></script>