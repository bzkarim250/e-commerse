<%-- 
    Document   : singleProduct
    Created on : Jan 23, 2023, 10:28:58 AM
    Author     : bz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<@ include file="../database/dbConnect.jsp" %>
<!DOCTYPE html>
<html>
<head>
  <title>Product Details</title>
  <link rel="stylesheet" type="text/css" href="../styles/style.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<%@ include file="../Layouts/navbar.jsp" %>
<%
String id=request.getParameter("id");
PreparedStatement ps=con.prepareStatement( "SELECT*FROM products where id=?");
ps.setString(1,id);
rs=ps.executeQuery();
while(rs.next()){
String image=rs.getString("image");
image = image.substring(1, image.length() - 1);
%>

<div class="singleProduct">
    <img src=<%=image%>>
    <h3><%=rs.getString("title")%></h3>
    <p><%=rs.getString("description")%></p>
     <p><%=rs.getString("size")%></p>
    <b><p><%=rs.getString("price")%></p></b>
    <button class="add-to-cart"> Add to Cart</button>
</div>
<%}%>

<%@ include file="../Layouts/footer.jsp" %>

  <script src="../js/cart.js"></script>
</body>
</html>

