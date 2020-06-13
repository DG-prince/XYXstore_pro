<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/client/CSS/myAccountCss.css" />
<title>Insert title here</title>
</head>
<body>
<div id="card">
    <div id="details">
    <div id="indetails">
    <table>
        <tr>
        <td>用户名:</td>
        <td>${user.name}</td>
        </tr>
        <tr>
        <td>用户ID:</td>
        <td>${user.id}</td>
        </tr>
        <tr>
        <td>邮箱:</td>
        <td>${user.email}</td>
        </tr>
        <tr>
        <td>余额:</td>
        <td>${user.money}</td>
        </tr>
        <td><div class="alink"><a href="${pageContext.request.contextPath }/index.jsp">&gt;&gt;首页&lt;&lt;</a></div><br></td>
    </table>
</div>
</body>
</html>