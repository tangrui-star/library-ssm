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

    <table class="table table-hover text-center">
        <tr>
            <td  colspan="8">
                <div class="pagelist">
                    <!-- 分页开始 -->
                    <button class="button button-block bg-main text-big input-big">个人信息表</button>

                </div>
            </td>
        </tr>
    </table>


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
                        <a class="button border-main" href="${ctx}/login/update?rdID=${data.rdID}"><span class="icon-edit">修改</span></a>
                    </div>
                </td>
            </tr>
        </c:forEach>
    </table>

    <table class="table table-hover text-center" style="margin-top: 50px">
        <tr>
            <td  colspan="8">
                <div class="pagelist">
                    <!-- 分页开始 -->
                    <button class="button button-block bg-main text-big input-big">借阅信息表</button>

                </div>
            </td>
        </tr>
    </table>

    <table class="table table-hover text-center" style="margin-top: 50px">

        <tr>
            <th>借阅ID</th>
            <th>读者ID</th>
            <th>图书ID</th>
            <th>图书续借次数</th>
            <th>借书日期</th>
            <th>应还书日期</th>
            <th>实还书日期</th>
            <th>超期天数</th>
            <th>应罚款金额</th>
            <th>罚款金额</th>
            <th>是否还书</th>
            <th>操作</th>
        </tr>

        <c:forEach items="${pages1.datas}" var="data1" varStatus="1">

            <tr>
                <td>${data1.borrowID}</td>
                <td>${data1.rdID}</td>
                <td>${data1.bkID}</td>
                <td>${data1.ldContinueTimes}</td>
                <td><fmt:formatDate value="${data1.ldDateOut}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
                <td><fmt:formatDate value="${data1.ldDateRetPlan}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
                <td><fmt:formatDate value="${data1.ldDateRetAct}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
                <td>${data1.ldOverDay}</td>
                <td>${data1.ldOverMoney}</td>
                <td>${data1.ldPunishMoney}</td>
                <td>${data1.ldOverDay}</td>

                <td>
                    <div class="button-group">
                        <a class="button border-main" href="${ctx}/login/returnBook?borrowID=${data1.borrowID}"><span class="icon-edit">还书</span></a>
                    </div>
                </td>
            </tr>
        </c:forEach>
        <tr>
            <td  colspan="8">
                <div class="pagelist">
                    <!-- 分页开始 -->
                    <pg:pager url="${ctx}/login/userFindBySql" maxIndexPages="5" items="${pages1.total}" maxPageItems="15" export="curPage=pageNumber">
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
