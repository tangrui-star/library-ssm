<%--
  Created by IntelliJ IDEA.
  User: 13059
  Date: 2020/12/2
  Time: 12:26
  To change this template use File | Settings | File Templates.
--%>
<%@page language="java" contentType="text/html; character=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglibs.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>用户页面</title>
    <link rel="stylesheet" href="${ctx}/resource/css/pintuer.css">
    <link rel="stylesheet" href="${ctx}/resource/css/admin.css">
    <script src="${ctx}/resource/js/jquery.js"></script>
    <script src="${ctx}/resource/js/pintuer.js"></script>
</head>
<body style="background-color: #146d8b">
<div class="header bg-main" style="background-color: #146d8b">
    <div class="logo margin-big-left fadein-top" >
        <h1>欢迎！${rdName} 进入MOIL图书： </h1>
    </div>

    <div class="head-l" style="float:right ">
        <a class="button button-little bg-green" href="${ctx}/login/uIndex" target="_blank">
            <span class="icon-home"></span>图书系统首页
        </a>
        <a class="button button-little bg-red" href="mtuichu.html">
            <span class="icon-power-off"></span>退出登录
        </a>
        <a class="button button-little bg-red" href="${ctx}/login/changePwd">
            <span class="icon-mini-add"></span>修改密码
        </a>
    </div>
</div>
<div class="leftnav">
    <div class="leftnav-title"><strong><span class="icon-list">菜单列表</span> </strong></div>
    <h2><span class="icon-user"></span>基本设置 </h2>
    <ul style="display: block">
        <li><a href="${ctx}/login/findBySql" target="right"><span class="icon-caret-right"></span>图书</a> </li>
        <li><a href="${ctx}/login/userFindBySql?rdID=${rdID}" target="right"><span class="icon-caret-right"></span>个人信息</a>

        </li>


    </ul>
</div>
<ul class="bread">
    <li><a href="{:}" target="right" class="icon-home">首页</a> </li>
</ul>
<div class="admin">
    <iframe name="right" scrolling="auto" frameborder="0" width="100%" height="100%"></iframe>
</div>
</body>
</html>
