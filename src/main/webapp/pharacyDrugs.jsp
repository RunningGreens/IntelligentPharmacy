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
            <div class="gouwuche fr"><a href="">购物车</a></div>
            <div class="fr">
                <ul>
                    <li><a href="${pageContext.request.contextPath}/userLogin.jsp" target="_blank">登录</a></li>
                    <li>|</li>
                    <li><a href="${pageContext.request.contextPath}/create-account.html" target="_blank" >注册</a></li>
                    <li>|</li>
                    <li><a href="">消息通知</a></li>
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
        <form action="${pageContext.request.contextPath}/userPage/selectPhamacyDrugs.action" method="post">
            <div class="text fl">
                <input type="text" class="shuru" name="drugName" placeholder="药品   ">
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

<!-- start banner_y -->
<!-- end banner -->

<!-- start danpin -->
<div class="danpin center">

    <div class="biaoti center">药品展示</div>
    <div class="main center mb20">
        <c:choose>
        <c:when test="${not empty requestScope.phamacyReceive.list}">
        <c:forEach items="${requestScope.phamacyReceive.list}" var="receiveDrugTemp"   varStatus="status">
        <div class="mingxing fl mb20" style="border:2px solid #fff;width:230px;cursor:pointer;" onmouseout="this.style.border='2px solid #fff'" onmousemove="this.style.border='2px solid red'">
            <div class="sub_mingxing"><a href="${pageContext.request.contextPath}/userPage/selectPhamacyDrugDetils.action?receiverId=${receiveDrugTemp.pharmacyId}"><img src="${pageContext.request.contextPath}/userPage/images.action?receiverId=${receiveDrugTemp.pharmacyId}" alt=""></a></div>
            <div class="pinpai"><a href="">${receiveDrugTemp.drugName}</a></div>
            <div class="youhui">${receiveDrugTemp.norm}</div>
            <div class="jiage">￥${receiveDrugTemp.drugPrice}</div>
        </div>
        </c:forEach>
        </c:when>
        </c:choose>
        <div class="clear" align="right">
            <span>
        <a href="${pageContext.request.contextPath}/userPage/selectPhamacyDrugs.action?num=1"    target="main">首页-</a>
        <c:if test="${phamacyReceive.prePage != 0}" >
            <a href="${pageContext.request.contextPath}/userPage/selectPhamacyDrugs.action?num=${phamacyReceive.prePage}"   target="main">上一页-</a>
        </c:if><c:if test="${phamacyReceive.nextPage != 0}" >
          <a href="${pageContext.request.contextPath}/userPage/selectPhamacyDrugs.action?num=${phamacyReceive.nextPage}"   target="main">下一页-</a>
      </c:if>
        <a href="${pageContext.request.contextPath}/userPage/selectPhamacyDrugs.action?num=${phamacyReceive.navigateLastPage}"    target="main">尾页-</a>
      -当前第${phamacyReceive.pageNum}页-共${phamacyReceive.pages}页
            </span>
        </div>
    </div>
</div>
<!-- end danpin -->
</body>
</html>
<script type="text/javascript">
    function myfun() 　　{
       window.location.href="${pageContext.request.contextPath}/userPage/selectPhamacyDrugs.action";
    }
    /*用window.onload调用myfun()*/

    // 不要括号
    window.onload = myfun;
</script>