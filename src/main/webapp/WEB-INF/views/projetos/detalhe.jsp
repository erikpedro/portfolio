<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>
<!DOCTYPE html>
<html>
<head>
 <!-- meta -->
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>${projeto.projeto} Portifolio </title>
  <meta content="" name="keywords">
  <meta content="" name="description">
    <c:url value="/resources/css" var="bootstrapCss"/>
<c:url value="/resources/js" var="bootstrapJs"/>
<c:url value="/resources" var="boot"/>
<c:url value="/resources/img-anexos" var="img"/>

<!-- Bootstrap Core CSS -->
<link rel='stylesheet' href="${bootstrapCss }/bootstrap.css">
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

  <c:url value="/resources/css" var="blog"/>
  <link href="${blog }/blog.css" rel="stylesheet">

  <c:url value="../.." var="img"/>
  <link href="${img }/javar" rel="stylesheet">

  <!-- Responsive css -->
  <c:url value="/resources/css" var="responsive"/>
  <link href="${responsive }/responsive.css" rel="stylesheet">

  <!-- =======================================================
    Theme Name: Folio
    Theme URL: https://bootstrapmade.com/folio-bootstrap-portfolio-template/
    Author: BootstrapMade.com
    Author URL: https://bootstrapmade.com
  ======================================================= -->
</head>

<body>
  <!-- start section navbar -->
  <nav id="main-nav-subpage" class="subpage-nav">
    <div class="row">
      <div class="container">

        <div class="logo">
          <a href="index.html"><img src="../../resources/images/logo.png" alt="logo"></a>
        </div>

        <div class="responsive"><i data-icon="m" class="ion-navicon-round"></i></div>

        <ul class="nav-menu list-unstyled">
      
          <li><a href="${s:mvcUrl('HC#index').build() }" class="smoothScroll">Home</a></li>
          <li><a href="${s:mvcUrl('HC#index').build() }" class="smoothScroll">Sobre</a></li>
          <li><a href="${s:mvcUrl('HC#index').build() }" class="smoothScroll">Contato</a></li>
          <li> <a href="${s:mvcUrl('PC#listar').build() }" class="smootScroll" >Admin</a></li>
        </ul>

      </div>
    </div>
  </nav>
  <!-- End section navbar -->
  <!-- start section main content -->
  <div class="main-content paddsection">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-md-8 col-md-offset-2">
          <div class="row">
            <div class="container-main single-main">
              <div class="col-md-12">
                <div class="block-main mb-30">
                  <img src="${img }/${projeto.anexoPath}" class="img-responsive" alt="reviews2">
                <article id="${projeto.id}">
                  <div class="content-main single-post padDiv">
                  <div class="journal-txt">
                      <h4><a>${projeto.projeto }</a></h4>
                    </div>
                    <div class="post-meta">
                      <ul class="list-unstyled mb-0">
                        <li class="author">by:<a href="#">Erik Pedro Gonçalves</a></li>
                        <li class="date">date:<a href="#"><fmt:formatDate pattern="dd/MM/yyyy" value="${projeto.dataDeploy.time}"/></a></li>
                        <li class="commont"><i class="ion-android-cloud-circle"> </i>Link: <a target="_blank" href="${projeto.linkprojeto}">${projeto.linkprojeto}</a></li>
                      </ul>
                    </div>
                    <p class="mb-30">${projeto.descricao}</p>
                    <blockquote>${projeto.descricao}</blockquote>
                  </div>
                  </article>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!--  </div> -->
  <!-- start section main content -->

  <!-- start section footer -->
  <div id="footer" class="text-center">
    <div class="container">
<div class="socials-media text-center">

        <ul class="list-unstyled">
          <li><a href="#"><i class="ion-social-github"></i></a></li>
          <li><a href="#"><i class="ion-social-linkedin"></i></a></li>
          <li><a href="#"><i class="ion-social-twitter"></i></a></li>
          <li><a href="#"><i class="ion-social-instagram"></i></a></li>
          <li><a href="#"><i class="ion-social-skype"></i></a></li>
        </ul>

      </div>

      <p>&copy; Copyrights Erik Pedro Gonçalves. All rights reserved.</p>

      <div class="credits">
        <!--
          All the links in the footer should remain intact.
          You can delete the links only if you purchased the pro version.
          Licensing information: https://bootstrapmade.com/license/
          Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Folio
        -->
        Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
      </div>

    </div>
  </div>
  <!-- End section footer -->

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