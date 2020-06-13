<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/saler/CSS/editCss.css" />
<script type="text/javascript">
	/*设置类别的默认值
	function setProductCategory(t) {
		var category = document.getElementById("category");
	
		var ops = category.options;
		for ( var i = 0; i < ops.length; i++) {
	
			if (ops[i].value == t) {
				ops[i].selected = true;
				return;
			}
		}
	
	};*/
	
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
		 obj.style.color='#999';
	 }
	}
</script>
<title>编辑</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/editSaler?user=${sessionScope.user.id}" method="post">
    <div id="bg">
    <div id="details">

    <table>
    <tr>
		<td>销售员ID:</td>
		<td>${u.id}
		<input type="hidden" name="id" value="${u.id}"/>
		</td>
	</tr>
	<tr>
		<td>名称</td>
		<td><input type="text" name="name" value="${u.name}" id="gState"
		onmouseover="this.focus();" onclick="my_click(this, 'gState');" onBlur="my_blur(this, 'gState');"/>
		</td>
	</tr>
	<tr>
		<td>口令密码</td>
		<td><input type="text" name="password" value="${u.password}" id="gPrice"
		onmouseover="this.focus();" onclick="my_click(this, 'gPrice');" onBlur="my_blur(this, 'gPrice');"/>
		</td>
	</tr>
	
	
	<tr>
		<td>负责类别</td>
		<td>
		<select name="gtype" id="category">
			<option value="${u.getgType()}" selected="selected">--选择商品类别--</option>
            <option value="电器">电器</option>
			<option value="数码">数码</option>
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
		<td>邮箱</td>
		<td><input type="text" name="email" id="gScore" value="${u.email}"
		onmouseover="this.focus();" onclick="my_click(this, 'gScore');" onBlur="my_blur(this, 'gScore');"/>	
		</td>
	</tr>
    

    <div class="button" id="bottom">
		<input type="submit" value="确定">				
		<input onclick="window.location.href='${pageContext.request.contextPath}/findSaler'" value="返回" />
		<!-- history.go(-1)保存表单数据返回上一页 -->
	</div>
	
    </table>
    </div>
    </div>
</form>
</body>
</html>