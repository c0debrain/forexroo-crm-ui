<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../../includes/taglib.jsp"%>

<title>代码编辑器</title>

<link rel="stylesheet" href="${ctx}/public/vendor/bootstrap-treeview/bootstrap-treeview.css">
<link rel="stylesheet" href="${ctx}/public/vendor/codemirror/codemirror.css">
<link rel="stylesheet" href="${ctx}/public/vendor/codemirror/theme/eclipse.css">
<link rel="stylesheet" href="${ctx}/public/vendor/codemirror/addon/scroll/simplescrollbars.css">
<link rel="stylesheet" href="${ctx}/public/css/examples/pages/general/code-editor.css">

<div class="page page-full animation-fade page-code-editor">
    <div class="page-aside">
        <div class="page-aside-switch">
            <i class="icon wb-chevron-left" aria-hidden="true"></i>
            <i class="icon wb-chevron-right" aria-hidden="true"></i>
        </div>
        <div class="page-aside-inner height-full" data-plugin="slimScroll">
            <section class="page-aside-section">
                <h4 class="page-aside-title">代码编辑器</h4>
                <div id="filesTree"></div>

                <div id="filesContextMenu">
                    <ul class="dropdown-menu" role="menu">
                        <li>
                            <a tabindex="-1"><i class="icon wb-pencil" aria-hidden="true"></i> 重命名...</a>
                        </li>
                        <li>
                            <a tabindex="-1"><i class="icon wb-search" aria-hidden="true"></i> 查找...</a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a tabindex="-1"><i class="icon wb-file" aria-hidden="true"></i> 新建</a>
                        </li>
                        <li>
                            <a tabindex="-1"><i class="icon wb-folder" aria-hidden="true"></i> 新建文件夹...</a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a tabindex="-1"><i class="icon wb-close" aria-hidden="true"></i> 删除...</a>
                        </li>
                    </ul>
                </div>
            </section>
        </div>
    </div>
    <div class="page-main">
        <div class="page-content">
            <textarea id="code">
<!doctype html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title></title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="apple-touch-icon" href="apple-touch-icon.png">

    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/main.css">
    <script src="js${ctx}/public/vendor/modernizr-2.8.3.js"></script>
</head>

<body>
    <!--[if lt IE 8]><p class="browserupgrade">您的浏览器太旧啦，请升级浏览器。</p><![endif]-->

    <p>Hi，这是一个演示页面。</p>

    <p>Hello world!</p>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/jquery.js"></script>
    <script>
        window.jQuery || document.write('<script src="js${ctx}/public/vendor/jquery-.js"><\/script>')
    </script>
    <script src="js/plugins.js"></script>
    <script src="js/main.js"></script>
</body>

            </textarea>
        </div>
    </div>
</div>

<script src="${ctx}/public/vendor/bootstrap-treeview/bootstrap-treeview.min.js" data-name="treeview"></script>
<script src="${ctx}/public/vendor/codemirror/codemirror.js" data-name="codemirror"></script>
<script src="${ctx}/public/vendor/codemirror/addon/scroll/simplescrollbars.js" data-deps="codemirror"></script>
<script src="${ctx}/public/vendor/codemirror/mode/xml/xml.js" data-deps="codemirror"></script>
<script src="${ctx}/public/vendor/codemirror/mode/css/css.js"></script>
<script src="${ctx}/public/vendor/codemirror/mode/htmlmixed/htmlmixed.js"></script>
<script src="${ctx}/public/vendor/bootstrap-contextmenu/bootstrap-contextmenu.min.js"></script>
<script src="${ctx}/public/js/examples/pages/general/code-editor.js" data-deps="treeview, codemirror"></script>
