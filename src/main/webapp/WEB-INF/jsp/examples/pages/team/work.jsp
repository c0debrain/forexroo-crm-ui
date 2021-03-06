<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../../includes/taglib.jsp"%>

<title>项目列表 02</title>

<link rel="stylesheet" href="${ctx}/public/vendor/chartist-js/chartist.css">
<link rel="stylesheet" href="${ctx}/public/vendor/chartist-plugin-tooltip/chartist-plugin-tooltip.css">
<link rel="stylesheet" href="${ctx}/public/vendor/jquery-selective/jquery-selective.css">
<link rel="stylesheet" href="${ctx}/public/css/examples/pages/team//work.css">

<div class="page animation-fade page-work">
    <div class="page-content">
        <div class="panel">
            <div class="panel-heading">
                <h3 class="panel-title">项目列表</h3>
                <form class="panel-search-form" role="search">
                    <div class="input-search">
                        <i class="input-search-icon wb-search" aria-hidden="true"></i>
                        <input type="text" class="form-control" id="inputSearch" name="search" placeholder="查找项目">
                        <i class="icon wb-loop"></i>
                    </div>
                </form>
                <ul class="panel-info">
                    <li>
                        <div class="num blue-600">23</div>
                        <p>招聘</p>
                    </li>
                    <li>
                        <div class="num orange-600">8</div>
                        <p>进行</p>
                    </li>
                    <li>
                        <div class="num green-600">5</div>
                        <p>完成</p>
                    </li>
                </ul>
            </div>
            <div class="panel-body">
                <table class="table">
                    <thead>
                    <tr>
                        <th>状态</th>
                        <th>子项目</th>
                        <th>进度</th>
                        <th>成员</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td class="work-status">
                            <span class="label label-primary">招聘中</span>
                        </td>
                        <td class="subject">
                            <div class="table-content">
                                <p class="blue-grey-500">分岔理论及其在非线性时滞系统研究中的应用</p>
                                <span class="blue-grey-400">11/08/2016</span>
                                <span class="label label-sm label-primary">招聘中</span>
                            </div>
                        </td>
                        <td class="work-progress">
                            <div class="progress progress-xs table-content">
                                <div class="progress-bar progress-bar-primary progress-bar-indicating" style="width: 90%" role="progressbar">
                                    <span class="sr-only">90%</span>
                                </div>
                            </div>
                            <span>90%</span>
                        </td>
                        <td class="members">
                            <div class="table-content">
                                <select multiple="multiple" data-plugin="jquery-selective"></select>
                            </div>
                        </td>
                        <td class="actions">
                            <button data-url="${ctx}/public/data/examples/pages/work-panel.tpl" data-toggle="slidePanel" type="button" class="btn btn-outline btn-success ">
                                移除
                            </button>
                            <div class="table-content">
                                <i class="icon wb-menu" data-url="${ctx}/public/data/examples/pages/work-panel.tpl" data-toggle="slidePanel"></i>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="work-status">
                            <span class="label label-primary">招聘中</span>
                        </td>
                        <td class="subject">
                            <div class="table-content">
                                <p class="blue-grey-500">液晶单体构筑高迁移率新型金属共轭聚合物太阳能材料的合成与性能研究</p>
                                <span class="blue-grey-400">10/12/2016</span>
                                <span class="label label-sm label-primary">招聘中</span>
                            </div>
                        </td>
                        <td class="work-progress">
                            <div class="progress progress-xs table-content">
                                <div class="progress-bar progress-bar-primary progress-bar-indicating" style="width: 77%" role="progressbar">
                                    <span class="sr-only">77%</span>
                                </div>
                            </div>
                            <span>77%</span>
                        </td>
                        <td class="members">
                            <div class="table-content">
                                <select multiple="multiple" data-plugin="jquery-selective"></select>
                            </div>
                        </td>
                        <td class="actions">
                            <button data-url="${ctx}/public/data/examples/pages/work-panel.tpl" data-toggle="slidePanel" type="button" class="btn btn-outline btn-success ">
                                移除
                            </button>
                            <div class="table-content">
                                <i class="icon wb-menu" data-url="${ctx}/public/data/examples/pages/work-panel.tpl" data-toggle="slidePanel"></i>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="work-status">
                            <span class="label label-success">完成</span>
                        </td>
                        <td class="subject">
                            <div class="table-content">
                                <p class="blue-grey-500">无人驾驶车辆协同感知机制及关键技术研究</p>
                                <span class="blue-grey-400">15/10/2016</span>
                                <span class="label label-sm label-success">完成</span>
                            </div>
                        </td>
                        <td class="work-progress">
                            <div class="progress progress-xs table-content">
                                <div class="progress-bar progress-bar-success progress-bar-indicating" style="width: 100%" role="progressbar">
                                    <span class="sr-only">100%</span>
                                </div>
                            </div>
                            <span>100%</span>
                        </td>
                        <td class="members">
                            <div class="table-content">
                                <select multiple="multiple" data-plugin="jquery-selective"></select>
                            </div>
                        </td>
                        <td class="actions">
                            <button data-url="${ctx}/public/data/examples/pages/work-panel.tpl" data-toggle="slidePanel" type="button" class="btn btn-outline btn-success finish">
                                移除
                            </button>
                            <div class="table-content">
                                <i class="icon wb-menu" data-url="${ctx}/public/data/examples/pages/work-panel.tpl" data-toggle="slidePanel"></i>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="work-status">
                            <span class="label label-warning">已盈利</span>
                        </td>
                        <td class="subject">
                            <div class="table-content">
                                <p class="blue-grey-500">复杂工程系统全寿命健康管理模型与软件研究</p>
                                <span class="blue-grey-400">20/11/2016</span>
                                <span class="label label-sm label-warning">已盈利</span>
                            </div>
                        </td>
                        <td class="work-progress">
                            <div class="progress progress-xs table-content">
                                <div class="progress-bar progress-bar-primary progress-bar-indicating" style="width: 48%" role="progressbar">
                                    <span class="sr-only">48%</span>
                                </div>
                            </div>
                            <span>48%</span>
                        </td>
                        <td class="members">
                            <div class="table-content">
                                <select multiple="multiple" data-plugin="jquery-selective"></select>
                            </div>
                        </td>
                        <td class="actions">
                            <button data-url="${ctx}/public/data/examples/pages/work-panel.tpl" data-toggle="slidePanel" type="button" class="btn btn-outline btn-success ">
                                移除
                            </button>
                            <div class="table-content">
                                <i class="icon wb-menu" data-url="${ctx}/public/data/examples/pages/work-panel.tpl" data-toggle="slidePanel"></i>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="work-status">
                            <span class="label label-primary">招聘中</span>
                        </td>
                        <td class="subject">
                            <div class="table-content">
                                <p class="blue-grey-500">翻译质量模糊评估模式研究</p>
                                <span class="blue-grey-400">16/08/2016</span>
                                <span class="label label-sm label-primary">招聘中</span>
                            </div>
                        </td>
                        <td class="work-progress">
                            <div class="progress progress-xs table-content">
                                <div class="progress-bar progress-bar-primary progress-bar-indicating" style="width: 97%" role="progressbar">
                                    <span class="sr-only">97%</span>
                                </div>
                            </div>
                            <span>97%</span>
                        </td>
                        <td class="members">
                            <div class="table-content">
                                <select multiple="multiple" data-plugin="jquery-selective"></select>
                            </div>
                        </td>
                        <td class="actions">
                            <button data-url="${ctx}/public/data/examples/pages/work-panel.tpl" data-toggle="slidePanel" type="button" class="btn btn-outline btn-success ">
                                移除
                            </button>
                            <div class="table-content">
                                <i class="icon wb-menu" data-url="${ctx}/public/data/examples/pages/work-panel.tpl" data-toggle="slidePanel"></i>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="work-status">
                            <span class="label label-primary">招聘中</span>
                        </td>
                        <td class="subject">
                            <div class="table-content">
                                <p class="blue-grey-500">金融制度竞争优势的空间依赖性与异质性研究</p>
                                <span class="blue-grey-400">24/09/2016</span>
                                <span class="label label-sm label-primary">招聘中</span>
                            </div>
                        </td>
                        <td class="work-progress">
                            <div class="progress progress-xs table-content">
                                <div class="progress-bar progress-bar-primary progress-bar-indicating" style="width: 80%" role="progressbar">
                                    <span class="sr-only">80%</span>
                                </div>
                            </div>
                            <span>80%</span>
                        </td>
                        <td class="members">
                            <div class="table-content">
                                <select multiple="multiple" data-plugin="jquery-selective"></select>
                            </div>
                        </td>
                        <td class="actions">
                            <button data-url="${ctx}/public/data/examples/pages/work-panel.tpl" data-toggle="slidePanel" type="button" class="btn btn-outline btn-success ">
                                移除
                            </button>
                            <div class="table-content">
                                <i class="icon wb-menu" data-url="${ctx}/public/data/examples/pages/work-panel.tpl" data-toggle="slidePanel"></i>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="work-status">
                            <span class="label label-primary">招聘中</span>
                        </td>
                        <td class="subject">
                            <div class="table-content">
                                <p class="blue-grey-500">脉冲时滞反应扩散系统的鲁棒控制及在宽厚钢板热加工中的应用</p>
                                <span class="blue-grey-400">12/11/2016</span>
                                <span class="label label-sm label-primary">招聘中</span>
                            </div>
                        </td>
                        <td class="work-progress">
                            <div class="progress progress-xs table-content">
                                <div class="progress-bar progress-bar-primary progress-bar-indicating" style="width: 65%" role="progressbar">
                                    <span class="sr-only">65%</span>
                                </div>
                            </div>
                            <span>65%</span>
                        </td>
                        <td class="members">
                            <div class="table-content">
                                <select multiple="multiple" data-plugin="jquery-selective"></select>
                            </div>
                        </td>
                        <td class="actions">
                            <button data-url="${ctx}/public/data/examples/pages/work-panel.tpl" data-toggle="slidePanel" type="button" class="btn btn-outline btn-success ">
                                移除
                            </button>
                            <div class="table-content">
                                <i class="icon wb-menu" data-url="${ctx}/public/data/examples/pages/work-panel.tpl" data-toggle="slidePanel"></i>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="work-status">
                            <span class="label label-primary">招聘中</span>
                        </td>
                        <td class="subject">
                            <div class="table-content">
                                <p class="blue-grey-500">β 辐射伏特电池材料基础研究</p>
                                <span class="blue-grey-400">21/10/2016</span>
                                <span class="label label-sm label-primary">招聘中</span>
                            </div>
                        </td>
                        <td class="work-progress">
                            <div class="progress progress-xs table-content">
                                <div class="progress-bar progress-bar-primary progress-bar-indicating" style="width: 70%" role="progressbar">
                                    <span class="sr-only">70%</span>
                                </div>
                            </div>
                            <span>70%</span>
                        </td>
                        <td class="members">
                            <div class="table-content">
                                <select multiple="multiple" data-plugin="jquery-selective"></select>
                            </div>
                        </td>
                        <td class="actions">
                            <button data-url="${ctx}/public/data/examples/pages/work-panel.tpl" data-toggle="slidePanel" type="button" class="btn btn-outline btn-success ">
                                移除
                            </button>
                            <div class="table-content">
                                <i class="icon wb-menu" data-url="${ctx}/public/data/examples/pages/work-panel.tpl" data-toggle="slidePanel"></i>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="work-status">
                            <span class="label label-primary">招聘中</span>
                        </td>
                        <td class="subject">
                            <div class="table-content">
                                <p class="blue-grey-500">高热电优值硅纳米线的表面调控</p>
                                <span class="blue-grey-400">23/10/2016</span>
                                <span class="label label-sm label-primary">招聘中</span>
                            </div>
                        </td>
                        <td class="work-progress">
                            <div class="progress progress-xs table-content">
                                <div class="progress-bar progress-bar-primary progress-bar-indicating" style="width: 62%" role="progressbar">
                                    <span class="sr-only">62%</span>
                                </div>
                            </div>
                            <span>62%</span>
                        </td>
                        <td class="members">
                            <div class="table-content">
                                <select multiple="multiple" data-plugin="jquery-selective"></select>
                            </div>
                        </td>
                        <td class="actions">
                            <button data-url="${ctx}/public/data/examples/pages/work-panel.tpl" data-toggle="slidePanel" type="button" class="btn btn-outline btn-success ">
                                移除
                            </button>
                            <div class="table-content">
                                <i class="icon wb-menu" data-url="${ctx}/public/data/examples/pages/work-panel.tpl" data-toggle="slidePanel"></i>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="work-status">
                            <span class="label label-primary">招聘中</span>
                        </td>
                        <td class="subject">
                            <div class="table-content">
                                <p class="blue-grey-500">新型纳米多孔钯系双金属(Pd-M)电催化剂的制备与应用</p>
                                <span class="blue-grey-400">11/11/2016</span>
                                <span class="label label-sm label-primary">招聘中</span>
                            </div>
                        </td>
                        <td class="work-progress">
                            <div class="progress progress-xs table-content">
                                <div class="progress-bar progress-bar-primary progress-bar-indicating" style="width: 83%" role="progressbar">
                                    <span class="sr-only">83%</span>
                                </div>
                            </div>
                            <span>83%</span>
                        </td>
                        <td class="members">
                            <div class="table-content">
                                <select multiple="multiple" data-plugin="jquery-selective"></select>
                            </div>
                        </td>
                        <td class="actions">
                            <button data-url="${ctx}/public/data/examples/pages/work-panel.tpl" data-toggle="slidePanel" type="button" class="btn btn-outline btn-success ">
                                移除
                            </button>
                            <div class="table-content">
                                <i class="icon wb-menu" data-url="${ctx}/public/data/examples/pages/work-panel.tpl" data-toggle="slidePanel"></i>
                            </div>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <div class="panel-footer">
                <nav>
                    <ul class="pagination pagination-gap">
                        <li class="disabled">
                            <a href="javascript:;" aria-label="上一页"><span aria-hidden="true">上一页</span></a>
                        </li>
                        <li class="active">
                            <a href="javascript:;">1 <span class="sr-only">(当前)</span></a>
                        </li>
                        <li>
                            <a href="javascript:;">2</a>
                        </li>
                        <li>
                            <a href="javascript:;">3</a>
                        </li>
                        <li>
                            <a href="javascript:;">4</a>
                        </li>
                        <li>
                            <a href="javascript:;">5</a>
                        </li>
                        <li>
                            <a href="javascript:;" aria-label="下一页"><span aria-hidden="true">下一页</span></a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</div>

<script src="${ctx}/public/vendor/chartist-js/chartist.js" data-name="chartist"></script>
<script src="${ctx}/public/vendor/chartist-plugin-tooltip/chartist-plugin-tooltip.js" data-deps="chartist"></script>
<script src="${ctx}/public/vendor/jquery-selective/jquery-selective.min.js"></script>
<script src="${ctx}/public/themes/classic/base/js/app.js" data-name="app"></script>
<script src="${ctx}/public/js/examples/pages/team/work.js" data-deps="app"></script>
