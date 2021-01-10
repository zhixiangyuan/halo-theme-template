<#macro layout>
    <!DOCTYPE html>
    <html>
    <head>
        <!-- 页面元数据 -->
        <title>${title!blog_title!}</title>

        <!-- 引入 vue -->
        <script src="https://cdn.jsdelivr.net/npm/vue@2.6.12"></script>

        <!-- 系统 > 博客设置 > 基础选项 > 其他设置 > 自定义全局 head -->
        <@global.head />

    </head>
    <body>
    <div id="app">

    </div>
    <!-- 注入灵魂 -->
    <#include "../state/basic.ftl">
    <#nested>
    <!-- 控制页面的 js -->
    <script src="${theme_base!}/dist/main.js"></script>
    <@global.footer />
    </body>
    </html>
</#macro>