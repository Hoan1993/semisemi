<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <link rel="stylesheet" href="css/bootstrap-3.4.1.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"
	integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
	crossorigin="anonymous"></script> -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<!-- 
Avalon Template 
https://templatemo.com/tm-513-avalon
-->
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="apple-touch-icon" href="apple-touch-icon.png">

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="css/fontAwesome.css">
        <link rel="stylesheet" href="css/hero-slider.css">
        <link rel="stylesheet" href="css/owl-carousel.css">
        <link rel="stylesheet" href="css/datepicker.css">
        <link rel="stylesheet" href="css/templatemo-style.css">

        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">
        
        <script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>	
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.16/dist/summernote.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.16/dist/summernote.min.js"></script>

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


</head>
<body>
	<div class="container">
		<%@ include file="../include/header.jsp"%>
		<!-- <div id="center-top">
			<hr width="500" color="gray">
		</div> -->
	
<%-- 	<form name="frm" method="post"
		action="<%=request.getContextPath()%>/board_writeOk.do"> --%>
 <section class="contact-us" id="contact-section"> 
 	
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-8">
                
                <!-- Please visit https://templatemo.com/contact page if you do not know how to setup the contact form -->
                
                    <form id="contact" action="board_writeOk.do" method="post">
                        <div class="row">
                           <!--  <div class="col-md-4">
                              <fieldset>
                                <input name="name" type="text" class="form-control" id="name" placeholder="Your name..." required="">
                              </fieldset>
                            </div>
                            <div class="col-md-4">
                              <fieldset>
                                <input name="email" type="email" class="form-control" id="email" placeholder="Your email..." required="">
                              </fieldset>
                            </div> -->
                             <div class="col-lg-12">
                              <fieldset>
                                <input name="subject" type="text" class="form-control" id="subject" placeholder="제목" required="">
                              </fieldset>
                            </div>
                            <br /><br />
                           
                            <div class="col-lg-12">
                              <fieldset>
                                <textarea name="message" rows="22" class="form-control" id="message" placeholder="여기에 쓰세요..." required=""></textarea>
                              </fieldset>
                            </div>
                            <br /><br /><br />
                            <div class="col-md-12">
                            	<label for="InputSubject1">파일첨부</label>
                            	<input id="fileInput" filestyle="" type="file" data-class-button="btn btn-default"
                            	data-class-input="form-control" data-button-text="" data-icon-name="fa fa-upload" 
                            	class="form-control" tableindex="-1" style="position: absolute; clip: rect(0px,0px,0px,0px);">
                            	<div class="bootstrap-filestyle input-group">
                            		<input type="text" id="userfile" class="form-control" name="userfile" disabled="">
                            		<span class="group-span-filestyle input-group-btn" tabindex="0">
                            			<label for="fileInput" class="btn btn-default">
                            				<span class="glyphicon fa fa-upload"></span>
                            			</label>
                            		</span>
                            	</div>
                            </div>
                            <br />
                            <div class="col-lg-12" align="right">
                            <br />
                              <fieldset>
                                <button type="submit" id="form-submit" class="btn btn-primary">등록</button> &nbsp;&nbsp;
                                <button type="reset" id="form-reset" class="btn btn-danger">다시작성</button>                               
                              </fieldset> 
                            </div>
                        </div>
                    </form>
                </div>
              <%@ include file="../include/sidebar.jsp" %>
            </div>
        </div>
        
    </section>
   
    	
    </div>
    
    
    
<!-- 		<input type="submit" value="등록" onClick="return boardCheck()">
	</form> -->

<%@ include file="../include/footer.jsp"%>
</body>
</html>