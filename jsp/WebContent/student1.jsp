<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	Class.forName("oracle.jdbc.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "1234");
	request.setCharacterEncoding("UTF-8");
	
	String std_no = request.getParameter("std_no");
	String std_nm = request.getParameter("std_nm");
	String std_birth = request.getParameter("std_birth");
	String std_address = request.getParameter("std_address");
	
	String sql = "insert into tbl_std_202105 values(?, ?, ?, ?)";
	
	PreparedStatement pstmt = con.prepareStatement(sql);
	
	pstmt.setString(1, std_no);
	pstmt.setString(2, std_nm);
	pstmt.setString(3, std_birth);
	pstmt.setString(4, std_address);
	
	pstmt.executeQuery();
	
	con.close();
	pstmt.close();
	
	response.sendRedirect("view.jsp");

%>