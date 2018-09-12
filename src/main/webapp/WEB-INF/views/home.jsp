<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>



<!DOCTYPE html>
<html lang="en">

<head>
  <!-- meta -->
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Portfolio - Erik Pedro</title>
  <meta content="" name="keywords">
  <meta content="" name="description">
  
  <c:url value="/resources/css" var="bootstrapCss"/>
<c:url value="/resources/js" var="bootstrapJs"/>
<c:url value="/resources" var="boot"/>

<!-- Bootstrap Core CSS -->


    <c:url value="/resources/css" var="style"/>
  <link href="${style }/style.css" rel="stylesheet">

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

  <!-- Responsive css -->
  <c:url value="/resources/css" var="responsive"/>
  <link href="${responsive }/responsive.css" rel="stylesheet">
  <!-- Favicon -->

  <!-- =======================================================
    Theme Name: Folio
    Theme URL: https://bootstrapmade.com/folio-bootstrap-portfolio-template/
    Author: BootstrapMade.com
    Author URL: https://bootstrapmade.com
  ======================================================= -->
</head>

<body>

  <!-- start section navbar -->
  <nav id="main-nav">
    <div class="row">
      <div class="container">

        <div class="logo">
          <a href="index.html"><img src="resources/images/logom.png" alt="logo"></a>
        </div>

        <div class="responsive"><i data-icon="m" class="ion-navicon-round"></i></div>

        <ul class="nav-menu list-unstyled">
      
          <li><a href="#header" class="smoothScroll">Home</a></li>
          <li><a href="#about" class="smoothScroll">Sobre</a></li>
          <li><a href="#journal" class="smoothScroll">Portfolio</a></li>
          <li><a href="#contact" class="smoothScroll">Contato</a></li>
          <li> <a href="${s:mvcUrl('PC#listar').build() }" class="smootScroll" >Admin</a></li>
          <security:authorize access="isAuthenticated()">
         	 <li><a href="logout"><i class="ion-log-out"></i></a></li>
          </security:authorize>
        </ul>

      </div>
    </div>
  </nav>
  <!-- End section navbar -->


  <!-- start section header -->
  <div id="header" class="home">

    <div class="container">
      <div class="header-content name a" >
      
        <h1>I'm <span class="typed"></span></h1>
        <p>Portfolio em Desenvolvimento, Versão 1.0</p>

        <ul class="list-unstyled list-social">
          <li><a target="_blank" href="https://github.com/erikpedro"><i class="ion-social-github"></i></a></li>
          <li><a target="_blank"  href="https://www.linkedin.com/in/erik-gon%C3%A7alves-1a219978/"><i class="ion-social-linkedin"></i></a></li>
          <li><a target="_blank"  href="mailto:erikpedro@gmail.com?cc=erikpedro@outlook.com&subject=Acessei Seu Portolio&body= Ola Gostou do Portfolio?"><i class="ion-ios-email"></i></a></li>
          
        </ul>
      </div>
    </div>
  </div>
  <!-- End section header -->


  <!-- start section about us -->
  <div id="about" class="paddsection">
    <div class="container">
      <div class="row justify-content-between">

        <div class="col-lg-4 ">
          <div class="div-img-bg">
            <div class="about-img">
              <img src="resources/images/code.jpg" class="img-responsive" alt="me">
            </div>
          </div>
        </div>

        <div class="col-lg-7">
          <div class="about-descr">

            <p class="p-heading">im a ux /ui designer austin based who loves clean, simple & unique design. i also enjoy crafting brand identities, icons, & ilustration work. </p>
            <p class="separator">To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is. The European languages are members of the same family.English person.</p>

          </div>

        </div>
      </div>
    </div>
  </div>
  <!-- end section about us -->


  <!-- start section services -->
  <div id="services">
    <div class="container">

        <div class="services-carousel owl-theme">

          <div class="services-block">

            <i class="ion-leaf"></i>
           
            <a target="_blank"  href="https://cursos.alura.com.br/career/certificate/c1a2937f-3592-4845-99da-66a553b14bc3"><span >Desenvolvedor Java Web com Spring</span> </a>
            <p  class="separator">As Carreiras na Plataforma Alura são grupos de cursos com uma ordem para você evoluir como profissional em diferentes áreas. </p>
          </div>

          <div class="services-block">

            <i class="ion-coffee"></i>
          <a target="_blank"  href="https://cursos.alura.com.br/career/certificate/2762cb10-9927-46eb-844a-275666676d78" ><span>Desenvolvedor Java Web Enterprise</span></a>
            <p class="separator">As Carreiras na Plataforma Alura são grupos de cursos com uma ordem para você evoluir como profissional em diferentes áreas. </p>

          </div>

          <div class="services-block">

            <i class="ion-android-menu"></i>
          <a target="_blank" href="https://cursos.alura.com.br/certificate/31571023-de3a-46b3-a0e6-d009a180e1b9"><span>EJB</span></a>  
            <p class="separator">O Poder do Java EE</p>

          </div>

          <div class="services-block">

            <i class="ion-settings"></i>
           <a target="_blank"  href="https://cursos.alura.com.br/certificate/2fc60645-dd40-47db-b655-98ebf708e4c7"><span>Docker</span></a> 
            <p class="separator">Criando containers sem dor de cabeça</p>

          </div>

          <div class="services-block">

            <i class="ion-power"></i>
           <a target="_blank"  href="https://cursos.alura.com.br/certificate/aa7367d5-134c-4038-83b8-4e9b339236c8"><span>Integração Contínua Jenkins</span></a> 
            <p class="separator">Maturidade e Produtividade no Desenvolvimento de Software</p>

          </div>

          <div class="services-block">

            <i class="ion-social-angular"></i>
            <a target="_blank"  href="https://www.udemy.com/certificate/UC-4AIZFP80/"><span>Angular 4</span></a>
            <p class="separator">Construindo Aplicações Web Com o Novo Angular (4, 5 e 6)</p>

          </div>
          
            <div class="services-block">

            <i class="ion-network"></i>
            <a target="_blank"  href="https://cursos.alura.com.br/certificate/f423b465-0922-4713-97d3-9b4a5d8ec32b"><span>Git</span></a>
            <p class="separator">Controle e compartilhe seu código</p>

          </div>

        </div>

    </div>

  </div>
  <!-- end section services -->

  <!-- start section journal -->
  <div id="journal" class="text-left paddsection">

    <div class="container">
      <div class="section-title text-center">
        <h2>Portfolio</h2>
      </div>
    </div>

    <div class="container">
      <div class="journal-block">
        <div class="row">
		<c:forEach items="${projetos }" var="projeto">
          <div class="col-lg-4 col-md-6">
            <div class="journal-info">

              <a href="${s:mvcUrl('PC#detalhe').arg(0, projeto.id).build() }"><img src="${projeto.anexoPath}" class="img-responsive" alt="img"></a>

              <div class="journal-txt">

                <h4><a href="${s:mvcUrl('PC#detalhe').arg(0, projeto.id).build() }">${projeto.projeto }</a></h4>
                <p class="separator">${projeto.descricao }
                </p>

              </div>

            </div>
          </div>
          </c:forEach>
        </div>
      </div>
    </div>
    

  </div>
  <!-- End section journal -->


  <!-- start sectoion contact -->
  <div id="contact" class="paddsection">
    <div class="container">
      <div class="contact-block1">
        <div class="row">

          <div class="col-lg-6">
            <div class="contact-contact">

              <h2 class="mb-30">CONTATO</h2>

              <ul class="contact-details">
                <li><span>Brasilia</span></li>
                <li><span>Samambaia Sul</span></li>
                <li><span>+55 61983817218</span></li>
                <li><span>erikpedro@gmail.com</span></li>
              </ul>

            </div>
          </div>

          <div class="col-lg-6">
            <form action="" method="post" role="form" class="contactForm">
              <div class="row">

                <div id="sendmessage">Your message has been sent. Thank you!</div>
                <div id="errormessage"></div>

                <div class="col-lg-6">
                  <div class="form-group contact-block1">
                    <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                    <div class="validation"></div>
                  </div>
                </div>

                <div class="col-lg-6">
                  <div class="form-group">
                    <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email" />
                    <div class="validation"></div>
                  </div>
                </div>

                <div class="col-lg-12">
                  <div class="form-group">
                    <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
                    <div class="validation"></div>
                  </div>
                </div>

                <div class="col-lg-12">
                  <div class="form-group">
                    <textarea class="form-control" name="message" rows="12" data-rule="required" data-msg="Please write something for us" placeholder="Message"></textarea>
                    <div class="validation"></div>
                  </div>
                </div>

                <div class="col-lg-12">
                  <input disabled="disabled" type="submit" class="btn btn-defeault btn-send" value="Send message">
                </div>

              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- start sectoion contact -->


  <!-- start section footer -->
  <div id="footer" class="text-center">
    <div class="container">
      <div class="socials-media text-center">

        <ul class="list-unstyled">
         <li><a target="_blank" href="https://github.com/erikpedro"><i class="ion-social-github"></i></a></li>
          <li><a target="_blank"  href="https://www.linkedin.com/in/erik-gon%C3%A7alves-1a219978/"><i class="ion-social-linkedin"></i></a></li>
          <li><a target="_blank"  href="mailto:erikpedro@gmail.com?cc=erikpedro@outlook.com&subject=Acessei Seu Portolio&body= Ola Gostou do Portfolio?"><i class="ion-ios-email"></i></a></li>
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
