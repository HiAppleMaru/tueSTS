<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="header.jsp"></jsp:include>
<script src="/resources/js/password_check.js"></script>
<script src="/resources/js/check_id.js"></script>
<script src="/resources/js/validate_form.js"></script>

<!-- <script src="/resources/js/password_check_jquery.js"></script> !-->
</head>
<body>
	<div>
		<div>
			<h3>회원가입</h3>
		</div>
		
		<form method="post" name="signup_form">
			<div>
			
				<div class="form-group">
					<label>아이디:</label>
					<input type="text" name="custid">
					<button type="button" id="check_id">[비동기] 중복확인</button>
					<button type="button" id="check_id_sync">[동기] 중복확인</button>
				</div>
				
				<div>
					<label>비밀번호:</label>
					<input type="password" name="passwd">
					<button type="button" class="password_check" data-msg="Hello1" data-for="passwd">확인</button>
				</div>
				
				<div>
					<label>비밀번호 확인:</label>
					<input type="password" name="passwd_confirm">
					<button type="button" class="password_check" data-msg="Hello2" data-for="passwd_confirm">확인</button>
				</div>
				
				<div>
					<label>고객명:</label>
					<input type="text" name="name">
				</div>
				
				<div>
					<label>주소:</label>
					<input type="text" name="address">
				</div>
				
				<div>
					<label>전화번호:</label>
					<input type="text" name="phone">
				</div>
				
				<div>
					<button type="button" id="signup">등록</button>
					<a href="/"><button type="button">처음으로</button></a>
				</div>
			</div>
		</form> <!-- form태그 안의 button들은 submit으로 작동함 -->
	</div>
	<script>
		new ValidateForm(
				{
					selector:"#signup",
					tags:[
				        {tag: "custid", msg: "아이디는 필수 입니다."},
				        {tag: "custid", msg: "아이디 중복검사를 해 주세요", condition: "checkId"},
				        {tag: "passwd", msg: "비밀번호를 입력 해주세요."},
				        {tag: "passwd_confirm", msg: "비밀번호확인을 입력 해주세요."},
				        {tag: "passwd_confirm", msg: "비밀번호와 비밀번호 확인이 일치하지 않습니다.", eq: "passwd"},
				        {tag: "name", msg: "성명을 입력해 주세요."}
				    ]			
				});
	</script>
</body>
</html>
