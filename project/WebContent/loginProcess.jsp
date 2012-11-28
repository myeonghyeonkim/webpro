<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import="java.sql.*"%>
<%-- <%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>--%>
<%
	String id=request.getParameter("id");
	String pwd=request.getParameter("pwd");
	
	Connection conn=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	
	
	try {
		
		String url="jdbc:mysql://localhost:3306/webpro";
		String user="admin";
		String user_pwd="aldks12";
  		//Context init = new InitialContext();
  		//DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
  		Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection(url,user,user_pwd);
			String sql="SELECT * FROM user WHERE id=?";
  		pstmt=conn.prepareStatement(sql);
  		pstmt.setString(1,id);
  		rs=pstmt.executeQuery();
  		
  		
  		if(rs.next()){
  			if(pwd.equals(rs.getString("password"))){
  				session.setAttribute("id",id);
  				out.println("<script>");
  		  	out.println("location.href='main.jsp'");
  		  	out.println("</script>");
  			}
  		}
  		
  		out.println("<script>");
  		out.println("location.href='loginForm.jsp'");
  		out.println("</script>");
	}catch(Exception e){
		e.printStackTrace();
		System.out.println("드라이버 로등실패");
 	}
%>
