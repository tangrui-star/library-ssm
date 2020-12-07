<%--
  Created by IntelliJ IDEA.
  User: 13059
  Date: 2020/12/2
  Time: 19:12
  To change this template use File | Settings | File Templates.
--%>
<%@page language="java" contentType="text/html; character=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglibs.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <title>管理员后台</title>
    <link rel="stylesheet" href="${ctx}/resource/css/pintuer.css">
    <link rel="stylesheet" href="${ctx}/resource/css/admin.css">

    <script src="${ctx}/resource/js/jquery.js"></script>
    <script src="${ctx}/resource/js/pintuer.js"></script>
    <script type="text/javascript" src="${ctx}/resource/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" src="${ctx}/resource/ueditor/ueditor.all.min.js"></script>

</head>
<body>
<div class="panel admin-panel">
    <div class="panel-head" id="add">
        <strong><span class="icon-pencil-square-o">修改图书</span> </strong>
    </div>
    <div class="body-content">
        <form action="${ctx}/reader/exAdd" method="post" class="form-x">
            <input type="hidden" name="rdID" value="${obj.rdID}">
            <div class="form-group">
                <div class="label"><label>读者名：</label></div>
                <div class="field">
                    <input type="text" class="input w50" name="rdName" data-validate="required:请设定读者名" value="${obj.rdName}"/>
                    <div class="tips"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="label"><label>性别：</label></div>
                <div class="field">
                    <input type="text" class="input w50" name="rdSex" data-validate="required:请输入性别" value="${obj.rdSex}" />
                    <div class="tips"></div>
                </div>
            </div>

            <div class="form-group">
                <div class="label"><label>读者类型：</label></div>
                <div class="field">
                    <input type="text" class="input w50" name="rdType" data-validate="required:请输入读者类型" value="${obj.rdType}"/>
                    <div class="tips"></div>
                </div>
            </div>

            <div class="form-group">
                <div class="label"><label>读者单位/学院：</label></div>
                <div class="field">
                    <input type="text" class="input w50" name="rdDept" data-validate="required:请输入读者单位/学院" value="${obj.rdDept}"/>
                    <div class="tips"></div>
                </div>
            </div>

            <div class="form-group">
                <div class="label"><label>读者电话：</label></div>
                <div class="field">
                    <input type="text" class="input w50" name="rdPhone" data-validate="required:请输入读者电话" value="${obj.rdPhone}"/>
                    <div class="tips"></div>
                </div>
            </div>

            <div class="form-group">
                <div class="label"><label>读者Email：</label></div>
                <div class="field">
                    <input type="text" class="input w50" name="rdEmail" data-validate="required:请输入Email" value="${obj.rdName}"/>
                    <div class="tips"></div>
                </div>
            </div>

            <div class="form-group">
                <div class="label"><label>借书数量：</label></div>
                <div class="field">
                    <input type="text" class="input w50" name="rdBorrowQty" data-validate="required:请输入借书数量" value="${obj.rdBorrowQty}"/>
                    <div class="tips"></div>
                </div>
            </div>

            <div class="form-group">
                <div class="label"><label>读者密码：</label></div>
                <div class="field">
                    <input type="password" class="input w50" name="rdPwd" data-validate="required:请设定读者的初始密码" value="${obj.rdPwd}"/>
                    <div class="tips"></div>
                </div>
            </div>

            <div class="form-group">
                <div class="label"></div>
                <div class="field">
                    <button class="button bg-main icon-check-square-o" type="submit">提交</button>
                </div>
            </div>
        </form>
    </div>
</div>
</body>
</html>
