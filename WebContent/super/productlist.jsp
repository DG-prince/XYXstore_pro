<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/saler/CSS/productslistCss.css" />
<title>商品列表</title>
</head>
<body>
<form name="Form1" action="${pageContext.request.contextPath}/findProductByManyCondition?type=super&user=${sessionScope.user.id}" method="post">
    <div id="head">
    <table>
        <tr>
        <td>商品ID
		<input type="text" name="id" value="" /></td>
		<td>类别 
		  <select name="category">
		    <option value ="全部类别" selected="selected">全部类别</option>
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
		<td>商品名称
		<input type="text" name="name" value=""/></td>
        </tr>
    </table>
    </div>
    
    
    <table>
		<tr><td>
		<div id="wholeform">
		<div id="colum">
		<table>
		    <tr>
			<td align="center" width="30%">商品ID</td>
			<td align="center" width="30%">商品名称</td>
			<td align="center" width="20%">商品价格</td>
			<td width="10%" align="center">商品类别</td>
			<td width="10%" align="center">商品状态</td>
			</tr>
		</table>
		</div>
		
		<div id="form">
		<table>
			<c:forEach items="${ps}" var="p">
                <tr>
				<td width="30%">${p.gNo }</td>
				<td width="30%">${p.gName }</td>
				<td width="20%">${p.gPrice }</td>
				<td width="10%">${p.gType}</td>
				<td width="10%">
				<c:if test="${p.gState == 1}"><a>销售中</a></c:if>
				<c:if test="${p.gState == 2}"><a>已下架</a></c:if>
				</td>
				</tr>
			</c:forEach>
		</table>
		</div>
		
		
		
		</div>
		</td></tr>
		
		
    </table>
    
    <table>
        <tr>
			<td><div id="button">
			<div class="but"><button class="but" type="submit" name="search" value="查询">查询</button></div>
			<div class="but"><a href="${pageContext.request.contextPath}/super/home.jsp">返回</a></div></div>
			</td>
		</tr>
    </table>
    
</form>
</body>
</html>