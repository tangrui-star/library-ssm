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
           <strong><span class="icon-pencil-square-o">添加借阅记录</span> </strong>
       </div>
       <div class="body-content">
           <form action="${ctx}/manageBorrow/exAdd" method="post" class="form-x">

               <div class="form-group">
                   <div class="label"><label>读者ID：</label></div>
                   <div class="field">
                       <input type="text" class="input w50" name="rdID" data-validate="required:请输入读者ID" />
                       <div class="tips"></div>
                   </div>
               </div>
               <div class="form-group">
                   <div class="label"><label>图书ID：</label></div>
                   <div class="field">
                       <input type="text" class="input w50" name="bkID" data-validate="required:请输入图书ID" />
                       <div class="tips"></div>
                   </div>
               </div>

               <div class="form-group">
                   <div class="label"><label>图书借阅次数：</label></div>
                   <div class="field">
                       <input type="text" class="input w50" name="ldContinueTimes" data-validate="required:请输入图书借阅次数" />
                       <div class="tips"></div>
                   </div>
               </div>

               <div class="form-group">
                   <div class="label"><label>借书日期：</label></div>
                   <div class="field">
                       <input type="text" class="input w50" name="ldDateOut" data-validate="required:请输入借书日期" />
                       <div class="tips"></div>
                   </div>
               </div>

               <div class="form-group">
                   <div class="label"><label>应还书日期：</label></div>
                   <div class="field">
                       <input type="text" class="input w50" name="ldDateRetPlan" data-validate="required:请输入应还书日期" />
                       <div class="tips"></div>
                   </div>
               </div>

               <div class="form-group">
                   <div class="label"><label>实还书日期：</label></div>
                   <div class="field">
                       <input type="text" class="input w50" name="ldDateRetAct" data-validate="required:请输入实还书日期" />
                       <div class="tips"></div>
                   </div>
               </div>

               <div class="form-group">
                   <div class="label"><label>超期天数：</label></div>
                   <div class="field">
                       <input type="text" class="input w50" name="ldOverDay" data-validate="required:请输入超期天数" />
                       <div class="tips"></div>
                   </div>
               </div>

               <div class="form-group">
                   <div class="label"><label>应罚款金额：</label></div>
                   <div class="field">
                       <input type="text" class="input w50" name="ldOverMoney" data-validate="required:请输入应罚款金额" />
                       <div class="tips"></div>
                   </div>
               </div>

               <div class="form-group">
                   <div class="label"><label>罚款金额：</label></div>
                   <div class="field">
                       <input type="text" class="input w50" name="ldPunishMoney" data-validate="required:请输入罚款金额" />
                       <div class="tips"></div>
                   </div>
               </div>

               <div class="form-group">
                   <div class="label"><label>是否还书：</label></div>
                   <div class="field">
                       <input type="text" class="input w50" name="lsHasReturn" data-validate="required:请输入是否还书" />
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
