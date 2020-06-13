<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Language" content="zh-cn">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/saler/CSS/orderslistCss.css" />
<title>订单业绩</title>
</head>
<body>
<form name="Form1" action="${pageContext.request.contextPath}/superFindOrder?user=${sessionScope.user.id}&op=find" method="post">
    <div id="head">
    <table>
		<tr>
		<td>订单ID</td>
		<td><input type="text" name="orderid" value="" /></td>
		<td>销售员ID：</td>
		<td><input type="text" name="salerid" size="15" value="" /></td>
		<td>类别 
		  <select name="category">
		    <option value ="全部类别" selected="selected">全部</option>
            <option value ="电器">电器</option>
            <option value ="数码">数码</option>
            <option value="男装">男装</option>
            <option value="女装">女装</option>
            <option value="生鲜">生鲜</option>
            <option value="食品">食品</option>
            <option value="鞋靴">鞋靴</option>
            <option value="百货">百货</option>
            <option value="提包">提包</option>
            <option value="母婴">母婴</option>
            <option value="饰品">饰品</option>
            <option value="手机">手机</option>
            <option value="洗护">洗护</option>
            <option value="运动">运动</option>
          </select>
		</td>
		</tr>
	</table>
	</div>
	
	<table>
		<tr><td>
		<div id="wholeform">
		<div id="colum">
		<table>
		<tr>
		<td width="15%" align="center">订单ID</td>
		<td width="10%" align="center">订单费用</td>
		<td width="15%" align="center">购买时间</td>
		<td width="15%" align="center">购买用户</td>
		<td width="20%" align="center">商品ID</td>
		<td width="15%" align="center">商品名</td>
		<td width="10%" align="center">销售员</td>
		</tr>
		</table>
		</div>
		
		
		<div id="form">
		<table>
		<c:forEach items="${orders}" var="order">
			<tr>
			<td style="CURSOR: hand; HEIGHT: 22px" align="center" width="15%">${order.oNo}</td>
			<td style="CURSOR: hand; HEIGHT: 22px" align="center" width="10%">${order.oMoney}</td>
			<td style="CURSOR: hand; HEIGHT: 22px" align="center" width="15%">${order.ordertime}</td>
			<td style="CURSOR: hand; HEIGHT: 22px" align="center" width="15%">${order.user.id}</td>
			<td style="CURSOR: hand; HEIGHT: 22px" align="center" width="20%">${order.product.gNo}</td>
			<td style="CURSOR: hand; HEIGHT: 22px" align="center" width="15%">${order.product.gName}</td>
			<td style="CURSOR: hand; HEIGHT: 22px" align="center" width="10%">${order.saler.id}</td></tr>
		</c:forEach>
		</table>
		</div>
		
		</div>
		</td></tr>
	</table>
	
	<table>
	<tr>
	<td><div id="button">
		<div class="but"><button type="submit" id="search" name="search" class="but">查询</button></div>
		<div class="but"><input onclick="window.location.href='${pageContext.request.contextPath}/super/home.jsp'" value="返回" class="but"/></div></div>
	</td>
	</tr>
	</table>
</form>
</body>
</html>