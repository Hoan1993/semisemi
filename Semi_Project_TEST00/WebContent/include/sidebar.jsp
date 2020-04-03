<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap-3.4.1.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"
	integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
	crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body>
	<div class="col-sm-2" align="left" style="width: auto;">
			<div class="panel panel-default">
				<div class="panel-heading">가장 많이 본 뉴스</div>
				<div class="panel-body">
					<font>1. </font><a href="<%=request.getContextPath() %>/article.do?no=1">1번 기사</a><br />
					<font>2. </font><a href="<%=request.getContextPath() %>/article.do?no=2">2번 기사</a><br />
					<font>3. </font><a href="<%=request.getContextPath() %>/article.do?no=3">3번 기사</a><br />
					<font>4. </font><a href="#">가입인사</a><br />
					<font>5. </font><a href="#">가입인사</a><br />
					<font>6. </font><a href="#">가입인사</a><br />
					<font>7. </font><a href="#">가입인사</a><br />
					<font>8. </font><a href="#">기사</a><br />
					<font>9. </font><a href="#">기사</a><br />
					<font>10. </font><a href="#">기사거리</a><br />
				</div>
			</div>
		</div>
</body>
</html>