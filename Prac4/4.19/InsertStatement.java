import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class InsertStatement extends HttpServlet{
  public void doGet(HttpServletRequest request,HttpServletResponse response)throws ServletException, IOException{  
  response.setContentType("text/html");
  PrintWriter out = response.getWriter();
  String url = 
   "jdbc:postgresql://localhost:5432/s2a130050131531";
  Connection conn;
  try{
  Class.forName("org.postgresql.Driver");
  conn = DriverManager.getConnection(url,"postgres","1234");
  Statement statement = conn.createStatement();
  out.println("En No:130050131531<br/>");
  String query = "insert into student values(5,'Dhruv','Cse')";
  
  int i = statement.executeUpdate(query);
  if(i!=0){
  out.println("The record has been inserted");
  }
  else{
  out.println("Sorry! Failure");
  }
  statement.close();
  }
  catch (Exception e){
  System.out.println(e);
  }
  }
}