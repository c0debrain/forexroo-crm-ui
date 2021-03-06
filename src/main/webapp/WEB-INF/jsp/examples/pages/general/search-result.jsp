<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../../includes/taglib.jsp"%>

<title>搜索</title>

<link rel="stylesheet" href="${ctx}/public/css/examples/pages/general/search-result.css">

<div class="page animation-fade page-serch">
    <div class="page-content">

        <div class="panel">
            <div class="panel-body">
                <form class="page-search-form" role="search">
                    <div class="input-search input-search-dark">
                        <i class="input-search-icon wb-search" aria-hidden="true"></i>
                        <input type="text" class="form-control" value="nodejs 教程" id="inputSearch" name="search" placeholder="请输入关键词">
                        <button type="button" class="input-search-close icon wb-close" aria-label="关闭"></button>
                    </div>
                </form>
                <h2 class="page-search-title">以下是为您找的关于“nodejs <span class="red-600">教程</span>”的相关结果</h2>
                <p class="page-search-count">找到约 <span>519,000</span> 条结果 （用时 <span>0.23</span> 秒） </p>
                <ul class="list-group list-group-full list-group-dividered">
                    <li class="list-group-item">
                        <h4>
                            <a href="www.runoob.com/nodejs/nodejs-tutorial.html"><span class="red-600">Node.js</span>
                                <span class="red-600">教程</span>| 菜鸟<span class="red-600">教程</span></a>
                        </h4>
                        <a class="search-result-link" href="http://www.runoob.com/nodejs/nodejs-tutorial.html" target="_blank">
                            www.runoob.com/nodejs/nodejs-tutorial.html
                        </a>
                        <p><span class="red-600">Node.js</span>
                            <span class="red-600">教程</span>简单的说<span class="red-600">Node.js</span> 就是运行在服务端的JavaScript。
                            <span class="red-600">Node.js</span> 是一个基于Chrome JavaScript 运行时建立的一个平台。
                            <span class="red-600">Node.js</span>是一个事件驱动I/O服务 ...</p>
                    </li>
                    <li class="list-group-item">
                        <h4>
                            <a href="https://github.com/amazingSurge?tab=repositories" target="_blank">Node入门»
                                一本全面的<span class="red-600">Node.js <span class="red-600">教程</span></span> - The Node
                                Beginner Book
                            </a>
                        </h4>
                        <a class="search-result-link" href="http://www.nodebeginner.org/index-zh-cn.html">
                            www.nodebeginner.org/index-zh-cn.html
                        </a>
                        <p>一本适合<span class="red-600">Node.js</span>初学者的全面<span class="red-600">教程</span>：教你如何使用服务端JavaScript来构建一个完整的web应用.
                        </p>
                    </li>
                    <li class="list-group-item">
                        <h4>
                            <a href="https://nqdeng.github.io/7-days-nodejs/">七天学会NodeJS</a>
                        </h4>
                        <a class="search-result-link" href="https://nqdeng.github.io/7-days-nodejs/" target="_blank">
                            https://nqdeng.github.io/7-days-nodejs/
                        </a>
                        <p>而运行在NodeJS中的JS的用途是操作磁盘文件或搭建HTTP服务器，NodeJS就相应 ....
                            同学而言编写过于困难，并且难以跨平台使用，因此不在本<span class="red-600">教程</span>的覆盖范围内。 </p>
                    </li>
                    <li class="list-group-item">
                        <h4>
                            <a href="https://github.com/alsotang/node-lessons">GitHub - alsotang/node-lessons:
                                《<span class="red-600">Node.js</span> 包教不包会》
                            </a>
                        </h4>
                        <a class="search-result-link" href="https://github.com/alsotang/node-lessons">
                            https://github.com/alsotang/node-lessons
                        </a>
                        <p>closed_book:《<span class="red-600">Node.js</span> 包教不包会》. Contribute to node-lessons
                            development by creating an account on GitHub. </p>
                    </li>
                    <li class="list-group-item">
                        <h4>
                            <a href="https://www.zhihu.com/question/19793473">
                                怎样有效地学习<span class="red-600">Node.js</span>？ - 自学- 知乎
                            </a>
                        </h4>
                        <a class="search-result-link" href="https://www.zhihu.com/question/19793473">
                            https://www.zhihu.com/question/19793473
                        </a>
                        <p>要学习NodeJs，必须有一定的JavaScript基础，理解事件模型，了解JavaScript的语法和特性，理解JavaScript面向对象 ...
                            这个是中文版的经典入门<span class="red-600">教程</span>：Node入门 2. </p>
                    </li>
                    <li class="list-group-item">
                        <h4>
                            <a href="https://www.gitbook.com/book/wizardforcel/w3school-nodejs/details">W3School
                                <span class="red-600">Node.js</span> <span class="red-600">教程</span>· GitBook
                            </a>
                        </h4>
                        <a class="search-result-link" href="https://www.gitbook.com/book/wizardforcel/w3school-nodejs/details">
                            https://www.gitbook.com/book/wizardforcel/w3school-nodejs/details
                        </a>
                        <p>w3school-nodejs: 已废弃. ... W3School <span class="red-600">Node.js</span>
                            <span class="red-600">教程</span>. Updated 9 months ago. About · 0 Discussions. Star 19.
                            Subscribe 7 · Read · Download PDF ... </p>
                    </li>
                </ul>
                <nav>
                    <ul data-plugin="twbsPagination" data-total-pages="50" data-pagination-class="pagination pagination-no-border"></ul>
                </nav>
            </div>
        </div>

    </div>
</div>

<script src="${ctx}/public/vendor/twbs-pagination/jquery.twbsPagination.min.js"></script>
