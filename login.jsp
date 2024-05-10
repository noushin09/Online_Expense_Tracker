<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login-Expense Tracking</title>
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
          <p class="text-center fs-3">Login page</p>
          
          <c:if test="${not empty msg}">
          <p class="text-center text-danger fs-4">${msg}</p>
          <c:remove var="msg"/>
          </c:if>
          
        </div>
          <div class="card-body card-shadow">
              <form action="login" method="post">
                   <div class="mb-3">
                      <label>Email:</label><input type="email" 
                      name="Email" class="form-control" pattern="[a-zA-Z0-9._%+-]+@gmail\.com" title="Enter a valid email address" required>
                  </div>
                   <div class="mb-3">
                      <label>Password:</label><input type="password" 
                      name="Password" class="form-control" 
                       placeholder="password must be mix of 8 characters-digits"
                        title="password must be mix of 8 characters-digits" required>
                        <div class="g-recaptcha" data-sitekey="6LfyxMwpAAAAAFkUbOqbNsAguNBclioKxFJ24xpd"></div>   
                  </div>     

          <button class="btn btn-success col-md-12">Login</button>
                  <div class="text-center mt-2">
                    Don't have account?<a href="Register.jsp" class="text-decoration-none">create one</a>  
                  </div><br> 
              </form> </div>  
      </div>
    </div>
  </div>
  </div>
    </body>
</html>
