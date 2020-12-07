<%@page language="java" contentType="text/html; character=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<div>

<%--    <div class="width100" >
    <div class="width1200 center_yh font14 c_66" >--%>
<%--        <div style="text-align: center">
            <h1>欢迎来到图书借阅系统</h1>
        </div>
        <div class="right_yh" id="fast_jump">
            <c:if test="${userId!=null}">
                <a href="#">欢迎您：${username}</a>
                <b></b>
                <a href="${ctx}/login/uTui">退出</a>
                <b></b>
                <a href="${ctx}/car/findBySql">我的购物车</a>
                <b></b>
            </c:if>
            <c:if test="${userId==null}">
                <a href="${ctx}/login/uLogin">登录</a>
                <b></b>

            </c:if>
            <a href="${ctx}/user/view">个人中心</a>
        </div>--%>
    <div class="container">
        <div class="line bouncein" >
            <div class="xs6 xm4 xs3-move xm4-move" >
                <div style="height: 150px;"></div>
                <div class="media media-y margin-big-bottom" ></div>


                    <div class="panel login-box" style="background-color:transparent;">
                        <div class="text-center margin-big padding-big-top"><h1 style="color: white;font-size: 70px;font-family:'Showcard Gothic'">图书借阅系统</h1></div>
                        <div style="width: 200px;margin:70px auto">
                            <a style="width: 200px;text-align: center" class="button button-little bg-green" href="${ctx}/login/uLogin" target="_blank">
                               用户登录
                            </a>
                        </div>
                        <div style="width: 200px;margin:20px auto">
                            <a style="width: 200px;text-align: center" class="button button-little bg-green" href="${ctx}/login/login" target="_blank">
                               管理员登录
                            </a>
                        </div>
                        <div  class="panel-body" style="padding: 30px;padding-bottom: 100px; padding-top: 10px;">
                        </div>

                    </div>

            </div>
        </div>
    </div>
<%--</div>
</div>--%>

<%--
<div class="product_box member" style="position: absolute;width: 100%;height: 100%;top: 0;left: -9999px;">
    <div class="bg_box" style="position: absolute;width: 100%;height: 100%;top: 0;left: 0;background-position: center center;background-repeat: no-repeat;">
        <img src="${ctx}/resource/img/bg_member.jpg"></div>
    <div class="content">
        <div class="main_box">
            <h2 class="hide_txt  png">
                <span class="txt_1 png">快</span>
                <span class="txt_2 png">让</span>
                <span class="txt_3 png">生</span>
                <span class="txt_4 png">活</span>
                <span class="txt_5 png">慢</span>
                <span class="txt_6 png">下</span>
                <span class="txt_7 png">来</span>
            </h2>
            <a href="#" class="btn_product" title="迅雷会员">迅雷会员</a>
        </div>
    </div>
</div>
--%>


<div style="text-align:center;">
</div>