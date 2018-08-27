<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


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

<form:form action="${s:mvcUrl('PC#gravar').build() }" method="post" commandName="projeto" enctype="multipart/form-data">

	<div>
		<label>Nome do Projeto</label>
		<form:input path="projeto"/>
		<form:errors path="projeto" />
	</div>
	
	<div>
		<label>Data do Deploy</label>
		<input name="dataDeploy">
		<form:errors path="dataDeploy" />
	</div>
	
	<div>
		<label>Descrição</label>
		<form:textarea path="descricao" rows="10" cols="20"/>
		<form:errors path="descricao" />
	</div>
	
	
	<div>
		<label>Link de Acesso</label>
		<form:input path="linkprojeto"/>
		<form:errors path="linkprojeto" />
	</div>
	
		<div>
		<label>Anexos do Projeto</label>
		<input name="anexo" type="file"/>
	</div>
	
	
	
<button type="submit">Cadastrar</button>

</form:form>

 <!-- Bootstrap core JavaScript -->
    <s:url value="../resources/vendor/bootstrap/js/bootstrap.bundle.min.js" var="vendBootJs"/>
    <script src="${vendBootJs}"></script>
    
    <s:url value="../resources/vendor/jquery/jquery.min.js" var="vendJquery"/>
    <script src="${vendJquery}"></script>

    <!-- Plugin JavaScript -->
	<s:url value="../resources/vendor/jquery-easing/jquery.easing.min.js" var="vendJqueryEasing"/>
    <script src="${vendJqueryEasing}"></script>
	
    <!-- Custom scripts for this template -->
    <s:url value="../resources/js/stylish-portfolio.min.js" var="port"/>
    <script src="${port}"></script>
    


</body>
</html>