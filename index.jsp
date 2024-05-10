<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.db.HibernateUtil" %>
<%@page import="org.hibernate.SessionFactory" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Expense Tracking System</title>
        <%@include file="component/all_style.jsp"%>
    </head>
    <body>
       <%@include file="component/navbar.jsp"%>
       <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="img/ex1.jpg" class="d-block w-100" alt="..." height="650px">
    </div>
    <div class="carousel-item">
      <img src="img/ex2.jpg" class="d-block w-100" alt="..." height="650px">
    </div>
    <div class="carousel-item">
      <img src="img/ex3.jpg" class="d-block w-100" alt="..." height="650px">
    </div>
  </div>
           <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
    </body>
</html>
