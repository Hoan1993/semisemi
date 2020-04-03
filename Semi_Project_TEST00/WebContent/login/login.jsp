<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/login.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
<!-- <script type="text/javascript">
$('.message a').click(function(){
	   $('form').animate({height: "toggle", opacity: "toggle"}, "slow");
	});
</script> -->
<!-- *************************************** -->
<!-- 1. 스크립트로 아이디찾기에 성공했을 때 아이디를  보여주려 했음. 원하는대로 작동하지 않고, 무엇보다 안 예쁨. -->
<!-- *************************************** -->
<%-- <script type="text/javascript">
	var IsNull= '@Session["IdSucceed"]'!= null;  

			var yourid = '<%=(String)session.getAttribute("IdSucceed")%>';
	 var str2 = <%=session.getAttribute("IdSucceed")%>;
	  
 	if(IsNull) {
 		alert('당신의 아이디 ==> ' +'<%=(String)session.getAttribute("IdSucceed")%>');
		<% session.removeAttribute("IdSucceed"); %>
 	} else { 		
 		
	}

 	
/*  	function isEmpty(str){
        
        if(typeof str == "undefined" || str == null || str == "")
            return true;
        else
            return false ;
    } */

</script> --%>


<%--  <% 
	if(session.getAttribute("IdSucceed") != null) {
	String userid = (String) session.getAttribute("IdSucceed");
	
    out.println("<script>alert('인증성공. 당신의 아이디 => ')</script>");
    session.removeAttribute("IdSucceed");
 	} 
%>   --%>

<style>
    .or-seperator {
        margin: 20px 0 10px;
        text-align: center;
        border-top: 1px solid #ccc;
    }
    .or-seperator i {
        padding: 0 10px;
        background: #f7f7f7;
        position: relative;
        top: -11px;
        z-index: 1;
    }

</style>
</head>
<body>

	<div class="login-page">
					
		<div class="form">
		<p align="left">
		<a href="<%=request.getContextPath() %>/board_main.do"> ◀◀   </a>
		</p>
		
		<h2 class="text-center">Sign in</h2>		
        <div class="text-center social-btn">
            <a href="#" class="btn btn-primary btn-block"><i class="fa fa-facebook"></i> Sign in with <b>Facebook</b></a>
			<a href="#" class="btn btn-danger btn-block"><i class="fa fa-google"></i> Sign in with <b>Google</b></a>
        </div>
		<div class="or-seperator"><i>or</i></div>
		
		
			<form class="register-form">
				<input type="text" placeholder="name" /> <input type="password"
					placeholder="password" /> <input type="text"
					placeholder="email address" />
				<button>create</button>
				<p class="message">
					Already registered? <a href="#">Sign In</a>
				</p>
			</form>
			<form  class="login-form" name="frm" action="<%=request.getContextPath() %>/board_loginOk.do" method="post">
				<input type="text" placeholder="이메일" name="id"/> <input type="password"
					placeholder="비밀번호" name="pwd"/>
				<button onclick="location.href='<%=request.getContextPath() %>/board_loginOk.do'">로그인</button>
				<p class="message">
					아직도 가입 안 하셨나요? <!-- <a href="#">Create an account</a> -->
					<a href="<%=request.getContextPath() %>/board_joinForm.do">회원가입</a>
				</p>
				<br />
				<p class="message">
					깜빡하셨나요?
				</p> 
				<p class="message">
					<a href="<%=request.getContextPath() %>/board_findId.do">아이디 찾기</a> &nbsp;&nbsp;
					<a href="<%=request.getContextPath() %>/board_findPwd.do">비밀번호 찾기</a>
				</p>
				<p>
				</p>	
			</form>
		</div>
	</div>
</body>
</html>