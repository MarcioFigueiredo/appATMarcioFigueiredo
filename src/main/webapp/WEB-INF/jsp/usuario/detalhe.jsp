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
					<h2>Cadastramento de Usuários</h2>
				</div>
				
				<div class="panel-body">
					<div class="btn-group">
						<form action="/">
							<button type="submit" class="btn btn-link">Login</button>
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
		
		<form action="/usuario/incluir" method="post">
			
			<div class="form-group">			
			<label>Informe o Nome do Usuário:</label>
			<input type="text" class="form-control" name="nome">
			</div>
			
			<div class="form-group">			
			<label>Informe o Email do Usuário:</label>
			<input type="text" class="form-control" name="email">
			</div>
			
			<div class="form-group">			
			<label>Informe a Senha do Usuário:</label>
			<input type="text" class="form-control" name="senha">
			</div>
						
			<button type="submit">Cadastrar</button>	
		</form>
		
		<c:if test="${not empty lista}">
		 <p>Listagem de Usuários.</p>            
		  <table class="table table-striped">
		    <thead>
		      <tr>
		        <th>Usuário:</th>
		        <th>Email:</th>
		        <th></th>
		        <th></th>
		      </tr>
		    </thead>
		    <tbody>
		    <c:forEach var="p" items="${lista}">
		      <tr>
		        <td>${p.nome}</td>
		        <td>${p.email}</td>
		        <td></td>
		        <td><a href="/usuario/${p.id}/excluir"> Excluir</a></td>
		      </tr> 
		      </c:forEach>
		    </tbody>
		  </table>
		</c:if>
		
		<c:if test="${empty lista}">
			<p>Nenhum Usuário cadastrado!!!</p>
		</c:if>
	</div>

</body>
</html>