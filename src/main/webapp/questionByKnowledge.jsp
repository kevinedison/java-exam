<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java考试系统--按知识点查看题目</title>

<link rel="stylesheet" type="text/css" href="css/materialize.min.css">
<link rel="stylesheet" type="text/css" href="css/material_icons.css">
<link type="text/css" rel="stylesheet" href="css/jquery.jOrgChart.lyq.css">
<meta name="viewport" content="width=desvice-width, initial-scale=1.0">
<style type="text/css">
body {
	font-family: Roboto, "Microsoft YaHei";
	font-size: large;
}
footer.page-footer{
	margin-top: 0;
}
</style>
</head>
<body>
	<%@ include file="include/header.jsp"%>

	<div id="main" style=" background: url(images/bkgd.png);">
		<div class="container" style="padding: 20px;width: 100%;">

			<ul id="org" style="display: none">
				<li>Java程序设计
					<ul>
						<li id="beer">入门介绍</li>
						<li>编程基础
							<ul>
								<li>标识符</li>
								<li>注释
									<ul>
										<li>单行注释</li>
										<li>多行注释</li>
										<li>文档注释</li>
									</ul>
								</li>
							</ul>
						</li>
						<li>面向对象
							<ul>
								<li>封装
									<ul>
										<li>成员变量与成员方法</li>
										<li>this关键字</li>
									</ul>
								</li>
								<li>继承</li>
								<li>多态
									<ul>
										<li>动态绑定</li>
										<li>接口</li>
										<li>抽象类</li>
									</ul>
								</li>
							</ul>
						</li>
					</ul>
				</li>
			</ul>
			<div id="chart" class="orgChart"></div>
		</div>
	</div>

	<%@ include file="include/footer.jsp"%>
	<script type="text/javascript" src="js/jquery-2.1.1.min.js"></script>
	<script type="text/javascript" src="js/materialize.min.js"></script>
	<script type="text/javascript" src="js/jquery.jOrgChart.lyq.js"></script>

	<script>
		$(document).ready(function() {
			$("#org").jOrgChart({
				chartElement : '#chart',
				dragAndDrop : false
			//设置是否可拖动  
			});
		})
	</script>
	<s:debug></s:debug>
</body>
</html>