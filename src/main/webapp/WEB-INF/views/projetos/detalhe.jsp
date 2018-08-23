<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
 <!-- meta -->
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>${projeto.projeto} Portifolio </title>
  <meta content="" name="keywords">
  <meta content="" name="description">
  
  	<c:url value="/resources/css" var="cssPath" />
  	<c:url value="/resources/lib/bootstrap/css" var="bootPath" />
    <link rel="stylesheet" href="${bootPath}/bootstrap.min.css" />
   

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Poppins:300,300i,400,400i,500,500i,600,600i,700,700i|Playfair+Display:400,400i,700,700i,900,900i" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link rel="stylesheet" href="${bootPath}/bootstrap.min.css">

  <!-- Libraries CSS Files -->
  <link href="resources/lib/ionicons/css/ionicons.min.css" rel="stylesheet">
  <link href="resources/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="resources/lib/magnific-popup/magnific-popup.css" rel="stylesheet">
  <link href="resources/lib/hover/hover.min.css" rel="stylesheet">

  <!-- Blog Stylesheet File -->
  <link href="${cssPath}/blog.css" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="${cssPath}/style.css" rel="stylesheet">

  <!-- Responsive css -->
  <link href="${cssPath}/responsive.css" rel="stylesheet">

  <!-- Favicon -->
  <link rel="shortcut icon" href="resources/images/favicon.png">

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
          <a href="index.html">Erik Pedro Gonçalves</a>
        </div>

        <div class="responsive"><i data-icon="m" class="ion-navicon-round"></i></div>

        <ul class="nav-menu list-unstyled">
          <li><a href="#homee" class="smoothScroll">Home</a></li>
          <li><a href="#about" class="smoothScroll">About</a></li>
          <li><a href="#portfolio" class="smoothScroll">Portfolio</a></li>
          <li><a href="#blog" class="smoothScroll">Blog</a></li>
          <li><a href="#contact" class="smoothScroll">Contact</a></li>
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
                <article id="${projeto.id}">
                  <div class="journal-txt">
                      <h4><a>${projeto.projeto }</a></h4>
                    </div>
                  <img src="images/blog-post-big.jpg" class="img-responsive" alt="reviews2">
                  <div class="content-main single-post padDiv">
                    <div class="post-meta">
                      <ul class="list-unstyled mb-0">
                        <li class="author">by:<a href="#">Erik Pedro Gonçalves</a></li>
                        <li class="date">date:<a href="#"><fmt:formatDate pattern="dd/MM/yyyy" value="${projeto.dataDeploy.time}"/></a></li>
                        <li class="commont"><i class="ion-ios-heart-outline"></i><a href="${projeto.linkprojeto}">${projeto.linkprojeto}</a></li>
                      </ul>
                    </div>
                    <p class="mb-30">${projeto.descricao}</p>
                    <blockquote>If you are still looking for that one person who will change your life, take a look in the mirror.</blockquote>
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
          <li><a href="#"><i class="ion-social-facebook"></i></a></li>
          <li><a href="#"><i class="ion-social-twitter"></i></a></li>
          <li><a href="#"><i class="ion-social-instagram"></i></a></li>
          <li><a href="#"><i class="ion-social-googleplus"></i></a></li>
          <li><a href="#"><i class="ion-social-tumblr"></i></a></li>
          <li><a href="#"><i class="ion-social-dribbble"></i></a></li>
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

  <!-- JavaScript Libraries -->
  <script src="resources/lib/jquery/jquery.min.js"></script>
  <script src="resources/lib/jquery/jquery-migrate.min.js"></script>
  <script src="resources/lib/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="resources/lib/typed/typed.js"></script>
  <script src="resources/lib/owlcarousel/owl.carousel.min.js"></script>
  <script src="resources/lib/magnific-popup/magnific-popup.min.js"></script>
  <script src="resources/lib/isotope/isotope.pkgd.min.js"></script>

  <!-- Contact Form JavaScript File -->
  <script src="contactform/contactform.js"></script>

  <!-- Template Main Javascript File -->
  <script src="resources/js/main.js"></script>

</body>

</html>