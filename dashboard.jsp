<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.dao.ExpenseDao"%>
<%@page import="com.entity.Expense" %>
<%@page import="com.db.HibernateUtil"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.User"%>
<%@page import="com.entity.Seven"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="org.hibernate.Session"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Dashboard</title>
<%@include file="../component/all_style.jsp"%>

   <link href="style.css" rel="stylesheet">
</head>
<body>
   <%@include file="../component/navbar.jsp"%>
    <div class="container">

        <div class="summary">
            <div class="total-expenses">
                <h2>Total Expenses</h2>
                <p>$500</p>
                </div>
                
            <div class="average-expense">
                <h2>Average Expense</h2>
                <p>$50</p>
            </div>
        </div>
         <div class="partition-line"></div>
    <div class="containers">
        <div class="total-expense">
            <h2>Total Expenses for the Past 7 Days</h2>
            <p id="totalExpense">$0</p>
        </div>
    </div>
     <div class="expenses-list">
            <h2>Recent Expenses</h2>
            <ul>
                <li>Food - $30</li>
                <li>Transportation - $20</li>
                <li>Entertainment - $50</li>
                <li>Utilities - $100</li>
                <li>Shopping - $300</li>
            </ul>
        </div>
        </div>
</body>
</html>