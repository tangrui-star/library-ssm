<%--
  Created by IntelliJ IDEA.
  User: 13059
  Date: 2020/12/2
  Time: 16:45
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
       <form action="${ctx}/login/findBySql" id="listform" method="post">
       <div class="padding border-bottom">
           <ul class="search" style="padding-left: 10px;">
            <%--   <li>
                   <a class="button border-main icon-plus-square-o" href="${ctx}/manageBooks/add">图书</a>
               </li>--%>
               <li>
                   <input type="text" placeholder="请输入图书名称" name="bkName" class="input" value="${obj.bkName}"
                          style="width: 250px;line-height: 17px;display: inline-block" />
                   <a href="javascript:void(0)" onclick="changeSearch()" class="button border-main icon-search">搜索</a>
               </li>
           </ul>
       </div>
       </form>


       <table class="table table-hover text-center">
           <tr>
               <th>图书序号</th>
               <th>图书编码</th>
               <th>图书名</th>
               <th>图书作者</th>
               <th>图书出版社</th>
               <th>图书出版时间</th>
               <th>图书分类</th>

               <th>图书价格</th>
<%--               <th>图书入馆时间</th>--%>
               <th>图书简介</th>
               <th>在馆数量</th>
               <th>操作</th>
           </tr>

           <c:forEach items="${pages.datas}" var="data" varStatus="1">

               <tr>
                   <td>${data.bkID}</td>
                   <td>${data.bkCode}</td>
                   <td>${data.bkName}</td>
                   <td>${data.bkAuthor}</td>
                   <td>${data.bkPress}</td>
                   <td><fmt:formatDate value="${data.bkDatePress}" pattern="yyyy-MM-dd" /></td>
                   <td>${data.bkCatalog}</td>
                   <td>${data.bkPrice}</td>
<%--                   <td><fmt:formatDate value="${data.bkDateInput}" pattern="yyyy-MM-dd HH:mm:ss" /></td>--%>
                   <td>${data.bkBrief}</td>
                   <td>${data.bkStatus}</td>
                   <td>
                       <div class="button-group">
<%--
                           <a class="button border-main" href="${ctx}/login/borrow?bkID=${data.bkID}"><span class="icon-edit">借书</span></a>--%>
                           <form action="${ctx}/login/borrow" method="post">
                                       <input type="hidden" name="bkID" value="${data.bkID}"/>
                                       <input type="hidden" name="rdID" value="${rdID}">
                                       <input  type="submit" class="button border-main" value="借书" />
                           </form>


<%--
                           style="color: #3b72c3;margin:45px auto"
                           <a class="button border-red" href="${ctx}/manageBooks/delete?bkID=${data.bkID}"><span class="icon-trash-o">删除</span></a>
--%>
                       </div>
                   </td>
               </tr>
           </c:forEach>
           <tr>
               <td  colspan="8">
                   <div class="pagelist">
                       <!-- 分页开始 -->
                           <pg:pager url="${ctx}/manageBooks/findBySql" maxIndexPages="5" items="${pages.total}" maxPageItems="15" export="curPage=pageNumber">
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
