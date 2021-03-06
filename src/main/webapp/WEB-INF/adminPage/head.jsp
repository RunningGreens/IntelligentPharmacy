<%@ page language="java" contentType="text/html; charset=utf-8"
                pageEncoding="utf-8" import="com.cy.bean.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>智慧药房后台管理中心</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/public.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/public.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/external.js"></script>

</head>
<body >
<!-- 头部 -->
<div class="head">
    <div class="headL" >
        <p align="left" style="font-size:25px;color:red"  >智慧药房后台管理中心</p>
    </div>
    <c:when test="${not empty sessionScope.adminList}">
        <c:forEach items="${sessionScope.adminList}" var="adminList">


    <div class="headAlarm">
        <a href="/alarm/alarmAllList.action?alarmRole=${adminList.adminRoleId}"   target="main">【查看报警消息】</a>
    </div>
    <div class="headR">
        <a href="cancellation.action" target="_parent">【注销】</a>
    </div>
    </c:forEach>
    </c:when>
</div>


<div class="user">

    当前时间：<input type="text" id="clock" size="24" />
    <script language=javascript>
        var time=self.setInterval("clock()",50)
        function clock()
        {
            var t=new Date()
            document.getElementById("clock").value=t
        }
    </script>
</div>

</body>
</html>