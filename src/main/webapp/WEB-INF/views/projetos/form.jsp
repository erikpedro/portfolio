<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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



</body>
</html>