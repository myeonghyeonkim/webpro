<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<SCRIPT language="JavaScript">
function Check()
{
	if(Member.id.value.length <1 )
	{
		alert("아이디를 입력하세요");
		Member.id.focus();
		return false;
	}
	if(Meber.pwd.value.length<1)
	{
		alert("비밀번호를 입력하세요");
		Member.pass.focus();
		return false;
	}
	Member.submit();
}
</SCRIPT>
<head>
	<meta charset="utf-8">
	<title>STUDY-MEETING</title>
	<link href="css/main.css" rel="stylesheet" type="text/css">
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/base.css" rel="stylesheet">
</head>
<body>
	<div id="wrap">
		<div id="top">
			<div id="top_left">
			<p>우리들의 스터디공간</p>
			<p>STUDY-MEETING</p>
			</div>
			<div id="top_right"> 
				<br/>
				<br/>
				<br/>
				<p>내정보관리	QNA</p>

			</div>
		</div>
		<div id="body">
			<div id="body_1"></div>
			<div id="body_2">
				<form action="" method="post" name="login">
					<table align=center width='100' border='0' cellpadding='10' cellspacing='0'>
						<tr>
							<th>id : </th>
							<td><input type="text" maxlength=5 size=5 name=id>
							<td>
								<input onclick='Check()' type='button' value='로그인'>
								</td>
						</tr>
						<tr>
							<th>비밀번호 : </th>
							<td><input type="text" maxlength=5 size=5 name=pwd>
						</tr>
						<tr>
							<td>아이디/비밀번호찾기<td>
							<td><a href="member_input.jsp">회원가입</a></td>
						</tr>
						<tr>
							<td bgcolor='cccccc' align='center'>
								모임개설
							</td>
						</tr>
					</table>
				</form>
				</div>
			<div id="body_3"></div>
			<div id="body_4"></div>
			<div id="body_5"></div>
		</div>
		<div id="bottom">
			<h1>COPY RIGHT</h1>
			우리사이트의 copyriht는 xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx입니다.
		</div>
	</div>
</body>
</html>