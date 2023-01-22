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
  <title>Homepage</title>
  <link rel="stylesheet" type="text/css" href="styles/style.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
  <header>
    <nav>
      <ul>
        <li><a href="#">Home</a></li>
        <li><input type="search" id="search-box" placeholder="search..."></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#">Shop</a></li>
        <li><a href="#" class="carts"><i class="fa fa-shopping-cart"></i><span>0</span></a></li>
        <li><a href="#">About</a></li>
        <li><a href="#">Contact</a></li>
      </ul>
    </nav>
  </header>
  <main>
    <section id="hero">
      <h1>Welcome To ElectronicsShop</h1>
      <button>Shop Now</button>
      <!-- <p>We deliver you quality products</p> -->
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
          <button class="add-to-cart"> Add to Cart</button>
        </li>
        <%}%>
      </ul>
    </section>
      <section id="about-us">
      <h2>About Us</h2>
      <p> We are the best shop in Kigali.</p>
    </section>
  </main>
  <footer>
    <p>Copyright ©2022 My E-Commerce Store</p>
  </footer>

  <script src="./js/index.js"></script>
</body>
</html>
