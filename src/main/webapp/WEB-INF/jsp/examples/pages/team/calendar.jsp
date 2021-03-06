<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../../includes/taglib.jsp"%>

<title>日历</title>

<link rel="stylesheet" href="${ctx}/public/vendor/fullcalendar/fullcalendar.css">
<link rel="stylesheet" href="${ctx}/public/vendor/bootstrap-datepicker/bootstrap-datepicker.css">
<link rel="stylesheet" href="${ctx}/public/vendor/bootstrap-touchspin/bootstrap-touchspin.css">
<link rel="stylesheet" href="${ctx}/public/vendor/jquery-selective/jquery-selective.css">
<link rel="stylesheet" href="${ctx}/public/css/examples/pages/team//calendar.css">

<div class="page page-full animation-fade page-calendar">
    <div class="page-aside">
        <div class="page-aside-switch">
            <i class="icon wb-chevron-left" aria-hidden="true"></i>
            <i class="icon wb-chevron-right" aria-hidden="true"></i>
        </div>
        <div class="page-aside-inner height-full" data-plugin="slimScroll">
            <section class="page-aside-section">
                <h5 class="page-aside-title">
                    列表</h5>
                <div class="list-group has-actions">
                    <div class="list-group-item">
                        <div class="list-content">
                            <span class="item-right">10</span>

                            <span class="list-text">管理员</span>
                            <div class="item-actions">
                                <span class="btn btn-pure btn-icon" data-toggle="list-editable"><i class="icon wb-edit" aria-hidden="true"></i></span>
                                <span class="btn btn-pure btn-icon" data-tag="list-delete"><i class="icon wb-trash" aria-hidden="true"></i></span>
                            </div>
                        </div>
                        <div class="list-editable">
                            <div class="form-group form-material">
                                <input type="text" class="form-control empty" name="label" data-bind=".list-text" value="Admin Calendar">
                                <button type="button" class="input-editable-close icon wb-close" data-toggle="list-editable-close" aria-label="关闭" aria-expanded="true"></button>
                            </div>
                        </div>
                    </div>
                    <div class="list-group-item">
                        <div class="list-content">
                            <span class="item-right">5</span>

                            <span class="list-text">主页</span>
                            <div class="item-actions">
                                <span class="btn btn-pure btn-icon" data-toggle="list-editable"><i class="icon wb-edit" aria-hidden="true"></i></span>
                                <span class="btn btn-pure btn-icon" data-tag="list-delete"><i class="icon wb-trash" aria-hidden="true"></i></span>
                            </div>
                        </div>
                        <div class="list-editable">
                            <div class="form-group form-material">
                                <input type="text" class="form-control empty" name="label" data-bind=".list-text" value="Home Calendar">
                                <button type="button" class="input-editable-close icon wb-close" data-toggle="list-editable-close" aria-label="关闭" aria-expanded="true"></button>
                            </div>
                        </div>
                    </div>
                    <div class="list-group-item">
                        <div class="list-content">
                            <span class="item-right">16</span>

                            <span class="list-text">工作</span>
                            <div class="item-actions">
                                <span class="btn btn-pure btn-icon" data-toggle="list-editable"><i class="icon wb-edit" aria-hidden="true"></i></span>
                                <span class="btn btn-pure btn-icon" data-tag="list-delete"><i class="icon wb-trash" aria-hidden="true"></i></span>
                            </div>
                        </div>
                        <div class="list-editable">
                            <div class="form-group form-material">
                                <input type="text" class="form-control empty" name="label" data-bind=".list-text" value="Work Calendar">
                                <button type="button" class="input-editable-close icon wb-close" data-toggle="list-editable-close" aria-label="关闭" aria-expanded="true"></button>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <section class="page-aside-section">
                <h5 class="page-aside-title">
                    事件</h5>
                <div class="list-group calendar-list">
                    <a class="list-group-item calendar-event" data-title="Meeting" data-stick=true data-color="red-600" href="javascript:;">
                        <i class="wb-medium-point red-600 margin-right-10" aria-hidden="true"></i>开会
                    </a>
                    <a class="list-group-item calendar-event" data-title="Birthday Party" data-stick=true data-color="green-600" href="javascript:;">
                        <i class="wb-medium-point green-600 margin-right-10" aria-hidden="true"></i>生日
                    </a>
                    <a class="list-group-item calendar-event" data-title="Call Jimba" data-stick=true data-color="orange-600" href="javascript:;">
                        <i class="wb-medium-point orange-600 margin-right-10" aria-hidden="true"></i>联系客户
                    </a>
                    <a class="list-group-item calendar-event" data-title="Dinner with Team" data-stick=true data-color="cyan-600" href="javascript:;">
                        <i class="wb-medium-point cyan-600 margin-right-10" aria-hidden="true"></i>团队活动
                    </a>
                    <a id="addNewEventBtn" class="list-group-item" href="javascript:;">
                        <i class="icon wb-plus" aria-hidden="true"></i> 添加新事件
                    </a>
                </div>
            </section>
        </div>
    </div>
    <div class="page-main">
        <div class="calendar-container">
            <div id="calendar"></div>
        </div>
    </div>

    <div class="site-action">
        <button type="button" class="site-action site-floataction btn-raised btn btn-success btn-floating">
            <i class="front-icon wb-plus animation-scale-up" aria-hidden="true"></i>
        </button>
    </div>
</div>

<div class="modal fade" id="addNewEvent" aria-hidden="true" aria-labelledby="addNewEvent" role="dialog" tabindex="-1">
    <div class="modal-dialog">
        <form class="modal-content form-horizontal" action="#" method="post" role="form">
            <div class="modal-header">
                <button type="button" class="close" aria-hidden="true" data-dismiss="modal">
                    ×
                </button>
                <h4 class="modal-title">
                    新增事件</h4>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="newEname">名称：</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="newEname" name="newEname">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="starts">开始：</label>
                    <div class="col-sm-10">
                        <div class="input-group">
                            <input type="text" class="form-control" id="starts" data-container="#addNewEvent" data-plugin="datepicker" data-language="zh-CN">
                            <span class="input-group-addon">
                                <i class="icon wb-calendar" aria-hidden="true"></i>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="ends">结束：</label>
                    <div class="col-sm-10">
                        <div class="input-group">
                            <input type="text" class="form-control" id="ends" data-container="#addNewEvent" data-plugin="datepicker" data-language="zh-CN">
                            <span class="input-group-addon">
                                <i class="icon wb-calendar" aria-hidden="true"></i>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="repeats">重复：</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="repeats" name="repeats" data-plugin="TouchSpin" data-min="0" data-max="10" value="0">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2">标记：</label>
                    <div class="col-sm-10">
                        <ul class="color-selector">
                            <li class="bg-blue-600">
                                <input type="radio" checked name="eventColorChosen" id="eventColorChosen2">
                                <label for="eventColorChosen2"></label>
                            </li>
                            <li class="bg-green-600">
                                <input type="radio" name="eventColorChosen" id="eventColorChosen3">
                                <label for="eventColorChosen3"></label>
                            </li>
                            <li class="bg-cyan-600">
                                <input type="radio" name="eventColorChosen" id="eventColorChosen4">
                                <label for="eventColorChosen4"></label>
                            </li>
                            <li class="bg-orange-600">
                                <input type="radio" name="eventColorChosen" id="eventColorChosen5">
                                <label for="eventColorChosen5"></label>
                            </li>
                            <li class="bg-red-600">
                                <input type="radio" name="eventColorChosen" id="eventColorChosen6">
                                <label for="eventColorChosen6"></label>
                            </li>
                            <li class="bg-blue-grey-600">
                                <input type="radio" name="eventColorChosen" id="eventColorChosen7">
                                <label for="eventColorChosen7"></label>
                            </li>
                            <li class="bg-purple-600">
                                <input type="radio" name="eventColorChosen" id="eventColorChosen8">
                                <label for="eventColorChosen8"></label>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="people">人员：</label>
                    <div class="col-sm-10">
                        <select id="eventPeople" multiple="multiple" data-plugin="jquery-selective"></select>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <div class="form-actions">
                    <button class="btn btn-primary" data-dismiss="modal" type="button">
                        添加事件
                    </button>
                    <a class="btn btn-sm btn-white" data-dismiss="modal" href="javascript:;">取消</a>
                </div>
            </div>
        </form>
    </div>
</div>

<div class="modal fade" id="editNewEvent" aria-hidden="true" aria-labelledby="editNewEvent" role="dialog" tabindex="-1" data-show="false">
    <div class="modal-dialog">
        <form class="modal-content form-horizontal" action="#" method="post" role="form">
            <div class="modal-header">
                <button type="button" class="close" aria-hidden="true" data-dismiss="modal">
                    ×
                </button>
                <h4 class="modal-title">
                    编辑事件</h4>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="editEname">名称：</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="editEname" name="editEname">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="editStarts">开始：</label>
                    <div class="col-sm-10">
                        <div class="input-group">
                            <input type="text" class="form-control" id="editStarts" name="editStarts" data-container="#editNewEvent" data-plugin="datepicker" data-language="zh-CN">
                            <span class="input-group-addon">
                                <i class="icon wb-calendar" aria-hidden="true"></i>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="editEnds">结束：</label>
                    <div class="col-sm-10">
                        <div class="input-group">
                            <input type="text" class="form-control" id="editEnds" data-container="#editNewEvent" data-plugin="datepicker" data-language="zh-CN">
                            <span class="input-group-addon">
                                <i class="icon wb-calendar" aria-hidden="true"></i>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="editRepeats">重复：</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="editRepeats" name="repeats" data-plugin="TouchSpin" data-min="0" data-max="10" value="0">
                    </div>
                </div>
                <div class="form-group" id="editColor">
                    <label class="control-label col-sm-2">标记：</label>
                    <div class="col-sm-10">
                        <ul class="color-selector">
                            <li class="bg-blue-600">
                                <input type="radio" data-color="blue|600" name="colorChosen" id="editColorChosen2">
                                <label for="editColorChosen2"></label>
                            </li>
                            <li class="bg-green-600">
                                <input type="radio" data-color="green|600" name="colorChosen" id="editColorChosen3">
                                <label for="editColorChosen3"></label>
                            </li>
                            <li class="bg-cyan-600">
                                <input type="radio" data-color="cyan|600" name="colorChosen" id="editColorChosen4">
                                <label for="editColorChosen4"></label>
                            </li>
                            <li class="bg-orange-600">
                                <input type="radio" data-color="orange|600" name="colorChosen" id="editColorChosen5">
                                <label for="editColorChosen4"></label>
                            </li>
                            <li class="bg-red-600">
                                <input type="radio" data-color="red|600" name="colorChosen" id="editColorChosen6">
                                <label for="editColorChosen6"></label>
                            </li>
                            <li class="bg-blue-grey-600">
                                <input type="radio" data-color="blue-grey|600" name="colorChosen" id="editColorChosen7">
                                <label for="editColorChosen7"></label>
                            </li>
                            <li class="bg-purple-600">
                                <input type="radio" data-color="purple|600" name="colorChosen" id="editColorChosen8">
                                <label for="editColorChosen8"></label>
                            </li>
                        </ul>
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
                    <button class="btn btn-primary" data-dismiss="modal" type="button">
                        保存
                    </button>
                    <button class="btn btn-danger" data-dismiss="modal" type="button">
                        删除
                    </button>
                    <a class="btn btn-sm btn-white" data-dismiss="modal" href="javascript:;">取消</a>
                </div>
            </div>
        </form>
    </div>
</div>

<div class="modal fade" id="addNewCalendar" aria-hidden="true" aria-labelledby="addNewCalendar" role="dialog" tabindex="-1">
    <div class="modal-dialog">
        <form class="modal-content form-horizontal" action="#" method="post" role="form">
            <div class="modal-header">
                <button type="button" class="close" aria-hidden="true" data-dismiss="modal">
                    ×
                </button>
                <h4 class="modal-title">
                    新增日历</h4>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="ename">名称：</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="ename" name="ename">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2">标记：</label>
                    <div class="col-sm-10">
                        <ul class="color-selector">
                            <li class="bg-blue-600">
                                <input type="radio" checked name="colorChosen" id="colorChosen2">
                                <label for="colorChosen2"></label>
                            </li>
                            <li class="bg-green-600">
                                <input type="radio" name="colorChosen" id="colorChosen3">
                                <label for="colorChosen3"></label>
                            </li>
                            <li class="bg-cyan-600">
                                <input type="radio" name="colorChosen" id="colorChosen4">
                                <label for="colorChosen4"></label>
                            </li>
                            <li class="bg-orange-600">
                                <input type="radio" name="colorChosen" id="colorChosen5">
                                <label for="colorChosen5"></label>
                            </li>
                            <li class="bg-red-600">
                                <input type="radio" name="colorChosen" id="colorChosen6">
                                <label for="colorChosen6"></label>
                            </li>
                            <li class="bg-blue-grey-600">
                                <input type="radio" name="colorChosen" id="colorChosen7">
                                <label for="colorChosen7"></label>
                            </li>
                            <li class="bg-purple-600">
                                <input type="radio" name="colorChosen" id="colorChosen8">
                                <label for="colorChosen8"></label>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="people">人员</label>
                    <div class="col-sm-10">
                        <select id="people" multiple="multiple" data-plugin="jquery-selective"></select>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <div class="form-actions">
                    <button class="btn btn-primary" data-dismiss="modal" type="button">
                        新增事件
                    </button>
                    <a class="btn btn-sm btn-white" data-dismiss="modal" href="javascript:;">取消</a>
                </div>
            </div>
        </form>
    </div>
</div>
<div class="modal fade" id="addNewCalendarForm" aria-hidden="true" aria-labelledby="addNewCalendarForm" role="dialog" tabindex="-1">
    <div class="modal-dialog">
        <form class="modal-content" action="#" method="post" role="form">
            <div class="modal-header">
                <button type="button" class="close" aria-hidden="true" data-dismiss="modal">
                    ×
                </button>
                <h4 class="modal-title">
                    创建新日历</h4>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <label class="control-label margin-bottom-15" for="name">日历名称：</label>
                    <input type="text" class="form-control" id="name" name="name" placeholder="日历名称">
                </div>
                <div class="form-group">
                    <label class="control-label margin-bottom-15" for="name">选择成员：</label>
                    <select multiple="multiple" data-plugin="jquery-selective"></select>
                </div>
            </div>
            <div class="modal-footer">
                <div class="form-actions">
                    <button class="btn btn-primary" data-dismiss="modal" type="button">
                        创建日历
                    </button>
                    <a class="btn btn-sm btn-white" data-dismiss="modal" href="javascript:;">取消</a>
                </div>
            </div>
        </form>
    </div>
</div>

<script src="${ctx}/public/vendor/jquery-ui/jquery-ui.min.js"></script>
<script src="${ctx}/public/vendor/moment/moment.min.js" data-name="moment"></script>
<script src="${ctx}/public/vendor/fullcalendar/fullcalendar.min.js" data-name="fullcalendar" data-deps="moment"></script>
<script src="${ctx}/public/vendor/fullcalendar/lang/zh-cn.min.js" data-deps="fullcalendar"></script>
<script src="${ctx}/public/vendor/jquery-selective/jquery-selective.min.js"></script>
<script src="${ctx}/public/vendor/bootstrap-datepicker/bootstrap-datepicker.min.js" data-name="datepicker"></script>
<script src="${ctx}/public/vendor/bootstrap-datepicker/locales/bootstrap-datepicker.zh-CN.min.js" data-deps="datepicker"></script>
<script src="${ctx}/public/vendor/bootstrap-touchspin/jquery.bootstrap-touchspin.min.js"></script>
<script src="${ctx}/public/vendor/bootbox/bootbox.min.js"></script>
<script src="${ctx}/public/themes/classic/global/js/plugins/action-btn.js"></script>
<script src="${ctx}/public/themes/classic/global/js/plugins/action-btn.js"></script>
<script src="${ctx}/public/themes/classic/base/js/app.js" data-name></script>
<script src="${ctx}/public/js/examples/pages/team/calendar.js" data-deps="fullcalendar,app"></script>
