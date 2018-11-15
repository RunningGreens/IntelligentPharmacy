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
	<form action="${pageContext.request.contextPath}/userPage/addFrontShopping.action" method="post">
	<div class="banner_x center">
			<a href="./index.html" target="_blank"><div class="logo fl"></div></a>
			
			<div class="wdgwc fl ml40">我的购物车</div>
			<div class="wxts fl ml20">温馨提示：产品是否购买成功，以最终下单为准哦，请尽快结算</div>
			<div class="dlzc fr">
				<ul>
					<li><a href="./login.html" target="_blank">登录</a></li>
					<li>|</li>
					<li><a href="./register.html" target="_blank">${sessionScope.userListSession.userName}</a></li>	
				</ul>
				
			</div>
			<div class="clear"></div>
		</div>

		<div class="xiantiao"></div>
		<div class="gwcxqbj">
			<div class="gwcxd center">
				<table class="tablelist" style="background-color: white">
					<tr>
						<th><input onclick="selectBoxAllbox()" type="checkbox" name="selectBoxAllbox" style="" id="selectBoxAllbox">
						</th>
						<th> 药品品名 </th>
						<th> 药品图片 </th>
						<th> 价格 </th>
						<th> 数量 </th>
						<th> 操作 </th>
					</tr>


					<c:choose>
						<c:when test="${not empty requestScope.shoppingCarList}">
								<c:forEach items="${requestScope.shoppingCarList}" var="carList">
									<tr>
										<td><input type="checkbox" value="${carList.pharmacyId},${carList.shoppingId}" name="selected" id="selected" onclick="funClickBox(${carList.pharmacyId},this)"></td>
										<td>${carList.drugName}</td>
										<td><img src="${pageContext.request.contextPath}/userPage/images.action?receiverId=${carList.pharmacyId}" width="60" height="60"></td>
										<td>${carList.drugPrice}</td>
										<td>1</td>
										<td>
											<input type="button" value="X" onclick="delCar(${carList.shoppingId})">
                                        </td>
									</tr>
								</c:forEach>
						</c:when>
						<c:otherwise>
							<tr>
								<td rowspan="6" >查无数据！</td>
							</tr>
						</c:otherwise>
					</c:choose>
                    <input type="hidden" id="shoppingPrice" value="${requestScope.upadetPriceList.drugPrice}">
                    <input id="priceHidden" type="hidden"  value="0"/>
                    <input id="checkPieceHidden" type="hidden"  value="0"/>
					<input id="userId" name="userId" type="hidden" value="${sessionScope.userListSession.userId}">
                </table>
			</div>
			<div class="gwcxd center">
				<span>请您填写您的收货地址：</span><input type="text" id="userAdderss" name="userAdderss"  placeholder="请填写地址"/>
			</div>

			<div class="jiesuandan mt20 center">
				<div class="tishi fl ml20">
					<ul>
						<li><a href="${pageContext.request.contextPath}/userPage/selectPhamacyDrugs.action">继续购物</a></li>
						<li>|</li>
						<c:forEach items="${requestScope.carNumList}" var="carNumList">
                            <li>共<span>${carNumList.allNum}</span>件商品已选择<span id="checkPieceId" >0</span>件</li>
						    <input type="hidden" id="numList" value="${carNumList.allNum}"/>
                        </c:forEach>
						<div class="clear"></div>
					</ul>
				</div>
				<div class="jiesuan fr">
					<div class="jiesuanjiage fl" id="priceNum">
                        <span >合计(不含运费):0元</span>
                    </div>

                    <div class="jsanniu fr"><input class="jsan" type="submit" name="jiesuan"  value="去结算"/></div>
					<div class="clear"></div>
				</div>
				<div class="clear"></div>
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
    /*用户-添加*/
    function user_management_add(title,url,w,h){
        x_admin_show(title,url,w,h);
    }
    /*用户-查看*/
    function user_management_show(title,url,w,h){
        x_admin_show(title,url,w,h);
    }
    // 用户-编辑
    function user_management_edit (title,url,w,h) {
        x_admin_show(title,url,w,h);
    }
</script>

<script type="text/javascript">
    $('.tablelist tbody tr:odd').addClass('odd');
</script>

<script>
    //复选框
    function selectBoxAllbox(){
        var adminName = $('#adminName').val();
        var shoppingPrice = $('#shoppingPrice').val();
        var price = $("#priceHidden").val();
        var checkPieceNum =$("#checkPieceHidden").val();
        var numList= $("#numList").val();
        var checklist = document.getElementsByName ("selected");
        if(document.getElementById("selectBoxAllbox").checked){
            console.log("全选");
            for(var i=0;i<checklist.length;i++){
                checklist[i].checked = 1;
            }
            $.post("/userPage/allPriceShoppingCar.action",
                {adminName: adminName
                },
                function (data) {
                    var info = data;
                    var sum =0;//总和
                    $("#priceNum").empty();
                    $("#checkPieceId").empty();
                    if (info.allPriceShoppingCar) {
                        for(var i=0;i<info.allPriceShoppingCar.length;i++){
                            var num = parseInt(info.allPriceShoppingCar[i].drugPrice);
                            sum += num*1+price*1;
                        }
                        $("#checkPieceId").append(numList);
                        $("#priceNum").append("<span>合计(不含运费):"+sum+"元</span>");
                        $("#priceHidden").val(sum);
                        $("#checkPieceHidden").val(numList);
                    } else {
                        console.log("更改失败");
                    }
                }, "json");

        }else{
            console.log("取消");
            for(var j=0;j<checklist.length;j++){
                checklist[j].checked = 0;
            }
            $.post("/userPage/allPriceShoppingCar.action",
                {adminName: adminName
                },
                function (data) {
                    var info = data;
                    var sum =0;
                    $("#priceNum").empty();
                    $("#checkPieceId").empty();
                    if (info.allPriceShoppingCar) {
                        for(var i=0;i<info.allPriceShoppingCar.length;i++){
                            var num = parseInt(info.allPriceShoppingCar[i].drugPrice);
                            console.log("checkPieceNum="+checkPieceNum)
                        }
                        $("#checkPieceId").append(0);
                        $("#priceNum").append("<span>合计(不含运费):"+0+"元</span>");
                        $("#priceHidden").val(0);
                        $("#checkPieceHidden").val(0);
                    } else {
                        console.log("更改失败");
                    }
                }, "json");

        }
    }
//购物车删除
	function delCar(shoppingId) {
        var adminName = $('#adminName').val();
        $.post("/userPage/deleteShoppingCar.action",
            {shoppingId: shoppingId
            },
            function (data) {
                var info = data;
                if (info.delUserCar) {
					console.log("删除物品");
                    window.location.href="${pageContext.request.contextPath}/userPage/selectShoppingCar.action?userId=1";

                } else {
                    console.log("删除失败");
                }
            }, "json");
    }
    //更改复选框
    function funClickBox(pharmacyId,checkbox){
        var adminName = $('#adminName').val();
        var shoppingPrice = $('#shoppingPrice').val();
        var price = $("#priceHidden").val();
        var checkPieceNum =$("#checkPieceHidden").val();
       if(checkbox.checked == true){
        $.post("/userPage/upadetPriceShoppingCar.action",
            {pharmacyId: pharmacyId
            },
            function (data) {
                var info = data;
                var checkNum=0;
                var sum =0;//总和
                $("#priceNum").empty();
                $("#checkPieceId").empty();
                if (info.priceShopingCarList) {
                    for(var i=0;i<info.priceShopingCarList.length;i++){
                        var num = parseInt(info.priceShopingCarList[i].drugPrice);
                        sum = num*1+price*1;
                        checkNum =  checkPieceNum*1+1;

                        $("#checkPieceId").append(checkNum);
                        console.log("checkNum="+checkNum)
                        $("#priceNum").append("<span>合计(不含运费):"+sum+"元</span>");
                        $("#priceHidden").val(sum);
                        $("#checkPieceHidden").val(checkNum);
                    }
                } else {
                    console.log("更改失败");
                }
            }, "json");
        }
       else {
           $.post("/userPage/upadetPriceShoppingCar.action",
               {pharmacyId: pharmacyId
               },
               function (data) {
                   var info = data;
                   var sum =0;
                   var m =0;
                   $("#priceNum").empty();
                   $("#checkPieceId").empty();
                   if (info.priceShopingCarList) {
                       for(var i=0;i<info.priceShopingCarList.length;i++){
                           var num = parseInt(info.priceShopingCarList[i].drugPrice);
                           sum = price*1-num*1;
                           m  =  checkPieceNum*1-1;
                           console.log("checkPieceNum="+checkPieceNum)
                           $("#checkPieceId").append(m);
                           $("#priceNum").append("<span>合计(不含运费):"+sum+"元</span>");
                           $("#priceHidden").val(sum);
                           $("#checkPieceHidden").val(m);
                       }
                   } else {
                       console.log("更改失败");
                   }
               }, "json");
       }
    }




</script>
</html>
