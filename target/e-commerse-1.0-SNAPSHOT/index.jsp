<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<%
    Connection con=null;
    Statement stmt=null;
    ResultSet rs = null;

    try {
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ElectronicsShop","root","");
        stmt = con.createStatement();
        String sql = "SELECT * FROM products";
        rs = stmt.executeQuery(sql);
    } catch (SQLException se) {
    se.printStackTrace();
} catch (Exception e) {
    e.printStackTrace();
}
%>



<!DOCTYPE html>
<html>
<head>
  <title>E-Commerce Homepage</title>
  <link rel="stylesheet" type="text/css" href="styles/styles.css">
</head>
<body>
  <header>
    <nav>
      <ul>
        <li><a href="#">Home</a></li>
        <li><a href="#">Shop</a></li>
        <li><a href="#">About</a></li>
        <li><a href="#">Contact</a></li>
      </ul>
    </nav>
  </header>
  <main>
    <section id="hero">
      <h1>Welcome to Our E-Commerce Store</h1>
      <button>Shop Now</button>
    </section>
    <section id="featured-products">
      <h2>Featured Products</h2>
      <ul>
          <%while(rs.next()){%>
        <li>
<%
    String image=rs.getString("image");
    image = image.substring(1, image.length() - 1); //because the image link from db has this format []
%>
<img src=<%=image%>>
          <h3><%=rs.getString("title")%></h3>
          <p>$<%=rs.getString("price")%> </p>
          <button>Add to Cart</button>
        </li>
        <%}%>
      </ul>
    </section>
      <section style="background-color: #D4CC9D" id="about-us">
      <h2>About Us</h2>
      <p> We are the best shop in Kigali.</p>
    </section>
  </main>
  <footer>
    <p>Copyright ©2022 My E-Commerce Store</p>
  </footer>
</body>
</html>
