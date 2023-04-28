<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/style1.css">
<script src="./js/script.js"></script>
</head>
<body>
<%@ include file="header.jsp" %>
<%@ include file="nav.jsp" %>
<section>
<h3>학생등록</h3>
<form name="fm" action="student1.jsp" onsubmit="return check();">
			<table border="1"> 
				<tr>
					<th>학번</th>
					<td><input name="std_no" class="std_no"></td>
				</tr>
				<tr>
					<th>이름</th>
					<td><input name="std_nm" class="std_nm"></td>
				</tr>
								<tr>
					<th>생년월일</th>
					<td><input name="std_birth" class="std_birth"></td>
				</tr>
								<tr>
					<th>주소</th>
					<td><input name="std_address" class="std_address"></td>
				</tr>
				<tr>
					<th colspan="2"><input type="submit" value="등록" class="ininin"></th>
				</tr>
			</table>
		</form>
</section>
<%@ include file="footer.jsp" %>
</body>
</html>