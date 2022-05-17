<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tela Inicial</title>

<!-- Bootstrap -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link href="https://cdnjs.cloudflare.com/ajax/libs/open-iconic/1.1.1/font/css/open-iconic-bootstrap.min.css" rel="stylesheet" />

</head>
<body class="corpoInicial">
	<div style="padding-top: 5%;"><%@ include file="NomeJogo.jsp" %></div>
	<div style="padding-top: 5%;">
		<div class="divLogin">
			
			<h3 style="color: #FEF9FF; font-family: monospace; font-size: 30px;">Bem-Vindo :)</h3><br>
			<div class="input-group mb-3">
			  <div class="input-group-prepend">
			    <span class="input-group-text" id="basic-addon1">@</span>
			  </div>
			  <input type="text" class="form-control" placeholder="Nickname" aria-label="Nickname" aria-describedby="basic-addon1" style="color: #FF5E5B; font-family: monospace; font-size: 18px;">
			</div>
			
			<form action="">
			
				<div class="input-group mb-3">
				  <div class="input-group-prepend">
				    <span class="input-group-text" id="basic-addon1"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-clipboard-check-fill" viewBox="0 0 16 16">
					  <path d="M6.5 0A1.5 1.5 0 0 0 5 1.5v1A1.5 1.5 0 0 0 6.5 4h3A1.5 1.5 0 0 0 11 2.5v-1A1.5 1.5 0 0 0 9.5 0h-3Zm3 1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-3a.5.5 0 0 1-.5-.5v-1a.5.5 0 0 1 .5-.5h3Z"/>
					  <path d="M4 1.5H3a2 2 0 0 0-2 2V14a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V3.5a2 2 0 0 0-2-2h-1v1A2.5 2.5 0 0 1 9.5 5h-3A2.5 2.5 0 0 1 4 2.5v-1Zm6.854 7.354-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 0 1 .708-.708L7.5 10.793l2.646-2.647a.5.5 0 0 1 .708.708Z"/>
					</svg></span>
				  </div>
				  <input type="password" class="form-control" placeholder="Password" aria-label="Password" aria-describedby="basic-addon1" style="color: #FF5E5B; font-family: monospace; font-size: 18px;">
				</div>
				
				<input type="checkbox" name="subscribe" id="subscribe">
				<label for="" style="color: #FEF9FF; font-family: monospace; font-size: 15px;">Show password</label><br>
				
				<a href="" style="color: #FEF9FF; font-family: monospace; font-size: 10px;">Não possui cadastro? Cadastre-se aqui!</a><br>
		
				<br><input type="submit" class="btn btn-info botaoJogar" value="Jogar">				      
				
				<br><br>
			</form>
		</div>
	</div>
	<br>

</body>
</html>