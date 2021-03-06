<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../../../includes/taglib.jsp"%>

<div class="panel">
    <div class="panel-heading">
        <h3 class="panel-title">JSONP数据源</h3>
    </div>
    <div class="alert alert-warning" role="alert">
        <p>JSONP 是允许从任何服务器使用 JSON 数据的几种方法之一（浏览器具有XSS保护规则，出于安全原因，将阻止标准 Ajax 请求远程资源）。可使用 <code>ajax</code> 的 <code>dataType</code>，将其设为
            <code>JSONP</code>，使 DataTable 从任何域加载服务器端源数据</p>
        <p>当作为对象提供时，ajax选项直接映射到jQuery ajax选项（即任何可以在jQuery的Ajax函数中使用的选项也可以在DataTable的ajax选项中使用）</p>
        <p>本示例演示 DataTables 的跨域请求</p>
    </div>
    <div class="panel-body">
        <table class="table table-bordered table-hover dataTable table-striped width-full text-nowrap" id="dataTableExample">
            <thead>
            <tr>
                <th>姓名</th>
                <th>职位</th>
                <th>工作地点</th>
                <th>年龄</th>
                <th>入职时间</th>
                <th>年薪</th>
            </tr>
            </thead>
            <tfoot>
            <tr>
                <th>姓名</th>
                <th>职位</th>
                <th>工作地点</th>
                <th>年龄</th>
                <th>入职时间</th>
                <th>年薪</th>
            </tr>
            </tfoot>
        </table>
    </div>
</div>
<div class="panel nav-tabs-horizontal">
    <div class="panel-body" data-approve="nav-tabs">
        <ul class="nav nav-tabs nav-tabs-line" role="tablist">
            <li role="presentation" class="active">
                <a data-toggle="tab" href="#DTJS" aria-controls="DTJS" role="tab" aria-expanded="false">JavaScript</a>
            </li>
            <li role="presentation" class="">
                <a data-toggle="tab" href="#DTHtml" aria-controls="DTHtml" role="tab" aria-expanded="false">HTML</a>
            </li>
            <li role="presentation">
                <a data-toggle="tab" href="#DTJava" aria-controls="DTJava" role="tab" aria-expanded="true">JAVA</a>
            </li>
            <li role="presentation">
                <a data-toggle="tab" href="#DTData" aria-controls="DTJava" role="tab" aria-expanded="true">DATA</a>
            </li>
        </ul>
        <div class="tab-content margin-top-15">
            <div class="tab-pane active" id="DTJS" role="tabpanel">
                <pre data-plugin="highlight"><code class="js">$('#dataTableExample').DataTable($.po('dataTable', {
	"processing": true,
	"serverSide": true,
	"ajax": {
	    "url": "/employee/all",
	    "dataType": "jsonp"
	}
}));</code></pre>
            </div>
            <div class="tab-pane" id="DTHtml" role="tabpanel">
                <pre data-plugin="highlight"><code class="html">&lt;table class="table table-bordered table-hover dataTable table-striped width-full"&gt;
    &lt;thead&gt;
    &lt;tr&gt;
        &lt;th&gt;姓名&lt;/th&gt;
        &lt;th&gt;职位&lt;/th&gt;
        &lt;th&gt;工作地点&lt;/th&gt;
        &lt;th&gt;年龄&lt;/th&gt;
        &lt;th&gt;入职时间&lt;/th&gt;
        &lt;th&gt;年薪&lt;/th&gt;
    &lt;/tr&gt;
    &lt;/thead&gt;
    &lt;tfoot&gt;
    &lt;tr&gt;
        &lt;th&gt;姓名&lt;/th&gt;
        &lt;th&gt;职位&lt;/th&gt;
        &lt;th&gt;工作地点&lt;/th&gt;
        &lt;th&gt;年龄&lt;/th&gt;
        &lt;th&gt;入职时间&lt;/th&gt;
        &lt;th&gt;年薪&lt;/th&gt;
    &lt;/tr&gt;
    &lt;/tfoot&gt;
&lt;/table&gt;</code></pre>
            </div>
            <div class="tab-pane" id="DTJava" role="tabpanel">
                <pre data-plugin="highlight"><code class="java">java代码</code></pre>
            </div>
            <div class="tab-pane" id="DTData" role="tabpanel">
                <pre data-plugin="highlight"><code class="json">{
    recordsFiltered: 57,
    data: [
        [
            "李霞",
            "系统架构师",
            "北京",
            "61",
            "2011/04/25",
            "&yen;320800"
        ],
        [
            "杜重治",
            "会计",
            "上海",
            "63",
            "2011/07/25",
            "&yen;170750"
        ],
        [
            "陈锋",
            "初级开发者",
            "深圳",
            "66",
            "2009/01/12",
            "&yen;86000"
        ],
        [
            "郑伯宁",
            "高级JavaScript开发者",
            "北京",
            "22",
            "2012/03/29",
            "&yen;433060"
        ]
    ]
}</code></pre>
            </div>
        </div>
    </div>
</div>

<script src="${ctx}/public/js/examples/tables/data-tables/server-side/jsonp.js"></script>