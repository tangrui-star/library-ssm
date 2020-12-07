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
        <form action="${ctx}/manageBooks/exUpdate" method="post" class="form-x">
            <input type="hidden" name="bkID" value="${obj.bkID}">
            <div class="form-group">
                <div class="label"><label>图书编号：</label></div>
                <div class="field">
                    <input type="text" class="input w50" name="bkCode" data-validate="required:请输入作者" value="${obj.bkCode}"/>
                    <div class="tips"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="label"><label>图书名称：</label></div>
                <div class="field">
                    <input type="text" class="input w50" name="bkName" data-validate="required:请输入图书名称" value="${obj.bkName}"/>
                    <div class="tips"></div>
                </div>
            </div>

            <div class="form-group">
                <div class="label"><label>图书作者：</label></div>
                <div class="field">
                    <input type="text" class="input w50" name="bkAuthor" data-validate="required:请输入作者" value="${obj.bkAuthor}"/>
                    <div class="tips"></div>
                </div>
            </div>

            <div class="form-group">
                <div class="label"><label>图书出版社：</label></div>
                <div class="field">
                    <input type="text" class="input w50" name="bkPress" data-validate="required:请输入图书出版社" value="${obj.bkPress}"/>
                    <div class="tips"></div>
                </div>
            </div>

            <div class="form-group">
                <div class="label"><label>图书出版时间：</label></div>
                <div class="field">
                    <input type="text" class="input w50" name="bkDatePress" data-validate="required:请输入图书出版时间" value="<fmt:formatDate value="${obj.bkDatePress}" pattern="yyyy-MM-dd" />"/>
                    <div class="tips"></div>
                </div>
            </div>

            <div class="form-group">
                <div class="label"><label>图书分类：</label></div>
                <div class="field">
                    <input type="text" class="input w50" name="bkCatalog" data-validate="required:请输入图书分类" value="${obj.bkCatalog}"/>
                    <div class="tips"></div>
                </div>
            </div>

            <div class="form-group">
                <div class="label"><label>图书价格：</label></div>
                <div class="field">
                    <input type="text" class="input w50" name="bkPrice" data-validate="required:请输入图书价格" value="${obj.bkPrice}"/>
                    <div class="tips"></div>
                </div>
            </div>

            <div class="form-group">
                <div class="label"><label>图书简介：</label></div>
                <div class="field">
                    <script type="text/plain" id="bkBrief" name="ms" style="width: 100%;height: 300px;">${obj.bkBrief}</script>
                    <script type="text/javascript">
                        var editor = UE.getEditor('bkBrief');
                        UE.Editor.prototype._bkGetActionUrl = UE.Editor.prototype.getActionUrl;
                        UE.Editor.prototype.getActionUrl = function (action) {
                            if(action == 'uploadimage' || action == 'uploadscrawl' || action == 'uploadvideo'){
                                return '${ctx}/ueditor/saveFile';
                            }else{
                                return this._bkGetActionUrl.call(this,action);
                            }
                        }
                    </script>
                    <div class="tips"></div>
                </div>
            </div>

            <div class="form-group">
                <div class="label"><label>在馆：</label></div>
                <div class="field">
                    <input type="text" class="input w50" name="bkStatus" data-validate="required:请输入图书在馆状态" value="${obj.bkStatus}"/>
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
