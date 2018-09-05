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
<link rel="shortcut icon" type="image/x-icon" media="all" href="${boot }/favicon.ico" />


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


	
<h1  align="center">Editar Cadastro de Projetos</h1>

<p>${error }</p>

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
</body>
</html>