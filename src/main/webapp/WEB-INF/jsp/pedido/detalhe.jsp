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
					<h2>Cadastramento de Pedidos</h2>
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
		
		<form action="/pedido/incluir" method="post">
			
			<div class="form-group">			
			<label>Informe o Tipo:</label>
			<input type="text" class="form-control" name="tipo">
			</div>
			
			<div class="form-group">			
			<label>Informe o Cliente:</label>
			<select class="form-control" name="cliente.id">
			
				<c:forEach var="c" items="${clientes}">
				<option value="${c.id}">${c.nome}</option>
				</c:forEach>
			</select>
			</div>
			
			<div class="form-group">			
			<label>Informe o Endereço do Cliente:</label>
			<input type="text" class="form-control" name="endereco">
			</div>
			
			<div class="form-group">			
			<label>Informe o Telefone do Cliente:</label>
			<input type="text" class="form-control" name="telefone">
			</div>
						
			<button type="submit">Cadastrar</button>	
		</form>
		
		<c:if test="${not empty lista}">
		 <p>Listagem de Pedidos.</p>            
		  <table class="table table-striped">
		    <thead>
		      <tr>
		        <th>Tipo:</th>
		        <th>Cliente:</th>
		        <th>Endereço:</th>
		        <th>Telefone:</th>
		        <th></th>
		      </tr>
		    </thead>
		    <tbody>
		    <c:forEach var="p" items="${lista}">
		      <tr>
		        <td>${p.tipo}</td>
		        <td>${p.cliente.nome}</td>
		        <td>${p.endereco}</td>
		        <td>${p.telefone}</td>
		        <td><a href="/pedido/${p.id}/excluir"> Excluir</a></td>
		      </tr> 
		      </c:forEach>
		    </tbody>
		  </table>
		</c:if>
		
		<c:if test="${empty lista}">
			<p>Nenhum Pedido cadastrado!!!</p>
		</c:if>
	</div>

</body>
</html>