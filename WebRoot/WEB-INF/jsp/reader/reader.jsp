<%--
  Created by IntelliJ IDEA.
  User: 13059
  Date: 2020/12/4
  Time: 11:05
  To change this template use File | Settings | File Templates.
--%>
<%@page language="java" contentType="text/html; character=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglibs.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>管理员登录</title>
    <link type="text/css" rel="stylesheet" href="${ctx}/resource/ml/css/style.css">
    <link type="text/css" rel="stylesheet" href="${ctx}/resource/css/pintuer.css">
    <link type="text/css" rel="stylesheet" href="${ctx}/resource/css/admin.css">
    <script src="${ctx}/resource/js/jquery.js"></script>
    <script src="${ctx}/resource/js/pintuer.js"></script>
</head>
<body>
<div class="panel admin-panel">
    <form action="${ctx}/reader/findBySql" id="listform" method="post">
        <div class="padding border-bottom">
            <ul class="search" style="padding-left: 10px;">
                <li>
                    <a class="button border-main icon-plus-square-o" href="${ctx}/reader/add">添加读者</a>
                </li>
                <li>
                    <input type="text" placeholder="请输入读者名字" name="rdName" class="input" value="${obj.rdName}"
                           style="width: 250px;line-height: 17px;display: inline-block" />
                    <a href="javascript:void(0)" onclick="changeSearch()" class="button border-main icon-search">搜索</a>
                </li>
            </ul>
        </div>
    </form>

    <table class="table table-hover text-center">
        <tr>
            <th>读者ID</th>
            <th>读者名</th>
            <th>性别</th>
            <th>读者类型</th>
            <th>读者单位/学院</th>
            <th>电话</th>
            <th>Email</th>
            <th>借书本数</th>
            <th>操作</th>
        </tr>
        <c:forEach items="${pages.datas}" var="data" varStatus="1">

            <tr>
                <td>${data.rdID}</td>
                <td>${data.rdName}</td>
                <td>${data.rdSex}</td>
                <td>${data.rdType}</td>
                <td>${data.rdDept}</td>
<%--                <td><fmt:formatDate value="${data.bkDatePress}" pattern="yyyy-MM-dd" /></td>--%>
                <td>${data.rdPhone}</td>
                <td>${data.rdEmail}</td>
                    <%--                   <td><fmt:formatDate value="${data.bkDateInput}" pattern="yyyy-MM-dd HH:mm:ss" /></td>--%>
                <td>${data.rdBorrowQty}</td>

                <td>
                    <div class="button-group">
                        <a class="button border-main" href="${ctx}/reader/update?rdID=${data.rdID}"><span class="icon-edit">修改</span></a>
                        <a class="button border-red" href="${ctx}/reader/delete?rdID=${data.rdID}"><span class="icon-trash-o">删除</span></a>
                    </div>
                </td>
            </tr>
        </c:forEach>
        <tr>
            <td  colspan="8">
                <div class="pagelist">
                    <!-- 分页开始 -->
                    <pg:pager url="${ctx}/reader/findBySql" maxIndexPages="5" items="${pages.total}" maxPageItems="15" export="curPage=pageNumber">
                        <pg:last>
                            共${pages.total}记录，共${pageNumber}页，
                        </pg:last>
                        当前第${curPage}页
                        <pg:first>
                            <a href="${pageUrl}">首页</a>
                        </pg:first>
                        <pg:prev>
                            <a href="${pageUrl}">上一页</a>
                        </pg:prev>
                        <pg:pages>
                            <c:choose>
                                <c:when test="${curPage eq pageNumber}">
                                    <font color="red">[${pageNumber}]</font>
                                </c:when>
                                <c:otherwise>
                                    <a href="${pageUrl}">${pageNumber}</a>
                                </c:otherwise>
                            </c:choose>
                        </pg:pages>
                        <pg:next>
                            <a href="${pageUrl}">下一页</a>
                        </pg:next>
                        <pg:last>
                            <c:choose>
                                <c:when test="${curPage eq pageNumber}">
                                    <font color="red">尾页</font>
                                </c:when>
                                <c:otherwise>
                                    <a href="${pageUrl}">尾页</a>
                                </c:otherwise>
                            </c:choose>
                        </pg:last>
                    </pg:pager>
                </div>
            </td>
        </tr>
    </table>
</div>
<script>
    function changeSearch(){
        $("#listform").submit();
    }
</script>
</body>
</html>
