<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.dao.ExpenseDao"%>
<%@page import="com.entity.Expense" %>
<%@page import="com.db.HibernateUtil"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.User"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
            .card-shadow{
                box-shadow:0 0 6px 0 rgba(0,0,0,0.3);
            }
        </style>
<%@include file="../component/all_style.jsp"%>
</head>
<body class="bg-light">
<c:if test="${empty loginUser}">
<c:redirect url="../login.jsp"></c:redirect>
</c:if>
  <%@include file="../component/navbar.jsp"%>
   <div class="container-fluid p-5">
            <div class="row">
                <div class="col-md-8 offset-md-2">
                    <div class="card">
                        <div class="card-header text-center">
                            <p class="fs-3">All Expenses</p>
                             <c:if test="${not empty msg}">
          <p class="text-center text-success fs-4">${msg}</p>
          <c:remove var="msg"/>
          </c:if>               
                            <div class="card-body card-shadow">
                                    <table class="table">
  <thead>
    <tr>
      <th scope="col">Title</th>
      <th scope="col">Description</th>
      <th scope="col">Date</th>
      <th scope="col">Time</th>
      <th scope="col">Price</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  <% 
  User user=(User)session.getAttribute("loginUser");
  ExpenseDao dao=new ExpenseDao(HibernateUtil.getSessionFactory());
  List <Expense> list=dao.getAllExpenseByUser(user);
  for(Expense ex:list){
	  %>
	  <tr>
      <th><%=ex.getTitle() %></th>
      <td><%=ex.getDescription() %></td>
      <td><%=ex.getDate() %></td>
      <td><%=ex.getTime() %></td>
      <td><%=ex.getPrice() %></td>
      <td>
      <a href="edit_expense.jsp?id=<%=ex.getId() %>" class="btn btn-sm btn-primary me-1">Edit</a>
      <a href="../deleteExpense?id=<%=ex.getId() %>" class="btn btn-sm btn-danger me-1">Delete</a>
      </td>
      </tr>
      <%
  }
 %>
  </tbody>
</table>            
                            </div>
                        </div> 
                    </div>
                </div>
            </div>
        </div>
</body>
</html>