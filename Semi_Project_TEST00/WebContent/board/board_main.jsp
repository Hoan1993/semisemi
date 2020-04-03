<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/style.css">
<link rel="stylesheet" href="css/bootstrap-3.4.1.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"
	integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style type="text/css">
#hori li {
	list-style: none;
	float: left;
	text-align: center;
}

#vert li {
	margin-top: 15px;
	list-style: square;
	float: none;
	list-style: square;
	float: none;
	font-size: 17px;
}
th{
	font-size: 25px;
}
</style>
</head>
<body>
	<div class="container">
		<%@ include file="../include/header.jsp"%>
		<div style="float: right;"><%@ include file="../include/sidebar.jsp"%></div>
	
	
		<div align="left" id="center-top">
			<h3>동영상 뉴스</h3>
			<ul>
				<li><a href="#"><img alt="썸네일" src="images/sbs.png"
						width="200" height="150"></a> <br /> 타이틀 받아와서 넣기</li>
				<li><a href="#"><img alt="썸네일" src="images/mbc.png"
						width="200" height="150"></a> <br /> 타이틀 받아와서 넣기</li>
				<li><a href="#"><img alt="썸네일" src="images/kbs.png"
						width="200" height="150"></a> <br /> 타이틀 받아와서 넣기</li>
				<li><a href="#"><img alt="썸네일" src="images/ytn.png"
						width="200" height="150"></a> <br /> 타이틀 받아와서 넣기</li>
			</ul>
		</div>

		<hr width="80%" color="gray">
		<table width="600">
			<tr>
				<th>정치 뉴스</th>
			</tr>
			<tr>
			<td>
			<ul id="hori">
				<li><a href="#"><img alt="썸네일" src="images/ytn.png"
						width="300" height="170"></a> <br /> 타이틀 받아와서 넣기</li>
				<li>
					<ul id="vert">
						<li>타이틀 받아와서 넣기</li>
						<li>타이틀 받아와서 넣기</li>
						<li>타이틀 받아와서 넣기</li>
						<li>타이틀 받아와서 넣기</li>
					</ul>
				</li>
			</ul>
			</td> 
			</tr>
			
			<tr>
				<th>경제 뉴스</th>
			</tr>
			<tr>
			<td>
			<ul id="hori">
				<li><a href="#"><img alt="썸네일" src="images/ytn.png"
						width="300" height="170"></a> <br /> 타이틀 받아와서 넣기</li>
				<li>
					<ul id="vert">
						<li>타이틀 받아와서 넣기</li>
						<li>타이틀 받아와서 넣기</li>
						<li>타이틀 받아와서 넣기</li>
						<li>타이틀 받아와서 넣기</li>
					</ul>
				</li>
			</ul>
			</td>
			</tr>
			
			<tr>
				<th>사회 뉴스</th>
			</tr>
			<tr>
			<td>
			<ul id="hori">
				<li><a href="#"><img alt="썸네일" src="images/ytn.png"
						width="300" height="170"></a> <br /> 타이틀 받아와서 넣기</li>
				<li>
					<ul id="vert">
						<li>타이틀 받아와서 넣기</li>
						<li>타이틀 받아와서 넣기</li>
						<li>타이틀 받아와서 넣기</li>
						<li>타이틀 받아와서 넣기</li>
					</ul>
				</li>
			</ul>
			</td>
			</tr>
			
			<tr>
				<th>생활/문화 뉴스</th>
			</tr>
			<tr>
			<td>
			<ul id="hori">
				<li><a href="#"><img alt="썸네일" src="images/ytn.png"
						width="300" height="170"></a> <br /> 타이틀 받아와서 넣기</li>
				<li>
					<ul id="vert">
						<li>타이틀 받아와서 넣기</li>
						<li>타이틀 받아와서 넣기</li>
						<li>타이틀 받아와서 넣기</li>
						<li>타이틀 받아와서 넣기</li>
					</ul>
				</li>
			</ul>
			</td>
			</tr>
			
			<tr>
				<th>세계 뉴스</th>
			</tr>
			<tr>
			<td>
			<ul id="hori">
				<li><a href="#"><img alt="썸네일" src="images/ytn.png"
						width="300" height="170"></a> <br /> 타이틀 받아와서 넣기</li>
				<li>
					<ul id="vert">
						<li>타이틀 받아와서 넣기</li>
						<li>타이틀 받아와서 넣기</li>
						<li>타이틀 받아와서 넣기</li>
						<li>타이틀 받아와서 넣기</li>
					</ul>
				</li>
			</ul>
			</td>
			</tr>
			
			<tr>
				<th>IT/과학 뉴스</th>
			</tr>
			<tr>
			<td>
			<ul id="hori">
				<li><a href="#"><img alt="썸네일" src="images/ytn.png"
						width="300" height="170"></a> <br /> 타이틀 받아와서 넣기</li>
				<li>
					<ul id="vert">
						<li>타이틀 받아와서 넣기</li>
						<li>타이틀 받아와서 넣기</li>
						<li>타이틀 받아와서 넣기</li>
						<li>타이틀 받아와서 넣기</li>
					</ul>
				</li>
			</ul>
			</td>
			</tr>
			
			<tr>
				<th>스포츠 뉴스</th>
			</tr>
			<tr>
			<td>
			<ul id="hori">
				<li><a href="#"><img alt="썸네일" src="images/ytn.png"
						width="300" height="170"></a> <br /> 타이틀 받아와서 넣기</li>
				<li>
					<ul id="vert">
						<li>타이틀 받아와서 넣기</li>
						<li>타이틀 받아와서 넣기</li>
						<li>타이틀 받아와서 넣기</li>
						<li>타이틀 받아와서 넣기</li>
					</ul>
				</li>
			</ul>
			</td>
			</tr>
			
		</table>

		
	</div>
	<%@ include file="../include/footer.jsp" %>
</body>
</html>