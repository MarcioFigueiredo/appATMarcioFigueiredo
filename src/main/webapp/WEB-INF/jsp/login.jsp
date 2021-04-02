<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>App AT Marcio Figueiredo</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
</head>
<body>
	
	<div class="container">
		<div class="panel-group">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h2>Sistema de Pedidos</h2>
				</div>
				
				<div class="panel-body">
					<div class="btn-group">
						<form action="/">
							<button type="submit" class="btn btn-link">Novo Usuário</button>
						</form>
					</div>
				</div>
			</div>
		</div>
		
		<c:if test="${not empty mensagem}">
		<div class="alert alert-warning">
		  <strong>Atenção!!!</strong> ${mensagem}
		</div>
		</c:if>
		
		<form action="/usuario/login" method="post">
		
			<div class="form-group">			
			<label>Informe o e-mail:</label>
			<input type="email" class="form-control" name="email">
			</div>
		
			<div class="form-group">			
			<label>Informe a senha:</label>
			<input type="password" class="form-control" name="senha">
			</div>
			
			
			<button type="submit">Acessar</button>	
		</form>
	</div>

</body>
</html>