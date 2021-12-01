<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<link href="${pageContext.request.contextPath }/CSS/jaeuk.css"
	type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/CSS/plugins.css"
	type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/CSS/style.css"
	type="text/css" rel="stylesheet">
<title>회원가입</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script>
function fn_idChk(){
	/* 아이디 중복 검사 */
	$.ajax({
		url : "all/idChk",
		type : "post",
		dataType : "json",
		//data : {"m_id" : $("m_id").val()},
		data : "user=" + $("input[name=m_id]").val(),
		success : function(data){
			if(data == 1){
				alert("중복된 아이디입니다.");
			}else if(data == 0){
				$("#idChk").attr("value", "Y");
				alert("사용가능한 아이디입니다.");
			}
		}
	});
}
</script>
<script>
function fn_mailChk(){
	/* 이메일 중복 검사 */
	$.ajax({
		url : "all/mailChk",
		type : "post",
		dataType : "json",
		//data : {"m_id" : $("m_id").val()},
		data : "mail=" + $("input[name=m_mail]").val(),
		success : function(data){
			if(data == 1){
				alert("중복된 메일입니다.");
			}else if(data == 0){
				$("#mailChk").attr("value", "Y");
				alert("사용가능한 메일입니다.");
			}
		}
	});	
}
</script>

<script>
function passConfirm(){
		/* 비밀번호 체크 */
		var password = document.getElementById('m_password');					
		var passwordConfirm = document.getElementById('m_password2');	
		var confrimMsg = document.getElementById('confirmMsg');				
		var correctColor = "#00ff00";	
		var wrongColor ="#ff0000";	
		
		if(password.value == passwordConfirm.value){//password 변수의 값과 passwordConfirm 변수의 값과 동일하다.
			confirmMsg.style.color = correctColor;/* span 태그의 ID(confirmMsg) 사용  */
			confirmMsg.innerHTML ="비밀번호 일치";/* innerHTML : HTML 내부에 추가적인 내용을 넣을 때 사용하는 것. */
		}else{
			confirmMsg.style.color = wrongColor;
			confirmMsg.innerHTML ="비밀번호 불일치";
		}
}
</script>

<script>
function joinform_check() {
	/* 회원가입 유효성 검사 */
	var id = document.getElementById("m_id");
	var pwd = document.getElementById("m_password");
	var repwd = document.getElementById("m_password2");
	var name = document.getElementById("m_name");
	var mail = document.getElementById("m_mail");
	var phone = document.getElementById("m_phone");
	var adress = document.getElementById("adressbtn");
	
	var id_pattern = /^[0-9a-z]{6,15}$/;
	var mail_pattern = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;
	var phone_pattern = /^[0-9]+/g;
	
	
	if(id.value == ""){
		alert("아이디를 입력하시요.");
		id.focus();
		return false;
	};
	if(!id_pattern.test(id.value)){
		alert("ID는 6~15자의 영문 숫자로만 입력하여 주세요.");
		id.focus();
		return false;
	};
	if(pwd.value==''){ 
        alert("Password를 입력해주세요.");
        pwd.focus();
        return false;
    };
	if(name.value==''){ 
        alert("name을 입력해주세요.");
        name.focus();
        return false;
    };
    if(mail.value==''){ 
        alert("mail을 입력해주세요.");
        mail.focus();
        return false;
    };
    if(!mail_pattern.test(mail.value)){
		alert("올바른 mail을 입력해주세요.");
		mail.focus();
		return false;
	};
	if(phone.value==''){ 
        alert("phone을 입력해주세요.");
        phone.focus();
        return false;
    };
    if(!phone_pattern.test(phone.value)){
		alert("숫자만 입력해주세요.");
		phone.focus();
		return false;
    };
    if(adress.value==''){ 
        alert("주소를 입력해주세요.");
        adress.focus();
        return false;
    };
    
	document.join_form.submit();
}

</script>

</head>
<body>

	<jsp:include page="header.jsp" />
	<div class="body-inner">
	
		<!-- Page title -->
		<section id="page-title">
			<div class="container">
				<div class="page-title">
					<h1>SIGN IN</h1>
					<!--  <span>Shop 2 columns version</span> -->
				</div>
				<!--  <div class="breadcrumb">
                    <ul>
                        <li><a href="#">Home</a>
                        </li>
                        <li><a href="#">Shop</a>
                        </li>
                        <li class="active"><a href="#">2 columns version</a>
                        </li>
                    </ul>
                </div> -->
			</div>
		</section>
		  <!-- Section -->
        <section>
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 offset-4">
                        <div class="panel ">
                            <div class="panel-body">
                                <h3>SIGN IN</h3>
                                <form>
                                    <div class="form-group">
                                        <label class="sr-only">Username or Email</label>
                                        <input type="text" placeholder="Username or Email" class="form-control">
                                    </div>
                                    <div class="form-group m-b-5">
                                        <label class="sr-only">Password</label>
                                        <input type="password" placeholder="Password" class="form-control">
                                    </div>
                                    <div class="form-group form-inline m-b-10 ">
                                        <div class="form-check">
                                            <label>
                                                <input type="checkbox"><small class="m-l-10"> Remember me</small>
                                            </label>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <button class="btn" type="button">Login</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <p class="small">Don't have an account yet? <a href="icpage/join">Register New Account</a></p>
                    </div>
                </div>
            </div>
        </section>
        <!-- end: Section -->
	</div>
	
	
	<jsp:include page="footer.jsp" />
</body>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
window.onload = function(){
    document.getElementById("address").addEventListener("click", function(){ //주소입력칸을 클릭하면
        //카카오 지도 발생
        new daum.Postcode({
            oncomplete: function(data) { //선택시 입력값 세팅
                document.getElementById("address").value = data.address; // 주소 넣기
                document.querySelector("input[id=address_detail]").focus(); //상세입력 포커싱
            }
        }).open();
    });
}
</script>

</html>