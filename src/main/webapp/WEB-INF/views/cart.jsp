<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
<title>Cart</title>
<link href="<c:url value="/resources/css/bootstrap.min.css"/>"
    rel="stylesheet">
<script src="<c:url value="/resources/js/controllers.js"/>" ></script>
</head>
<body>
<!--  <nav class="navbar navbar-expand  navbar-dark bg-dark">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="../">Home</a>
        </div>
    </div>
</nav>
<div class="jumbotron">
    <div class="container">
        <h1 class="display-3">장바구니</h1>
    </div>
</div>
-->
<div class="container" >
    <div>
    	<form:form  name="clearForm"  method="delete">  
            <a href="javascript:clearCart()"  class="btn btn-danger pull-left">삭제하기</a> 
        </form:form >
        <a href="<c:url value="/order?cartId=${cartId}"/>" class="btn btn-success float-right"> 주문하기</a>
    </div>
    <div style="padding-top: 50px">
        <table class="table table-hover">
        <tr>
            <th>도서</th>
            <th>가격</th>
            <th>수량</th>
            <th>소계</th>
            <th>비고</th>
        </tr>
        <form:form  name="removeForm"  method="put">
        <c:forEach items="${cart.cartItems}" var="item">
        <tr>
            <td>${item.value.book.bookId}-${item.value.book.name}</td>
            <td>${item.value.book.unitPrice}</td>
            <td>${item.value.quantity}</td>
            <td>${item.value.totalPrice}</td>
            <td> <a href="javascript:removeFromCart('../cart/remove/${item.value.book.bookId}')"  class="badge badge-danger">삭제</a></td>
        </tr>
        </c:forEach>
        </form:form>
        <tr>
            <th></th>
            <th></th>
            <th>총액</th>
            <th>${cart.grandTotal}</th>
            <th></th>
        </tr>
        </table>
        <a href="<c:url value="/books" />" class="btn btn-secondary"> &laquo; 쇼핑 계속하기</a>
    </div>
<!--    <hr>
    <footer>
        <p>&copy;  BookMarket</p>
    </footer>
  -->    
</div>
</body>
</html>