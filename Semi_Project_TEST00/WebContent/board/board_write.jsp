<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/styleForWriter.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"
   integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
   crossorigin="anonymous"></script>
<script type="text/javascript" src="./ckeditor/ckeditor.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#fileInput").on('change', function() {
		if(window.FileReader) {
			var filename = $(this)[0].files[0].name;
		} else {
			var filename = $(this).val().split('/').pop().split('\\').pop();
		}
		$("#userfile").val(filename);
	});
	
});
</script>
 <style>
/* #myWriter {
	width: 1000px;
	align: center;
} */

#subject {
	width: 1000px;
	height: 45px;
	align: center;
}
#fileInput {
	width: 500px;
	align: center;
}

/* .col-sm-3 {
	align: left;
} */

.content {
	align: center;
}

.container {
	width: 800px;
}

#mySelect1 {
	width: 1000px;
}

</style> 
</head>

<body>
<%@ include file="../include/headerForWriting.jsp"%>
<br />
<div class="container">
<%--      	<header>
		<div id="login" align="right">
			<a href="<%=request.getContextPath()%>/board_main.do">홈</a>
			<!-- 초기페이지 -->
			<a href="<%=request.getContextPath()%>/board_loginForm.do">로그인</a>
			
			<input type="button" id="loginBtn" value="Login"
					onclick="	
			if(this.value === 'Logout') {
  			    gauth.signOut().then(function(){
    		    console.log('gauth.signOut()');
    		    checkLoginStatus();
   			   });
   		 	} else if(this.value === 'Login'){
   		 		checkLoginStatus();
   		 		moveToLogin();		
   		 	}
  			">
			
		</div>
	</header> --%>
	

 
<!-- 	<div class="container">
	<div class="content" style="width: 950px">
		<div class="row justify-content-md-center" id="mySelct1">
			<div class="col-sm-3">
				<div class="col-lg-12">
                                 <select name="article_type1" id="mySelect2">
                                    <option value="politics">정치</option>
                                    <option value="economy">경제</option>
                                    <option value="society">사회</option>
                                    <option value="culture">연예/문화</option>
                                    <option value="world">세계</option>
                                    <option value="science">IT/과학</option>
                                    <option value="sports">스포츠</option>
                                 </select>              
               </div>
           </div>  
		</div>
	</div> -->
<!-- 컨테이너 끝  -->	
<!-- 	<hr> -->
	
<!-- 	<div class="adjoined-top"> -->
		<!-- <div class="grid-container"> -->
<!-- 			<div class="content grid-width-100">
				<h1>Congratulations!</h1>
				<p>
					If you can see CKEditor below, it means that the installation succeeded.
					You can now try out your new editor version, see its features, and when you are ready to move on, check some of the <a href="#sample-customize">most useful resources</a> recommended below.
				</p>
			</div> -->
		<!-- </div> -->
<!-- 	</div> -->



<form action="board_writeOk.do" method="post" class="frm" enctype="multipart/form-data">

	<div align="center" class="row justify-content-md-center">
				
		
		<input name="subject" type="text" class="form-control" id="subject"
			placeholder="제목" required="">
		<!-- <br /> -->
		<div class="container" align="center">
			<select class="form-control" id="mySelect1" name="mySelect1">
				<option value="none">==분야선택==</option>
				<option value="politics">정치</option>
				<option value="economy">경제</option>
				<option value="society">사회</option>
				<option value="culture">연예/문화</option>
				<option value="worle">세계</option>
				<option value="science">IT/과학</option>
				<option value="sports">스포츠</option>
			</select>
		</div>
		
		<br />
			
		<div class="col_c" style="margin-bottom: 30px">
			<div class="input-group">
				<textarea class="form-control" id="p_content" name="content"></textarea>
				<script type="text/javascript">
				
				CKEDITOR.config.removePlugins = 'resize';
				
				CKEDITOR.replace('p_content'
							,{height: 530, width: 1000
							});
				
				/* $(function() {	    
					  
					}); */
			
				
			</script>
			
			<div class="col-md-13" align="right">
			<label for="InputSubject1">파일첨부</label> 
			<input id="fileInput"
				filestyle="" name="file" type="file"
				data-class-button="btn btn-default" data-class-input="form-control"
				data-button-text="" data-icon-name="fa fa-upload"
				class="form-control" tableindex="-1"
				style="position: absolute; clip: rect(0px, 0px, 0px, 0px);">
			<div class="bootstrap-filestyle input-group" align="right">
				<input type="text" id="userfile" class="form-control"
					name="userfile" disabled=""> <span
					class="group-span-filestyle input-group-btn" tabindex="0"> <label
					for="fileInput" class="btn btn-default"> <span
						class="glyphicon fa fa-upload"></span>
				</label>
				</span>
			</div>
		</div>
			
			
			</div>
					<div class="col-lg-12" align="center">
							<fieldset> 
                                <button type="submit" id="form-submit" class="btn btn-primary">등록</button> &nbsp;&nbsp;
                                <button type="reset" id="form-reset" class="btn btn-danger" >다시작성</button>                               
							 </fieldset> 
      				</div>
		</div>
		    		
		
		
	</div>
</form>
</div>
	<!-- 컨테이너 끝 -->
   <!--    <div class="row justify-content-md-center">
            <div class="input-group mb-3">
              <div class="input-group-prepend">
                <span class="input-group-text">GitHub</span>
              </div>
              <input type="text" class="form-control">
            </div>
      </div> -->
 
                            
                            
 
      
      
<!--       <div class="row justify-content-md-center">
            <div class="input-group mb-3">
              <div class="custom-file">
                  &nbsp;<input type="file" class="form-control-file" id="exampleFormControlFile1">
              </div>
            </div>
      </div> -->
      <!-- 
      <div class="row justify-content-md-center">
        <button type="submit" class="btn btn-outline-secondary" style="width: 20%; font-weight: bold">
             등   록          
            </button> -->


</body>
</html>