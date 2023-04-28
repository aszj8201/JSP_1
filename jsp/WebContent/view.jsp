<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/style1.css">
</head>
<body>

<%
Class.forName("oracle.jdbc.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "1234");
Statement stmt = con.createStatement();

String sql = "select a.std_no, a.std_name, to_char(to_date(std_birth),'yyyy-mm-dd'), a.std_address, decode(att_yn, 'Y', '출석', 'N', '결석') from tbl_std_202105 a left outer join tbl_att_202105 on a.std_no = att_std_no order by std_no"; 
ResultSet rs = stmt.executeQuery(sql);


%>
	<%@include file="header.jsp" %>
	<%@include file="nav.jsp" %>
	<section>
		<h3>학생현황</h3>
			<table border="1">
				<tr>
					<th>학번</th>
					<th>이름</th>
					<th>생년월일</th>
					<th>주소</th>
					<th>출결여부</th>
					
				</tr>
				<%
					while(rs.next()) {
				%>
				<tr>
					<td><%=rs.getString(1) %></td>
					<td><%=rs.getString(2) %></td>
					<td><%=rs.getString(3) %></td>
					<td><%=rs.getString(4) %></td>
					<td><%=rs.getString(5) %></td>
				</tr>
				
				<%} 
				rs.close();
				stmt.close();
				con.close();
				%>
			</table>
	</section>
	<%@include file="footer.jsp" %>
	</body>	
</html>