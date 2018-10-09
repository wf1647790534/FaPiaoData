<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>问题企业列表</title>
<script
	src="${pageContext.request.contextPath}/static/js/jquery-1.12.1.js"
	type="text/javascript"></script>
<script
	src="${pageContext.request.contextPath}/static/bootstrap-3.3.5-dist/js/bootstrap.js"
	type="text/javascript"></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/bootstrap-3.3.5-dist/css/bootstrap.css" />
</head>
<body>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span12">
				<h1>问题企业列表</h1>
			</div>
		</div>
		
			<div
		style="text-align: center; align-content: center; background-color: ;">
		<div>
			<form
				action="${pageContext.request.contextPath}/userServlet?method=listBook"
				method="post">
				<div style="float: left;">
<br />
					<strong>问题企业代码:</strong> <input type="text" name="name"
						id="name" style="height: 25px; font-size: 16px;" /> <input
						type="submit" id="submit" class="btnMy" name="submit" value="查询" />

				</div>
	
			</form>
			

		</div>
		<br /> <br /> <br />
	</div>
	<hr style="border: none; border-top: 1px solid #838B8B;" />
		<div class="row-fluid">
			<div class="col-md-1 "></div>
			<div class="col-md-10 ">
				<table class="table table-striped">
					<tr>
						<td>行业代码</td>
						
						<td>纳税人ID</td>
						<td>开业登记日期</td>
						
						
					</tr>
					<!-- forEach遍历出bookBeans -->
					<c:forEach items="${bookBeans }" var="item">

						<tr>
							<td>${item.id }</td>
							
							<td>${item.name }</td>
							<td>${item.author }</td>
							<td>${item.type }</td>
							
						</tr>


					</c:forEach>

				</table>
			
			</div>
			<div class=" col-md-1"></div>
		</div>
	</div>

</body>
</html>