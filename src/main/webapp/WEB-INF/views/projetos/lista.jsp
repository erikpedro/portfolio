<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <c:url value="resources/vendor/bootstrap/css" var="vendBootCss"/>
     <c:url value="resources/vendor/bootstrap/css" var="vendFontWesomeFreeCss"/>
      <c:url value="resources/vendor/bootstrap/css" var="vendSimpLineIconCss"/>
       <c:url value="resources/vendor/bootstrap/css" var="resouCss"/>
        

    <!-- Bootstrap Core CSS -->
    <link href="../resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
    <link href="../resources/vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../resources/css/stylish-portfolio.min.css" rel="stylesheet">



<title>Portifolio Erik Pedro Gonçalves</title>
</head>
<body>


<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <a class="navbar-brand" href="#">Navbar</a>
 </nav>
  <a class="menu-toggle rounded" href="#">
      <i class="fas fa-bars"></i>
    </a>
    <nav id="sidebar-wrapper">
      <ul class="sidebar-nav">
        <li class="sidebar-brand">
          <a class="js-scroll-trigger" href="#page-top">Start Bootstrap</a>
        </li>
        <li class="sidebar-nav-item">
          <a class="js-scroll-trigger" href="#page-top">Home</a>
        </li>
        <li class="sidebar-nav-item">
          <a class="js-scroll-trigger" href="#about">About</a>
        </li>
        <li class="sidebar-nav-item">
          <a class="js-scroll-trigger" href="#services">Services</a>
        </li>
        <li class="sidebar-nav-item">
          <a class="js-scroll-trigger" href="#portfolio">Portfolio</a>
        </li>
        <li class="sidebar-nav-item">
          <a class="js-scroll-trigger" href="#contact">Contact</a>
        </li>
      </ul>
</nav>




<div class="container-fluid">
	<h1>Lista de Projetos</h1>
	<div>${sucesso }</div>
	<table class="table table-hovertable table-bordered">
	<thead class="thead-dark">
		<tr>
			<th>Nome do Projeto</td>
			<th>Descriçao</td>
			<th>Acesso ao Projeto</td>
			<th>Dada Deploy</td>
		</tr>

		<c:forEach items="${projetos }" var="projeto">
			<tbody>
			<tr>
				<td><a href="${s:mvcUrl('PC#detalhe').arg(0, projeto.id).build() }" >${projeto.projeto }</a></td>
				<td>${projeto.descricao }</td>
				<td>${projeto.linkprojeto}</td>
				<td><fmt:formatDate pattern="dd/MM/yyyy" value="${projeto.dataDeploy.time}"/></td>
			</tr>
			</tbody>
		</c:forEach>
	</thead>
	</table>
</div>
 <!-- Bootstrap core JavaScript -->
    <s:url value="../resources/vendor/bootstrap/js" var="vendBootJs"/>
    <script src="${vendBootJs}/bootstrap.bundle.min.js"></script>
    
    <s:url value="../resources/vendor/jquery/jquery.min.js" var="vendJquery"/>
    <script src="${vendJquery}"></script>

    <!-- Plugin JavaScript -->
	<s:url value="../resources/vendor/jquery-easing/jquery.easing.min.js" var="vendJqueryEasing"/>
    <script src="${vendJqueryEasing}"></script>
	
    <!-- Custom scripts for this template -->
    <s:url value="/resources/js/stylish-portfolio.min.js" var="port"/>
    <script src="${port}"></script>
    
</body>
</html>