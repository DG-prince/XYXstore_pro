<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/saler/CSS/editCss.css" />
<script type="text/javascript">
	//设置类别的默认值
	function setProductCategory(t) {
		var category = document.getElementById("category");
	
		var ops = category.options;
		for ( var i = 0; i < ops.length; i++) {
	
			if (ops[i].value == t) {
				ops[i].selected = true;
				return;
			}
		}
	
	};
	
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
<title>Insert title here</title>
</head>
<body onload="setProductCategory('${p.gType}')">
<form action="${pageContext.request.contextPath}/editProduct?user=${sessionScope.user.id}&gType=${sessionScope.user.getgType()}" method="post" enctype="multipart/form-data">
    <input type="hidden" name="gNo" value="${p.gNo}" /> &nbsp;
    <div id="bg">
    <div id="details">
    <table>
    <tr>
		<td>商品名称</td>
		<td><input type="text" name="gName" value="${p.gName }" id="gName"
		onmouseover="this.focus();" onclick="my_click(this, 'gName');" onBlur="my_blur(this, 'gName');"/>
		</td>
	</tr>
	<tr>
		<td>商品价格</td>
		<td><input type="text" name="gPrice" value="${p.gPrice }" id="gPrice"
		onmouseover="this.focus();" onclick="my_click(this, 'gPrice');" onBlur="my_blur(this, 'gPrice');"/>
		</td>
	</tr>
	<tr>
		<td>商品状态</td>
		<td><input type="text" name="gState" value="${p.gState }" id="gState"
		onmouseover="this.focus();" onclick="my_click(this, 'gState');" onBlur="my_blur(this, 'gState');"/>
		</td>
	</tr>
	
	<tr>
		<td>商品类别</td>
		<td>
		<select name="gType" id="category">
			<option value="" selected="selected">--选择商品类别--</option>
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
		<td>商品图片</td>
		<td colspan="3"><div class="button"><input type="file" name="upload" size="30" value="" /></div></td>
	</tr>
	<tr>
		<td>商品评分</td>
		<td><input type="text" name="gScore" id="gScore" value="${p.gScore }"
		onmouseover="this.focus();" onclick="my_click(this, 'gScore');" onBlur="my_blur(this, 'gScore');"/>	
		</td>
	</tr>
	<tr>
	    <td>商品描述：</td>
	    <td><textarea name="gDescription" cols="30" rows="3" style="WIDTH: 96%">${p.gDescription}</textarea>    
	    </td>
	</tr>
	    <div class="button" id="bottom">
		<input type="submit" value="确定">				
		<input onclick="window.location.href='${pageContext.request.contextPath}/listProduct?gType=${sessionScope.user.getgType()}'" value="返回" />
		<!-- history.go(-1)保存表单数据返回上一页 -->
	</div>
    </table>
    
    </div>
    </div>
</form>
</body>
</html>