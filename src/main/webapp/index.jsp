<%@page import="java.sql.*"%>

<%
    Connection con=null;
    Statement stmt=null;
    ResultSet rs=null;
    

    try {
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ElectronicsShop","","");
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
        <li>
          <img src="product1.jpg" alt="product 1">
          <h3>Product 1</h3>
          <p>$19.99</p>
          <button>Add to Cart</button>
        </li>
      </ul>
    </section>
    <section id="about-us">
      <h2>About Us</h2>
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed auctor, magna sit amet bibendum dignissim, augue velit convallis ipsum, at fermentum ligula augue eget metus.</p>
    </section>
  </main>
  <footer>
    <p>Copyright ©2022 My E-Commerce Store</p>
  </footer>
</body>
</html>
