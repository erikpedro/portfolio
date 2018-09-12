<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
<c:url value="https://erikportfolio.herokuapp.com" var="img"/>

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
          <a href="${s:mvcUrl('HC#index').build() }"><img src="../../resources/images/logom.png" alt="logo"></a>
        </div>

        <div class="responsive"><i data-icon="m" class="ion-navicon-round"></i></div>

        <ul class="nav-menu list-unstyled">
      
          <li><a href="${s:mvcUrl('HC#index').build() }" class="smoothScroll">Home</a></li>
          <li><a href="${s:mvcUrl('PC#listar').build() }" class="smoothScroll">Lista de Projetos</a></li>
          <li><a href="${s:mvcUrl('PC#form').build() }" class="smoothScroll">Cadastro de Projetos</a></li>
        </ul>
      </div>
    </div>
  </nav>
<br>
<p>${error }</p>
<h1  align="center">Editar Cadastro de Projetos</h1>
<br>
	<div class="container">
		<form:form action="${s:mvcUrl('PC#update').build() }" method="post"
			commandName="projeto" enctype="multipart/form-data">


	<div class="form-group">
				<div class="col-md-6 offset-md-3">
					<label>Projeto id </label>
					<form:input path="id" cssClass="form-control"
					  readonly="true" 	placeholder="Nome do Projeto" />
					<form:errors path="id" />
				</div>
			</div>

			<div class="form-group">
				<div class="col-md-6 offset-md-3">
					<label>Nome do Projeto</label>
					<form:input path="projeto" cssClass="form-control"
						placeholder="Nome do Projeto" />
					<form:errors path="projeto" />
				</div>
			</div>

			<div class="form-group">
				<div class="col-md-6 offset-md-3">
					<label>Data do Deploy</label>
					<form:input path="dataDeploy" cssClass="form-control"
						placeholder=" EX.: dd/MM/yyyy " />
					<form:errors path="dataDeploy" />
				</div>
			</div>



			<div class="form-group">
				<div class="col-md-6 offset-md-3">
					<label>Descrição</label>
					<form:textarea cssClass="form-control" path="descricao" rows="10"
						cols="20" />
					<form:errors path="descricao" />
				</div>
			</div>


			<div class="form-group">
				<div class="col-md-6 offset-md-3">
					<label>Link de Acesso</label>
					<form:input path="linkprojeto" cssClass="form-control" />
					<form:errors path="linkprojeto" />
				</div>
			</div>

			<div class="form-group">
				<div class="col-md-6 offset-md-3">
					<label>Anexos do Projeto</label> 
					<input class="form-control-file" id="anexoPath" name="anexo" type="file"/>
				</div>
			</div>

			<div class="form-group">
				<div class="col-md-6 offset-md-3">
					<button class="btn btn-primary" type="submit">Atualizar</button>
				</div>
			</div>
		</form:form>
	</div>
	
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