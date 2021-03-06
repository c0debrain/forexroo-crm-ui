<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../../../includes/taglib.jsp"%>

<div class="panel">
    <div class="panel-heading">
        <h3 class="panel-title">嵌套对象数据（数组）</h3>
    </div>
    <div class="alert alert-warning" role="alert">
        <p>该示例展示了 DataTables 使用对象数据，在最简单的情况下可以读取任意对象的属性，而且只要符合javascript标准，可以扩展到n层的嵌套对象/数组</p>
        <p>下面的 <code>hr</code> 对象包含了 <code>position</code>、<code>salary</code>、<code>start_date</code> 三个属性，<code>contact</code>
            包含两个数据，通过数组下标的方式取值 </p>
    </div>
    <div class="panel-body">
        <table class="table table-bordered table-hover dataTable table-striped width-full text-nowrap" id="dataTableExample">
            <thead>
            <tr>
                <th>姓名</th>
                <th>职位</th>
                <th>工作地点</th>
                <th>分机号</th>
                <th>入职时间</th>
                <th>年薪</th>
            </tr>
            </thead>
            <tfoot>
            <tr>
                <th>姓名</th>
                <th>职位</th>
                <th>工作地点</th>
                <th>分机号</th>
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
                <a data-toggle="tab" href="#DTAjax" aria-controls="DTAjax" role="tab" aria-expanded="false">AJAX</a>
            </li>
            <li role="presentation">
                <a data-toggle="tab" href="#DTHtml" aria-controls="DTHtml" role="tab" aria-expanded="true">HTML</a>
            </li>
        </ul>
        <div class="tab-content margin-top-15">
            <div class="tab-pane active" id="DTJS" role="tabpanel">
                <pre data-plugin="highlight"><code class="js">$('#dataTableExample').DataTable($.po('dataTable', {
    "processing": true,
    "ajax": "${ctx}/public/data/examples/tables/dt-ajax-3.json",
    "columns": [
        {"data": "name"},
        {"data": "hr.0"},
        {"data": "office"},
        {"data": "extn"},
        {"data": "hr.2"},
        {"data": "hr.1"}
    ]
}));</code></pre>
            </div>
            <div class="tab-pane" id="DTAjax" role="tabpanel">
                <pre data-plugin="highlight"><code class="json">{
    "data": [
        {
            "name": "李霞",
            "hr": [
                "系统架构师",
                "&yen;320,800",
                "2011/04/25"
            ],
            "office": "北京",
            "extn": "5421"
        },
        {
            "name": "杜重治",
            "hr": [
                "会计",
                "&yen;170,750",
                "2011/07/25"
            ],
            "office": "上海",
            "extn": "8422"
        },
        {
            "name": "陈锋",
            "hr": [
                "初级开发者",
                "&yen;86,000",
                "2009/01/12"
            ],
            "office": "深圳",
            "extn": "1562"
        },
        {
            "name": "郑伯宁",
            "hr": [
                "高级JavaScript开发者",
                "&yen;433,060",
                "2012/03/29"
            ],
            "office": "北京",
            "extn": "6224"
        },
        {
            "name": "施华军",
            "hr": [
                "会计",
                "&yen;162,700",
                "2008/11/28"
            ],
            "office": "上海",
            "extn": "5407"
        },
        {
            "name": "吴书振",
            "hr": [
                "集成专家",
                "&yen;372,000",
                "2012/12/02"
            ],
            "office": "南京",
            "extn": "4804"
        },
        {
            "name": "张宁",
            "hr": [
                "销售代表",
                "&yen;137,500",
                "2012/08/06"
            ],
            "office": "深圳",
            "extn": "9608"
        },
        {
            "name": "马世波",
            "hr": [
                "集成专家",
                "&yen;327,900",
                "2010/10/14"
            ],
            "office": "上海",
            "extn": "6200"
        },
        {
            "name": "张章",
            "hr": [
                "Javascript开发者",
                "&yen;205,500",
                "2009/09/15"
            ],
            "office": "深圳",
            "extn": "2360"
        },
        {
            "name": "张竹影",
            "hr": [
                "软件工程师",
                "&yen;103,600",
                "2008/12/13"
            ],
            "office": "北京",
            "extn": "1667"
        },
        {
            "name": "韩庆福",
            "hr": [
                "办公室主管",
                "&yen;90,560",
                "2008/12/19"
            ],
            "office": "广州",
            "extn": "3814"
        },
        {
            "name": "刘勇",
            "hr": [
                "客户服务",
                "&yen;342,000",
                "2013/03/03"
            ],
            "office": "北京",
            "extn": "9497"
        },
        {
            "name": "张忆湫",
            "hr": [
                "大区经理",
                "&yen;470,600",
                "2008/10/16"
            ],
            "office": "深圳",
            "extn": "6741"
        },
        {
            "name": "尚志兴",
            "hr": [
                "高级营销设计师",
                "&yen;313,500",
                "2012/12/18"
            ],
            "office": "广州",
            "extn": "3597"
        },
        {
            "name": "杜若芳",
            "hr": [
                "大区经理",
                "&yen;385,750",
                "2010/03/17"
            ],
            "office": "广州",
            "extn": "1965"
        },
        {
            "name": "杨乔松",
            "hr": [
                "营销设计师",
                "&yen;198,500",
                "2012/11/27"
            ],
            "office": "广州",
            "extn": "1581"
        },
        {
            "name": "闫跃进",
            "hr": [
                "CEO",
                "&yen;725,000",
                "2010/06/09"
            ],
            "office": "南京",
            "extn": "3059"
        },
        {
            "name": "孙凯",
            "hr": [
                "系统管理员",
                "&yen;237,500",
                "2009/04/10"
            ],
            "office": "南京",
            "extn": "1721"
        },
        {
            "name": "赖祥校",
            "hr": [
                "软件工程师",
                "&yen;132,000",
                "2012/10/13"
            ],
            "office": "广州",
            "extn": "2558"
        },
        {
            "name": "郭晖",
            "hr": [
                "人事主管",
                "&yen;217,500",
                "2012/09/26"
            ],
            "office": "北京",
            "extn": "2290"
        },
        {
            "name": "贺光明",
            "hr": [
                "技术主管",
                "&yen;345,000",
                "2011/09/03"
            ],
            "office": "南京",
            "extn": "1937"
        },
        {
            "name": "邓小燕",
            "hr": [
                "CMO",
                "&yen;675,000",
                "2009/06/25"
            ],
            "office": "南京",
            "extn": "6154"
        },
        {
            "name": "白莉惠",
            "hr": [
                "售前支持",
                "&yen;106,450",
                "2011/12/12"
            ],
            "office": "南京",
            "extn": "8330"
        },
        {
            "name": "杨海霞",
            "hr": [
                "销售代表",
                "&yen;85,600",
                "2010/09/20"
            ],
            "office": "成都",
            "extn": "3023"
        },
        {
            "name": "利旭日",
            "hr": [
                "CEO",
                "&yen;1,200,000",
                "2009/10/09"
            ],
            "office": "广州",
            "extn": "5797"
        },
        {
            "name": "范永胜",
            "hr": [
                "开发者",
                "&yen;92,575",
                "2010/12/22"
            ],
            "office": "北京",
            "extn": "8822"
        },
        {
            "name": "于怀斌",
            "hr": [
                "大区经理",
                "&yen;357,650",
                "2010/11/14"
            ],
            "office": "苏州",
            "extn": "9239"
        },
        {
            "name": "赵淑娜",
            "hr": [
                "软件工程师",
                "&yen;206,850",
                "2011/06/07"
            ],
            "office": "深圳",
            "extn": "1314"
        },
        {
            "name": "张淑杰",
            "hr": [
                "COO",
                "&yen;850,000",
                "2010/03/11"
            ],
            "office": "深圳",
            "extn": "2947"
        },
        {
            "name": "陈俊军",
            "hr": [
                "区域销售",
                "&yen;163,000",
                "2011/08/14"
            ],
            "office": "上海",
            "extn": "8899"
        },
        {
            "name": "郭增杰",
            "hr": [
                "集成专家",
                "&yen;95,400",
                "2011/06/02"
            ],
            "office": "成都",
            "extn": "2769"
        },
        {
            "name": "林云",
            "hr": [
                "开发者",
                "&yen;114,500",
                "2009/10/22"
            ],
            "office": "广州",
            "extn": "6832"
        },
        {
            "name": "郭述龙",
            "hr": [
                "技术作者",
                "&yen;145,000",
                "2011/05/07"
            ],
            "office": "广州",
            "extn": "3606"
        },
        {
            "name": "杨军",
            "hr": [
                "团队主管",
                "&yen;235,500",
                "2008/10/26"
            ],
            "office": "深圳",
            "extn": "2860"
        },
        {
            "name": "张海龙",
            "hr": [
                "售后支持",
                "&yen;324,050",
                "2011/03/09"
            ],
            "office": "北京",
            "extn": "8240"
        },
        {
            "name": "耿静",
            "hr": [
                "营销设计师",
                "&yen;85,675",
                "2009/12/09"
            ],
            "office": "深圳",
            "extn": "5384"
        },
        {
            "name": "刘晋荣",
            "hr": [
                "办公室主管",
                "&yen;164,500",
                "2008/12/16"
            ],
            "office": "深圳",
            "extn": "7031"
        },
        {
            "name": "孙宁",
            "hr": [
                "秘书",
                "&yen;109,850",
                "2010/02/12"
            ],
            "office": "深圳",
            "extn": "6318"
        },
        {
            "name": "邢洪锐",
            "hr": [
                "财务总监",
                "&yen;452,500",
                "2009/02/14"
            ],
            "office": "深圳",
            "extn": "9422"
        },
        {
            "name": "陈云云",
            "hr": [
                "办公室主管",
                "&yen;136,200",
                "2008/12/11"
            ],
            "office": "广州",
            "extn": "7580"
        },
        {
            "name": "张禄",
            "hr": [
                "主任",
                "&yen;645,750",
                "2008/09/26"
            ],
            "office": "南京",
            "extn": "1042"
        },
        {
            "name": "王增凤",
            "hr": [
                "技术支持工程师",
                "&yen;234,500",
                "2011/02/03"
            ],
            "office": "苏州",
            "extn": "2120"
        },
        {
            "name": "沈捷",
            "hr": [
                "软件工程师",
                "&yen;163,500",
                "2011/05/03"
            ],
            "office": "广州",
            "extn": "6222"
        },
        {
            "name": "汪化言",
            "hr": [
                "技术支持工程师",
                "&yen;139,575",
                "2009/08/19"
            ],
            "office": "上海",
            "extn": "9383"
        },
        {
            "name": "杨正机",
            "hr": [
                "开发者",
                "&yen;98,540",
                "2013/08/11"
            ],
            "office": "南京",
            "extn": "8327"
        },
        {
            "name": "戴向军",
            "hr": [
                "技术支持工程师",
                "&yen;87,500",
                "2009/07/07"
            ],
            "office": "深圳",
            "extn": "2927"
        },
        {
            "name": "王延芳",
            "hr": [
                "数据分析工程师",
                "&yen;138,575",
                "2012/04/09"
            ],
            "office": "苏州",
            "extn": "8352"
        },
        {
            "name": "沈健",
            "hr": [
                "软件工程师",
                "&yen;125,250",
                "2010/01/04"
            ],
            "office": "南京",
            "extn": "7439"
        },
        {
            "name": "刘伟峰",
            "hr": [
                "软件工程师",
                "&yen;115,000",
                "2012/06/01"
            ],
            "office": "深圳",
            "extn": "4389"
        },
        {
            "name": "陆先生",
            "hr": [
                "初级Javascript开发者",
                "&yen;75,650",
                "2013/02/01"
            ],
            "office": "北京",
            "extn": "3431"
        },
        {
            "name": "纪虹羽",
            "hr": [
                "销售代表",
                "&yen;145,600",
                "2011/12/06"
            ],
            "office": "南京",
            "extn": "3990"
        },
        {
            "name": "肖艳",
            "hr": [
                "大区经理",
                "&yen;356,250",
                "2011/03/21"
            ],
            "office": "广州",
            "extn": "1016"
        },
        {
            "name": "沈国金",
            "hr": [
                "系统管理员",
                "&yen;103,500",
                "2009/02/27"
            ],
            "office": "广州",
            "extn": "6733"
        },
        {
            "name": "王燕峰",
            "hr": [
                "开发者",
                "&yen;86,500",
                "2010/07/14"
            ],
            "office": "深圳",
            "extn": "8196"
        },
        {
            "name": "徐若琳",
            "hr": [
                "大区经理",
                "&yen;183,000",
                "2008/11/13"
            ],
            "office": "北京",
            "extn": "6373"
        },
        {
            "name": "徐成业",
            "hr": [
                "Javascript开发者",
                "&yen;183,000",
                "2011/06/27"
            ],
            "office": "苏州",
            "extn": "5384"
        },
        {
            "name": "李岸白",
            "hr": [
                "客户服务",
                "&yen;112,000",
                "2011/01/25"
            ],
            "office": "南京",
            "extn": "4226"
        }
    ]
}</code></pre>
            </div>
            <div class="tab-pane" id="DTHtml" role="tabpanel">
                <pre data-plugin="highlight"><code class="html">&lt;table class="table table-bordered table-hover dataTable table-striped width-full"&gt;
    &lt;thead&gt;
    &lt;tr&gt;
        &lt;th&gt;姓名&lt;/th&gt;
        &lt;th&gt;职位&lt;/th&gt;
        &lt;th&gt;工作地点&lt;/th&gt;
        &lt;th&gt;分机号&lt;/th&gt;
        &lt;th&gt;入职时间&lt;/th&gt;
        &lt;th&gt;年薪&lt;/th&gt;
    &lt;/tr&gt;
    &lt;/thead&gt;
    &lt;tfoot&gt;
    &lt;tr&gt;
        &lt;th&gt;姓名&lt;/th&gt;
        &lt;th&gt;职位&lt;/th&gt;
        &lt;th&gt;工作地点&lt;/th&gt;
        &lt;th&gt;分机号&lt;/th&gt;
        &lt;th&gt;入职时间&lt;/th&gt;
        &lt;th&gt;年薪&lt;/th&gt;
    &lt;/tr&gt;
    &lt;/tfoot&gt;
&lt;/table&gt;</code></pre>
            </div>
        </div>
    </div>
</div>


<script src="${ctx}/public/js/examples/tables/data-tables/ajax/objects-subarrays.js"></script>