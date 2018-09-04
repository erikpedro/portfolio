<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>


<c:url value="/resources/css" var="bootstrapCss"/>
<c:url value="/resources/js" var="bootstrapJs"/>

<!-- Bootstrap Core CSS -->
<link rel='stylesheet' href="${bootstrapCss }/bootstrap.css">
<script type="text/javascript" src="${bootstrapJs }/jquery.min.js" ></script>
<script type="text/javascript" src="${bootstrapJs }/bootstrap.min.js"></script>
<script type="text/javascript" src="${bootstrapJs }/bootstrap.bundle.min.js" ></script>
<!-- Custom Fonts -->
<!-- <link href="../resources/lib/fontawesome-free/css/all.min.css" -->
<!-- 	rel="stylesheet" type="text/css"> -->
<!-- <link -->
<!-- 	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" -->
<!-- 	rel="stylesheet" type="text/css"> -->
<!-- <link -->
<!-- 	href="../resources/vendor/simple-line-icons/css/simple-line-icons.css" -->
<!-- 	rel="stylesheet"> -->

 <!-- Custom CSS -->
<!-- <link href="../resources/css/stylish-portfolio.min.css" rel="stylesheet"> -->


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


<p>${erro }</p>
<h1  align="center">Cadastro de Projetos</h1>

	<div class="container">
		<form:form action="${s:mvcUrl('PC#gravar').build() }" method="post"
			commandName="projeto" enctype="multipart/form-data">


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
					<form:textarea cssClass="form-control" path="descricao" rows="5"
						cols="10" />
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
						<form:errors path="anexoPath" />
				</div>
			</div>

			<div class="form-group">
				<div class="col-md-6 offset-md-3">
					<button class="btn btn-primary" type="submit">Cadastrar</button>
				</div>
			</div>
		</form:form>
	</div>

</body>
</html>