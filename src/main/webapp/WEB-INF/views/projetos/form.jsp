<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Portifolio Erik Pedro Gonçalves</title>
</head>
<body>

<form action="/portifolio/projetos" method="post">

	<div>
		<label>Projeto</label>
		<input type="text" name="projeto">
	</div>
	
	<div>
		<label>Descrição</label>
		<textarea rows="10" cols="20" name="descricao"></textarea>
	</div>
	
<button type="submit">Cadastrar</button>

</form>



</body>
</html>