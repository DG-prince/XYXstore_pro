<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/saler/CSS/productslistCss.css" />
<title>销售员管理</title>
</head>
<body>
<form name="Form1" action="${pageContext.request.contextPath}/findSaler?op=find&user=${sessionScope.user.id}" method="post">
    <div id="head">
    <table>
        <tr>
        <td>销售员ID
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
        </tr>
    </table>
    </div>
    
    
    <table>
		<tr><td>
		<div id="wholeform">
		<div id="colum">
		<table>
		    <tr>
			<td align="center" width="30%">销售员ID</td>
			<td align="center" width="15%">销售员名称</td>
			<td align="center" width="10%">负责类别</td>
			<td width="30%" align="center">邮箱</td>
			<td width="10%" align="center">编辑</td>
			<td width="10%" align="center">删除</td>
			</tr>
		</table>
		</div>
		
		<div id="form">
		<table>
			<c:forEach items="${ul}" var="u">
                <tr>
				<td width="30%">${u.id}</td>
				<td width="10%">${u.name}</td>
				<td width="10%">${u.getgType()}</td>
				<td width="30%">${u.email}</td>
				<td width="10%">
				<a href="${pageContext.request.contextPath}/findSaler?type=edit&id=${u.id}">编辑</a>
				</td>
				<td width="10%">
				<a href="${pageContext.request.contextPath}/delSaler?id=${u.id}&user=${sessionScope.user.id}" onclick="javascript:return p_del()">
				删除
				</a>
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

<script type="text/javascript">

	function addProduct() {
		window.location.href = "${pageContext.request.contextPath}/super/addsaler.jsp";
	}

	function p_del() {   
		var msg = "确定要删除该销售员吗？";
		if (confirm(msg)==true){   
		return true;   
		}else{   
		return false;   
		}   
	}   
	</script>
</html>