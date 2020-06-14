<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/client/CSS/menuCss.css" />
<title>首页</title>
</head>

<body>
<table>
    <% if(session.getAttribute("user") == null){%>
    <tr><td>
    <div id="hello"><a href="${pageContext.request.contextPath }/client/login.jsp">Login</a></div></td></tr>
    <%}else{ %>
    <tr><td>
    <div id="hello"><p>${sessionScope.user.name}</p></div></td></tr>
    <tr>
    <td><div class="cross"><a href="${pageContext.request.contextPath }/client/myAccount.jsp">我的账号</a></div></td>
    <td><div class="cross"><a href="${pageContext.request.contextPath }/client/cart.jsp">购物车</a></div></td>
    <td><div class="cross"><a href="${pageContext.request.contextPath }/logoutServlet">退出账号</a></div></td>
    <td><div class="cross"><a href="${pageContext.request.contextPath }/recommendServlet?id=${sessionScope.user.id}">私人定制</a></div>
    </td></tr>
    <%}%>
    <div id="introduce">欢迎光临XYX百货商城！</div>
</table>
<div id="divsearch">
<form action="${pageContext.request.contextPath }/MenuSearchServlet" id="searchform">
	<table>
		<tr>
			<td>
				<input type="text" name="textfield" class="inputtable" id="textfield" value="请输入商品名称"
				onmouseover="this.focus();" onclick="my_click(this, 'textfield');" onBlur="my_blur(this, 'textfield');"/> 
				<button id="searchbut" onclick="search()">Search</button>
			</td>
		</tr>
	</table>
</form>
</div>
<div id="cardMenu">
<div id="divmenu">
    <div id="select">
    <table>
    <tr>
		<td><div class="cross"><a href="${pageContext.request.contextPath}/showProductByPage?gType=电器">电器</a></div></td>
		<td><div class="cross"><a href="${pageContext.request.contextPath}/showProductByPage?gType=数码">数码</a></div></td>
		<td><div class="cross"><a href="${pageContext.request.contextPath}/showProductByPage?gType=男装">男装</a></div></td>
		<td><div class="cross"><a href="${pageContext.request.contextPath}/showProductByPage?gType=女装">女装</a></div></td>
	</tr>
	<tr>	
		<td><div class="cross"><a href="${pageContext.request.contextPath}/showProductByPage?gType=生鲜">生鲜</a></div></td>
		<td><div class="cross"><a href="${pageContext.request.contextPath}/showProductByPage?gType=食品">食品</a></div></td>
		<td><div class="cross"><a href="${pageContext.request.contextPath}/showProductByPage?gType=鞋靴">鞋靴</a></div></td>
	</tr>
	<tr>
		<td><div class="cross"><a href="${pageContext.request.contextPath}/showProductByPage?gType=百货">百货</a></div></td>
		<td><div class="cross"><a href="${pageContext.request.contextPath}/showProductByPage?gType=提包">提包</a></div></td> 
		<td><div class="cross"><a href="${pageContext.request.contextPath}/showProductByPage?gType=母婴">母婴</a></div></td>
		<td><div class="cross"><a href="${pageContext.request.contextPath}/showProductByPage?gType=饰品">饰品</a></div></td>
	</tr>
	<tr>
		<td><div class="cross"><a href="${pageContext.request.contextPath}/showProductByPage?gType=手机">手机</a></div></td>
		<td><div class="cross"><a href="${pageContext.request.contextPath}/showProductByPage?gType=洗护">洗护</a></div></td>
		<td><div class="cross"><a href="${pageContext.request.contextPath}/showProductByPage?gType=运动">运动</a></div></td>
	</tr>
	<tr>
	    <td><div class="cross"><a href="${pageContext.request.contextPath}/showProductByPage">全部商品</a></div></td>
	</tr>
	</table>
	</div>		
</div>
</div>
</body>

<script type="text/javascript">
/**
 * my_click和my_blur均是用于前台页面搜索框的函数
 */
//鼠标点击搜索框时执行
function my_click(obj, myid){
	//点击时，如果取得的值和搜索框默认value值相同，则将搜索框清空
	if (document.getElementById(myid).value == document.getElementById(myid).defaultValue){
	  document.getElementById(myid).value = '';
	  obj.style.color='#000';
	}
}
//鼠标不聚焦在搜索框时执行
function my_blur(obj, myid){
	//鼠标失焦时，如果搜索框没有输入值，则用搜索框的默认value值填充
	if (document.getElementById(myid).value == ''){
	 document.getElementById(myid).value = document.getElementById(myid).defaultValue;
	 obj.style.color='#000';
 }
}

var second=0;
var minute=0;
var hour=0;
window.setTimeout("interval();",1000);
function interval()
{
	second++;
	if(second==60)
	{
	second=0;minute+=1;
	}
	if(minute==60)
	{
	minute=0;hour+=1;
	}
	var a=document.getElementById("textarea");
	//document.textarea.value = hour+"时"+minute+"分"+second+"秒";
	a.value=hour+"时"+minute+"分"+second+"秒";
	window.setTimeout("interval();",1000);
}


function search(){
	document.getElementById("searchform").submit();
}


</script>
</html>