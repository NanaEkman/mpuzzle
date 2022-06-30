<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- Bootstrap -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link href="https://cdnjs.cloudflare.com/ajax/libs/open-iconic/1.1.1/font/css/open-iconic-bootstrap.min.css" rel="stylesheet" />

<link href="cssCAMI.css" rel="stylesheet" type="text/css">

<script type="text/javascript"></script>

<title>Página de Cadastro mpuzzle</title>
</head>
<body style="background-color: #8661C1">

	<%@ include file="NomeJogo.jsp" %>
	
	<div class="divLogin">
	
		<h3 style="color: #FEF9FF; font-family: monospace; font-size: 30px;">Cadastro</h3><br>
		
		<h3 style="color: #FEF9FF; font-family: monospace; font-size: 20px;">Falta pouco para ser um membro mpuzzle <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-emoji-smile-upside-down-fill" viewBox="0 0 16 16">
		  <path d="M8 0a8 8 0 1 1 0 16A8 8 0 0 1 8 0zM7 9.5C7 8.672 6.552 8 6 8s-1 .672-1 1.5.448 1.5 1 1.5 1-.672 1-1.5zM4.285 6.433a.5.5 0 0 0 .683-.183A3.498 3.498 0 0 1 8 4.5c1.295 0 2.426.703 3.032 1.75a.5.5 0 0 0 .866-.5A4.498 4.498 0 0 0 8 3.5a4.5 4.5 0 0 0-3.898 2.25.5.5 0 0 0 .183.683zM10 8c-.552 0-1 .672-1 1.5s.448 1.5 1 1.5 1-.672 1-1.5S10.552 8 10 8z"/>
		</svg></h3><br>
		
		<form action="">
		
			<div class="input-group mb-3">
			  <div class="input-group-prepend">
			    <button class="btn btn-info botaoInput"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-envelope-fill" viewBox="0 0 16 16">
					  <path d="M.05 3.555A2 2 0 0 1 2 2h12a2 2 0 0 1 1.95 1.555L8 8.414.05 3.555ZM0 4.697v7.104l5.803-3.558L0 4.697ZM6.761 8.83l-6.57 4.027A2 2 0 0 0 2 14h12a2 2 0 0 0 1.808-1.144l-6.57-4.027L8 9.586l-1.239-.757Zm3.436-.586L16 11.801V4.697l-5.803 3.546Z"/>
					</svg>
				</button>
			  </div>
			  <input type="text" class="form-control" placeholder="Email" aria-label="Email" aria-describedby="basic-addon1" style="color: #FAA916; font-family: monospace; font-size: 18px;">
			</div>
			
			<div class="input-group mb-3">
			  <div class="input-group-prepend">
			    <button class="btn btn-info botaoInput"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-plus-fill" viewBox="0 0 16 16">
					  <path d="M1 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H1zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
					  <path fill-rule="evenodd" d="M13.5 5a.5.5 0 0 1 .5.5V7h1.5a.5.5 0 0 1 0 1H14v1.5a.5.5 0 0 1-1 0V8h-1.5a.5.5 0 0 1 0-1H13V5.5a.5.5 0 0 1 .5-.5z"/>
					</svg>
				</button>
			  </div>
			  <input type="text" class="form-control" placeholder="Nickname" aria-label="Nickname" aria-describedby="basic-addon1" style="color: #FAA916; font-family: monospace; font-size: 18px;">
			</div>
			
			<div class="input-group mb-3">
			  <div class="input-group-prepend">
			    <button class="btn btn-info botaoInput"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-lock-fill" viewBox="0 0 16 16">
					  <path d="M8 1a2 2 0 0 1 2 2v4H6V3a2 2 0 0 1 2-2zm3 6V3a3 3 0 0 0-6 0v4a2 2 0 0 0-2 2v5a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V9a2 2 0 0 0-2-2z"/>
					</svg>
				</button>
			  </div>
			  <input id="pass" type="password" class="form-control" placeholder="Password" aria-label="Password" aria-describedby="basic-addon1" style="color: #FAA916; font-family: monospace; font-size: 18px;">
				  <div class="input-group-append">		  
				  	<button class="btn btn-info botaoInput" id="showPassword"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-eye-fill" viewBox="0 0 16 16">
					  <path d="M10.5 8a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0z"/>
					  <path d="M0 8s3-5.5 8-5.5S16 8 16 8s-3 5.5-8 5.5S0 8 0 8zm8 3.5a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7z"/>
					</svg></button>
				  </div>
				
			</div>
			
			<a href="" style="color: #FEF9FF; font-family: monospace; font-size: 13px;">Já faz é membro mpuzzle? Faça Login!</a><br>
	
			<br><input type="submit" class="btn btn-info" value="Cadastrar" style="">	      
			
			<br><br>
		</form>
	</div><br>

</body>

<script>
	
	document.getElementById('showPassword').addEventListener('click', function(){
		if(document.getElementById('pass').type == 'text'){
			document.getElementById('pass').type = 'password';
		}else{
			document.getElementById('pass').type = 'text';
		}
		
	})
</script>


</html>