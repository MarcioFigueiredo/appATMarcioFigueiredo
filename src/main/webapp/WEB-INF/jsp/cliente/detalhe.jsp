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
					<h2>Cadastramento de Clientes</h2>
				</div>
				
				<div class="panel-body">
					<div class="btn-group">
						<form action="/home">
							<button type="submit" class="btn btn-link">Home</button>
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
		
		
		<form action="/cliente/incluir" method="post">
		
			<div class="form-group">			
			<label>Informe o nome do Cliente:</label>
			<input type="text" class="form-control" name="nome">
			</div>
			
			<div class="form-group">			
			<label>Informe o CPF do Cliente:</label>
			<input type="text" class="form-control" name="cpf">
			</div>
			
			<div class="form-group">			
			<label>Informe o RG do Cliente:</label>
			<input type="text" class="form-control" name="rg">
			</div>
						
			<button type="submit">Cadastrar</button>	
		</form>
		
		<c:if test="${not empty lista}">
		 <p>Listagem de Clientes.</p>            
		  <table class="table table-striped">
		    <thead>
		      <tr>
		        <th>Nome:</th>
		        <th>Cpf:</th>
		        <th>Rg:</th>
		        <th></th>
		      </tr>
		    </thead>
		    <tbody>
		    <c:forEach var="c" items="${lista}">
		      <tr>
		        <td>${c.nome}</td>
		        <td>${c.cpf}</td>
		        <td>${c.rg}</td>
		        <td><a href="/cliente/${c.id}/excluir"> Excluir</a></td>
		      </tr> 
		      </c:forEach>
		    </tbody>
		  </table>
		</c:if>
		
		<c:if test="${empty lista}">
			<p>Nenhum Cliente cadastrado!!!</p>
		</c:if>
		
		
		
	</div>

</body>
</html>