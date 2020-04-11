<#macro html page_title page_tab>
    <!doctype html>
    <html lang="zh-CN">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport"
              content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>${page_title!}</title>
<#--        <link rel="icon" href="https://yiiu.co/favicon.ico">-->


        <link rel="stylesheet" href="/static/assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="/static/assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="/static/assets/css/themify-icons.css">
        <link rel="stylesheet" href="/static/assets/css/metisMenu.css">
        <link rel="stylesheet" href="/static/assets/css/owl.carousel.min.css">
        <link rel="stylesheet" href="/static/assets/css/slicknav.min.css">
        <!-- amchart css -->
<#--        <link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />-->
        <!-- others css -->
        <link rel="stylesheet" href="/static/assets/css/typography.css">
        <link rel="stylesheet" href="/static/assets/css/default-css.css">
        <link rel="stylesheet" href="/static/assets/css/styles.css">
        <link rel="stylesheet" href="/static/assets/css/responsive.css">
        <!-- modernizr css -->
<#--        <script src="/static/assets/js/vendor/modernizr-2.8.3.min.js"></script>-->



        <#--css-->
<#--        <link rel="stylesheet"-->
<#--              href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css"/>-->
<#--        <link rel="stylesheet"-->
<#--              href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>-->
<#--        <link rel="stylesheet" href="/static/theme/default/css/app.css"/>-->
        <#--javascript-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
        <script src="/static/theme/default/libs/layer/layer.js"></script>
        <script src="/static/theme/default/js/app.js"></script>

    </head>
    <body class="body-bg">
    <div class="wrapper">
        <#include "x_header.ftl"/>
        <@header page_tab=page_tab/>
        <div class="container">
            <#nested />
        </div>
    </div>
    <#include "footer.ftl"/>
    <#include "../components/websocket.ftl"/>
    </body>
    </html>
</#macro>
