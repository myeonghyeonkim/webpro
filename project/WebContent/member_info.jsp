<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>
<%
	String id=null;
	if ((session.getAttribute("id")==null) || 
			(!((String)session.getAttribute("id")).equals("admin"))) {
		out.println("<script>");
		out.println("location.href='loginForm.jsp'");
		out.println("</script>");
	}
	
	String info_id=request.getParameter("id");
	
	Connection conn=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	
	try {
			Context init = new InitialContext();
			DataSource ds = 
				(DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
			conn = ds.getConnection();
			
			pstmt=conn.prepareStatement("SELECT * FROM member WHERE id=?");
			pstmt.setString(1,info_id);
			rs=pstmt.executeQuery();
			rs.next();
	}catch(Exception e){
		e.printStackTrace();
	}
%>
<html>
<head>
<title>ȸ������ �ý��� �����ڸ��(ȸ�� ���� ����)</title>
</head>
<body>
<center>
<table border=1 width=300>
	<tr align=center><td>���̵� : </td><td><%=rs.getString("id") %></td></tr>
	<tr align=center><td>��й�ȣ : </td><td><%=rs.getString("password") %></td></tr>
	<tr align=center><td>�̸� : </td><td><%=rs.getString("name") %></td></tr>
	<tr align=center><td>���� : </td><td><%=rs.getString("age") %></td></tr>
	<tr align=center><td>���� : </td><td><%=rs.getString("gender") %></td></tr>
	<tr align=center><td>�̸��� �ּ� : </td><td><%=rs.getString("email") %></td></tr>
	<tr align=center>
		<td colspan=2><a href="member_list.jsp">����Ʈ�� ���ư���</a></td>
	</tr>
</table>
</center>
</body>
</html>
