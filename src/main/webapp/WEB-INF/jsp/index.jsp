<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>App AT Java WEB Marcio Figueiredo</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
</head>
<body>
	
	<div class="container">
	
		<div class="panel-group">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h2>${user.nome}</h2>
					<h3>${user.email}</h3>
					<h3><a href="${user.git}">GIT</a></h3>
				</div>
				
				<div class="panel-body">
					<div class="btn-group">
						<form action="/">
							<button type="submit" class="btn btn-link">Novo Login</button>
						</form>
					</div>
				</div>
				
				<div class="panel-body">
					<div class="btn-group">
						<form action="/cliente">
							<button type="submit" class="btn btn-link">Novo Cliente</button>
						</form>
					</div>
				</div>
				<div class="panel-body">
					<div class="btn-group">
						<form action="/pedido">
							<button type="submit" class="btn btn-link">Novo Pedido</button>
						</form>
					</div>
				</div>
			</div>
		</div>
		
	</div>

</body>
</html>