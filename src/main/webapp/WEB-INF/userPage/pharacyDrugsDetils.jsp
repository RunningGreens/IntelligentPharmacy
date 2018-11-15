<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/8/26 0026
  Time: 下午 12:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"   %>
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="author" content="order by dede58.com"/>
    <title>药品商城</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/user/style.css">
</head>
<body>
<!-- start header -->
<header>
    <div class="top center">
        <div class="left fl">
            <ul>
                <li><a href="http://www.mi.com/" target="_blank">药品商城</a></li>
                <li>|</li>
                <li><a href="">DRUG</a></li>
                <li>|</li>
                <li><a href="">多看阅读</a></li>
                <li>|</li>
                <li><a href="">云服务</a></li>
                <li>|</li>
                <li><a href="">金融</a></li>
                <li>|</li>
                <li><a href="">药品商城移动版</a></li>
                <li>|</li>
                <li><a href="">问题反馈</a></li>
                <li>|</li>
                <li><a href="">Select Region</a></li>
                <div class="clear"></div>
            </ul>
        </div>
        <div class="right fr">
            <div class="gouwuche fr"><a href="/userPage/selectShoppingCar.action?userId=${sessionScope.userListSession.userId}">购物车</a></div>
            <div class="fr">
                <ul>
                    <li><a href="./login.html" target="_blank">登录</a></li>
                    <li>|</li>
                    <li><a href="./register.html" target="_blank" >注册</a></li>
                    <li>|</li>
                    <li>
                        <c:choose><c:when test="${not empty sessionScope.userListSession}">
                            ${sessionScope.userListSession.userName}
                        </c:when></c:choose>
                    </li>
                </ul>
            </div>
            <div class="clear"></div>
        </div>
        <div class="clear"></div>
    </div>
</header>
<!--end header -->

<!-- start banner_x -->
<div class="banner_x center">
    <a href="${pageContext.request.contextPath}/userPage/selectPhamacyDrugs.action"><div class="ad_top fl"><img src="${pageContext.request.contextPath}/images/yao.png" style="width: 160px;height: 120px"/></div></a>
    <div class="nav fl">
        <ul>
            <c:forEach items="${requestScope.drugClassification}" var="drugClassificationTemp"  >
                <li><a href="${pageContext.request.contextPath}/userPage/selectPharmacyClassificationPhamacyDrugDetils.action?drugClassificationId=${drugClassificationTemp.drugClassificationId}">${drugClassificationTemp.drugClassificationName}</a></li>
            </c:forEach>
        </ul>
    </div>
    <div class="search fr">
        <form action="" method="post">
            <div class="text fl">
                <input type="text" class="shuru"  placeholder="药品   ">
            </div>
            <div class="submit fl">
                <input type="submit" class="sousuo" value="搜索"/>
            </div>
            <div class="clear"></div>
        </form>
        <div class="clear"></div>
    </div>
</div>
<!-- end banner_x -->


<!-- xiangqing -->
<form action="post" method="">
    <div class="jieshao mt20 w">
        <div class="left fl"><img src="${pageContext.request.contextPath}/userPage/images.action?receiverId=${phamacyDrug.pharmacyId}" width="400" height="500"></div>
        <div class="right fr">
            <div class="h3 ml20 mt20">${phamacyDrug.drugName}</div>
            <div class="jianjie mr40 ml20 mt10">${phamacyDrug.drugDetails}</div>
            <div class="jianjie mr40 ml20 mt10">剂型：${phamacyDrug.formulation}</div>
            <div class="jianjie mr40 ml20 mt10">规格：${phamacyDrug.norm}</div>
            <div class="jianjie mr40 ml20 mt10">批准文号：${phamacyDrug.approvalnumber}</div>
            <div class="jianjie mr40 ml20 mt10">生产产商：${phamacyDrug.manufacturer}</div>
            <div class="jiage ml20 mt10">单价：￥${phamacyDrug.drugPrice}.00</div>
            <div class="xqxq mt20 ml20">
                <div class="bot mt20 ft20 ftbc">总计：${phamacyDrug.drugPrice}元</div>
            </div>
            <div class="xiadan ml20 mt20">
                <input class="jrgwc"  type="button" name="jrgwc" value="立即选购" />
                <input class="jrgwc" type="button" name="jrgwc" value="加入购物车" onclick="shoppingClick(${sessionScope.userListSession.userId},${phamacyDrug.pharmacyId})" />

            </div>
        </div>
        <div class="clear"></div>
    </div>
</form>
<!-- footer -->
</body>
<script>
    function shoppingClick(userId,pharmacyId) {
        var adminName = $('#adminName').val();
        $.post("/userPage/addShoppingCar.action",
            {userId: userId, pharmacyId: pharmacyId
            },
            function (data) {
                var info = data;
                if (info.addUserCar) {
                    alert("加入购物车成功");
                    // window.location.href="${pageContext.request.contextPath}/selectPhamacyDrugDetils.action?receiverId="+pharmacyId;
                } else {
                }
            }, "json");

    }

</script>
</html>