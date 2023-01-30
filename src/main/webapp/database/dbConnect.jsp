<%@page import="java.sql.*"%>

<%
    Connection con=null;
    ResultSet rs=null;
    Statement stmt=null;
    try{
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ElectronicsShop","root","");
    stmt=con.createStatement(); 
    }catch(SQLException se){
    se.printStackTrace();
    }
%>
