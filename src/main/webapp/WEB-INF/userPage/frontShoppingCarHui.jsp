<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"   %>
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<html xmlns:c="http://www.w3.org/1999/XSL/Transform">
<meta name="author" content="order by dede58.com"/>
<link rel="stylesheet" type="text/css" href="../css/user/style.css">
<head>
	<meta charset="utf-8">
	<title>购物车页面</title>
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="format-detection" content="telephone=no">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/x-admin.css" media="all">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/pag.css" media="all">
</head>
<body>
	<!-- start header -->
	<!--end header -->

<!-- start banner_x -->
	<form action="${pageContext.request.contextPath}/userPage/addFrontShopping.action?" method="post">
	<div class="banner_x center">
			<a href="./index.html" target="_blank"><div class="logo fl"></div></a>
			
			<div class="wdgwc fl ml40">我的购物车|${sessionScope.userListSession.userName}</div>
			<div class="wxts fl ml20">温馨提示：产品购买成功，请保持手机通畅，我们会尽快送达</div>
			<div class="dlzc fr">
				<ul>
					<li><a href="./login.html" target="_blank">登录</a></li>
					<li>|</li>
				</ul>
				
			</div>
			<div class="clear"></div>
		</div>

		<div class="xiantiao"></div>
		<div class="gwcxqbj">
			<div class="gwcxd center">

				<li>恭喜${sessionScope.userListSession.userName}！！购物成功！！</li>

			</div>
			<div class="jiesuandan mt20 center">
				<div class="tishi fl ml20">
					<ul>
						<li><a href="${pageContext.request.contextPath}/userPage/selectPhamacyDrugs.action">继续购物</a></li>
						<li>|</li>
						<li><a href="${pageContext.request.contextPath}/userPage/selectShoppingCar.action?userId=${sessionScope.userListSession.userId}">返回购物车</a></li>
					</ul>
				</div>

			</div>
			
		</div>
	</form>
  


	<!-- footer -->
	<footer class="center">
			
			<%--<div class="mt20">小米商城|MIUI|米聊|多看书城|小米路由器|视频电话|小米天猫店|小米淘宝直营店|小米网盟|小米移动|隐私政策|Select Region</div>
			<div>©mi.com 京ICP证110507号 京ICP备10046444号 京公网安备11010802020134号 京网文[2014]0059-0009号</div> 
			<div>违法和不良信息举报电话：185-0130-1238，本网站所列数据，除特殊说明，所有数据均出自我司实验室测试</div>--%>
		</footer>

	</body>

<script src="${pageContext.request.contextPath}/lib/layui/layui.js" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/js/x-layui.js" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/js/jquery2.js" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/js/js.js" charset="utf-8"></script>
<script>
    layui.use(['laydate','element','laypage','layer'], function(){
        $ = layui.jquery;
        lement = layui.element();//面包导航
        laypage = layui.laypage;//分页
        layer = layui.layer;//弹出层

    });

</script>

<script type="text/javascript">
    $('.tablelist tbody tr:odd').addClass('odd');
</script>

</html>
