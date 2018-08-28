<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>


<!-- Bootstrap Core CSS -->
<link href="../resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom Fonts -->
<link href="../resources/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic"
	rel="stylesheet" type="text/css">
<link
	href="../resources/vendor/simple-line-icons/css/simple-line-icons.css"
	rel="stylesheet">

<!-- Custom CSS -->
<link href="../resources/css/stylish-portfolio.min.css" rel="stylesheet">


<title>Portifolio Erik Pedro Gonçalves</title>
</head>
<body>

<nav class="navbar navbar-expand-md bg-dark navbar-dark">
  <!-- Brand -->
  <a class="navbar-brand" href="${s:mvcUrl('HC#index').build() }">
 <i class="fab fa-java"  ></i>
  Portifolio
  </a>

  <!-- Toggler/collapsibe Button -->
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>

  <!-- Navbar links -->
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="${s:mvcUrl('PC#listar').build() }">Lista de Projetos</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="${s:mvcUrl('PC#form').build() }">Cadastro de Projetos</a>
      </li>
    </ul>
  </div> 
</nav>


	
<h1  align="center">Cadastro de Projetos</h1>

	<div class="container">
		<form:form action="${s:mvcUrl('PC#update').build() }" method="post"
			commandName="projeto" enctype="multipart/form-data">


	<div class="form-group">
				<div class="col-md-6 offset-md-3">
					<label>Projeto id </label>
					<form:input path="id" cssClass="form-control"
					disabled="true"	placeholder="Nome do Projeto" />
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
					<label>Anexos do Projeto</label> <input class="form-control-file"
						name="anexo" type="file" />
				</div>
			</div>

			<div class="form-group">
				<div class="col-md-6 offset-md-3">
					<button class="btn btn-primary" type="submit">Atualizar</button>
				</div>
			</div>
		</form:form>
	</div>



	<!-- Bootstrap core JavaScript -->
	<s:url value="../resources/vendor/bootstrap/js/bootstrap.bundle.min.js"
		var="vendBootJs" />
	<script src="${vendBootJs}"></script>

	<s:url value="../resources/vendor/jquery/jquery.min.js"
		var="vendJquery" />
	<script src="${vendJquery}"></script>

	<!-- Plugin JavaScript -->
	<s:url value="../resources/vendor/jquery-easing/jquery.easing.min.js"
		var="vendJqueryEasing" />
	<script src="${vendJqueryEasing}"></script>

	<!-- Custom scripts for this template -->
	<s:url value="../resources/js/stylish-portfolio.min.js" var="port" />
	<script src="${port}"></script>

</body>
</html>