<%@ page language="java" contentType="text/html"%>
<%@ page import="java.io.*" %> 
<%@ page import="javax.servlet.ServletException" %>
<%@ page import="java.sql.*"%>


<!DOCTYPE html>
<html>
<head>
<title>book database</title>
</head>
<body>
<%	Connection conn;
	
	PreparedStatement pstmt;
	ResultSet resultset;
	
	 final String DB_URL = "jdbc:postgresql://localhost:5432/s2a130050131531";
	 final String USER = "postgres";
	 final String PASS = "1234";
	 Class.forName("org.postgresql.Driver");
	 conn = DriverManager.getConnection(DB_URL, USER, PASS);
	 Statement stmt= conn.createStatement();
	 out.println("Connected database successfully...");
        
     %>
     <br>
     <%
		String id1=request.getParameter("bookid");
		String name=request.getParameter("book_name");
		String auth=request.getParameter("author");
		int id=Integer.parseInt(id1);	
		String sql="INSERT INTO bookdb(id, book_name, author) VALUES(?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, id);
		pstmt.setString(2, name);
		pstmt.setString(3, auth);
		pstmt.addBatch();
		if(pstmt.executeBatch().length != 0){
        	out.println("Record has been inserted");
        }else {
        	out.println("sorry! Failure");
        }
		%>
		<br>
		<%
		out.print("Enroll no: 130050131531");
		resultset = stmt.executeQuery("select * from bookdb");
		%>
		<br>
	        <TABLE BORDER="1">
	            <tr>
	                <th>ID</th>
	                <th>Name</th>
	                <th>Author</th>
	                
	            </tr>
	            <% while(resultset.next()){ %>
	            <tr>
	                <td> <%= resultset.getInt(1) %></td>
	                <td> <%= resultset.getString(2) %></td>
                        <td> <%= resultset.getString(3) %></td>
	            </tr>
	            <% } %>
	        </TABLE>

</body>
</html>