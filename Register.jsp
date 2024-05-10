<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register-Expense Tracking</title>
        <%@include file="component/all_style.jsp"%>         
        <style type="text/css">
            .card-shadow{
                box-shadow:0 0 6px 0 rgba(0,0,0,0.3);
            }
        </style>
    </head>
    <body class="bg-light">
  <%@include file="component/navbar.jsp"%>
  <div class="container-fluid p-5">
  <div class="row">
    <div class="col-md-6 offset-md-3">
      <div class="card card-shadow">
        <div class="card-header">
          <p class="text-center fs-3">Register page</p>
          
          <c:if test="${not empty msg}">
          <p class="text-center text-success fs-4">${msg}</p>
          <c:remove var="msg"/>
          </c:if>
          
        </div>
          <div class="card-body card-shadow">
              <form action="userRegister" method="post">
                  <div class="mb-3">
                      
                      <label>Enter Full Name:</label>
                      <i class="zmdi zmdi-lock"></i>
                      <input type="text" name="fullname" class="form-control" 
                             placeholder="Your Name(atleast 5 character long)" required >
                  </div>
                   <div class="mb-3">
                      <label>Email:</label><input type="email" 
                       name="txtemail" class="form-control" placeholder="Your Email(You can use your google account or make new also)" 
                       pattern="[a-zA-Z0-9._%+-]+@gmail.com$" title="Enter a valid email address" required></div>
                   <div class="mb-3">
                      <label>Password:</label><input type="password" 
                        name="txtpassword" class="form-control" 
                        placeholder="password must be mix of 8 characters-digits"
                        title="password must be mix of 8 characters-digits" required>
                  </div>
                   <div class="mb-3">
                      <label>About:</label><input type="text" 
                      name="about" class="form-control" title="About You" 
                      placeholder="eg:Housewife,worker,professor.." required>
                  </div>
                  <button class="btn btn-success col-md-12">Register</button>
              </form>
      </div>
    </div>
  </div>
  </div>
  </div>
    </body>
</html>
