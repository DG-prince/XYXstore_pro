<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/saler/CSS/downloadCss.css" />
<title>销售报表</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/download?user=${sessionScope.user.id}" method="post">
<div id="bg">
    <table>
        <tr>
        <td>请填写要查询的年份<input class="topbut" type="text" name="year" size="15" value="" /></td>
        </tr>
        <tr>
		<td>选择月份
			<select name="month">
			<option value="0">--月份--</option>
			<option value="1">一月</option>
			<option value="2">二月</option>
			<option value="3">三月</option>
			<option value="4">四月</option>
			<option value="5">五月</option>
			<option value="6">六月</option>
			<option value="7">七月</option>
			<option value="8">八月</option>
			<option value="9">九月</option>
			<option value="10">十月</option>
			<option value="11">十一月</option>
			<option value="12">十二月</option>
			</select>
		</td>
        </tr>
        <tr>
        <td>选择类别
			<select name="category">
			<option value ="全部类别" selected="selected">--选择类别--</option>
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
        <tr>
        <td id="buttd">
        <div id="button">
        <input type="submit" name="search" value="下载" /><br>
		<input onclick="window.location.href='${pageContext.request.contextPath}/super/home.jsp'" value="返回" />
		</div>
		</td>
        </tr>
    </table>
</div>
</form>
</body>
</html>