<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>
<!doctype html>
<html lang="en">
  <head>
  
    <c:url value="/resources/css" var="bootstrapCss"/>
<c:url value="/resources/js" var="bootstrapJs"/>
<c:url value="/resources" var="boot"/>

<!-- Bootstrap Core CSS -->
<link rel='stylesheet' href="${bootstrapCss }/bootstrap.css">
<link rel='stylesheet' href="${bootstrapCss }/floating-labels.css">
<script type="text/javascript" src="${bootstrapJs }/jquery.min.js" ></script>
<script type="text/javascript" src="${bootstrapJs }/bootstrap.min.js"></script>
<script type="text/javascript" src="${bootstrapJs }/bootstrap.bundle.min.js" ></script>

 <!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon" media="all" href="${boot }/favicon.ico" />

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Poppins:300,300i,400,400i,500,500i,600,600i,700,700i|Playfair+Display:400,400i,700,700i,900,900i" rel="stylesheet">


  <!-- Libraries CSS Files -->
  <c:url value="/resources/ionicons/css" var="icons"/>
  <link href="${icons }/ionicons.min.css" rel="stylesheet">
  
   <c:url value="/resources/owlcarousel/assets" var="carousel"/>
  <link href="${carousel }/owl.carousel.min.css" rel="stylesheet">
  
  <c:url value="/resources/magnific-popup" var="magnific"/>
  <link href="${magnific }/magnific-popup.css" rel="stylesheet">
  
  
  <link href="${bootstrapCss }/hover.min.css" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <c:url value="/resources/css" var="style"/>
  <link href="${style }/style.css" rel="stylesheet">

  <!-- Responsive css -->
  <c:url value="/resources/css" var="responsive"/>
  <link href="${responsive }/responsive.css" rel="stylesheet">
  
  
  

    <title>Login Portfolio</title>

  </head>

  <body>
    <form:form servletRelativeAction="/login" method="POST"  class="form-signin">
      <div class="text-center mb-4">
        <img class="mb-4" src="resources/images/javam.png" alt="" width="72" height="72">
        <h1 class="h3 mb-3 font-weight-normal">Login Portifolio</h1>
      </div>

      <div class="form-label-group">
        <input name="username" type="email" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>
        <label for="inputEmail">Email address</label>
      </div>

      <div class="form-label-group">
        <input name="password" type="password" id="inputPassword" class="form-control" placeholder="Password" required>
        <label for="inputPassword">Password</label>
      </div>

     
      <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
      <p class="mt-5 mb-3 text-muted text-center">&copy; 2017-2018</p>
    </form:form>
    
    <c:url value="/resources/isotope" var="isotope"/>
<c:url value="/resources/magnific-popup" var="magnificjs"/>
<c:url value="/resources/owlcarousel" var="carouseljs"/>
<c:url value="/resources/typed" var="typed"/>


  <!-- JavaScript Libraries -->
  <script type="text/javascript" src="${typed }/typed.js"></script>
  <script type="text/javascript" src="${carouseljs }/owl.carousel.min.js"></script>
  <script type="text/javascript" src="${magnificjs }/magnific-popup.min.js"></script>
  <script type="text/javascript" src="${isotope }/isotope.pkgd.min.js"></script>


  <!-- Template Main Javascript File -->
  <script src="${bootstrapJs }/main.js"></script>
    
    
  </body>
</html>
