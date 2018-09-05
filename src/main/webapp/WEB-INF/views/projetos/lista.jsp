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
		<a class="navbar-brand" href="${s:mvcUrl('HC#index').build() }"> <i
			class="fab fa-java"></i> Portifolio
		</a>

		<!-- Toggler/collapsibe Button -->
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#collapsibleNavbar">
			<span class="navbar-toggler-icon"></span>
		</button>

		<!-- Navbar links -->
		<div class="collapse navbar-collapse" id="collapsibleNavbar">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link"
					href="${s:mvcUrl('PC#listar').build() }">Lista de Projetos</a></li>
				<li class="nav-item"><a class="nav-link"
					href="${s:mvcUrl('PC#form').build() }">Cadastro de Projetos</a></li>
			</ul>
		</div>
	</nav>

	<div class="container-fluid">
		<h1>Lista de Projetos</h1>
<p>${sucesso }</p>
		<table class="table table-hovertable table-bordered">
			<thead class="thead-dark">
				<tr>
					<th>Nome do Projeto</th>
					<th>Descriçao</th>
					<th>Acesso ao Projeto</th>
					<th>Dada Deploy</th>
					<th></th>
				</tr>

				<c:forEach items="${projetos }" var="projeto">
					<tbody>
						<tr>
							<td><a
								href="${s:mvcUrl('PC#detalhe').arg(0, projeto.id).build() }">${projeto.projeto }</a></td>
							<td>${projeto.descricao }</td>
							<td>${projeto.linkprojeto}</td>
							<td><fmt:formatDate pattern="dd/MM/yyyy" value="${projeto.dataDeploy.time}" /></td>
<%-- 							<td><img alt="imagen" src="${projeto.anexoPath}" width="10%" height="10%" ></td> --%>
								<td>${projeto.anexoPath}</td>
							<td><a
								href="<c:url value='projetos/alterar'/>/${projeto.id}">Alterar</a>
								<a href="<c:url value='projetos/remover'/>/${projeto.id}">Remover</a>
							</td>


						</tr>

					</tbody>
				</c:forEach>
			</thead>
		</table>
	</div>

</body>
</html>