<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="css.css" rel="stylesheet" type="text/css">
<link href="http://fonts.cdnfonts.com/css/bauhaus-modern" rel="stylesheet">
<style>
	@import url('http://fonts.cdnfonts.com/css/bauhaus-modern');
</style>
<link rel="icon" type="image/png" href="https://cdn-icons-png.flaticon.com/512/6287/6287516.png"/>
<title>mpuzzle</title>

<script type="text/javascript"></script>
<!-- Bootstrap -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link href="https://cdnjs.cloudflare.com/ajax/libs/open-iconic/1.1.1/font/css/open-iconic-bootstrap.min.css" rel="stylesheet" />
</head>
<body class="corpoInicial">

	<div class="divNomeJogoLogin"><span class="fonte">mpuzzle</span></div>
	
	<div class="divLogin">
	
		<h3 style="color: #FEF9FF; font-family: monospace; font-size: 30px;">Cadastro</h3><br>
		
		<h3 style="color: #FEF9FF; font-family: monospace; font-size: 20px;">Falta pouco para ser um membro mpuzzle <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-emoji-smile-upside-down-fill" viewBox="0 0 16 16">
		  <path d="M8 0a8 8 0 1 1 0 16A8 8 0 0 1 8 0zM7 9.5C7 8.672 6.552 8 6 8s-1 .672-1 1.5.448 1.5 1 1.5 1-.672 1-1.5zM4.285 6.433a.5.5 0 0 0 .683-.183A3.498 3.498 0 0 1 8 4.5c1.295 0 2.426.703 3.032 1.75a.5.5 0 0 0 .866-.5A4.498 4.498 0 0 0 8 3.5a4.5 4.5 0 0 0-3.898 2.25.5.5 0 0 0 .183.683zM10 8c-.552 0-1 .672-1 1.5s.448 1.5 1 1.5 1-.672 1-1.5S10.552 8 10 8z"/>
		</svg></h3><br>
		
		<form action="salvarUsuario.php" method="POST">
		
			<div class="input-group mb-3">
			  <div class="input-group-prepend">
			    <p class="btn ladoBotaoInput" style="height: 76%; background-color: #00CDF4; color: white; user-select: none;"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-envelope-fill" viewBox="0 0 16 16">
					  <path d="M.05 3.555A2 2 0 0 1 2 2h12a2 2 0 0 1 1.95 1.555L8 8.414.05 3.555ZM0 4.697v7.104l5.803-3.558L0 4.697ZM6.761 8.83l-6.57 4.027A2 2 0 0 0 2 14h12a2 2 0 0 0 1.808-1.144l-6.57-4.027L8 9.586l-1.239-.757Zm3.436-.586L16 11.801V4.697l-5.803 3.546Z"/>
					</svg>
				</p>
			  </div>
			  <input type="text" name="txtEmail" class="form-control" placeholder="email" aria-label="Email" aria-describedby="basic-addon1" style="color: #7A83EA; font-weight: bold; font-family: monospace; font-size: 18px;">
			</div>
			
			<div class="input-group mb-3">
			  <div class="input-group-prepend">
			    <p class="btn ladoBotaoInput" style="height: 76%; background-color: #00CDF4; color: white; user-select: none;"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-plus-fill" viewBox="0 0 16 16">
					  <path d="M1 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H1zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
					  <path fill-rule="evenodd" d="M13.5 5a.5.5 0 0 1 .5.5V7h1.5a.5.5 0 0 1 0 1H14v1.5a.5.5 0 0 1-1 0V8h-1.5a.5.5 0 0 1 0-1H13V5.5a.5.5 0 0 1 .5-.5z"/>
					</svg>
				</p>
			  </div>
			  <input type="text" name="txtNickname" class="form-control" placeholder="nickname" aria-label="Nickname" aria-describedby="basic-addon1" style="color: #7A83EA; font-weight: bold; font-family: monospace; font-size: 18px;">
			</div>
			
			<div class="input-group mb-3">
			  <div class="input-group-prepend">
			    <p class="btn ladoBotaoInput" style="height: 76%; background-color: #00CDF4; color: white; user-select: none;"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-lock-fill" viewBox="0 0 16 16">
					  <path d="M8 1a2 2 0 0 1 2 2v4H6V3a2 2 0 0 1 2-2zm3 6V3a3 3 0 0 0-6 0v4a2 2 0 0 0-2 2v5a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V9a2 2 0 0 0-2-2z"/>
					</svg>
				</p>
			  </div>
			  <input id="pass" name="txtSenha" type="password" class="form-control" placeholder="senha" aria-label="Password" aria-describedby="basic-addon1" style="color: #7A83EA; font-weight: bold; font-family: monospace; font-size: 18px;">
				  <div class="input-group-append" style="color:" id="showPassword">
				  	<p class="btn ladoBotaoInput" style="height: 76%; background-color: #00CDF4; color: white;">
				  		<svg id="icone" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-eye-slash-fill" viewBox="0 0 16 16">
						  <path d="m10.79 12.912-1.614-1.615a3.5 3.5 0 0 1-4.474-4.474l-2.06-2.06C.938 6.278 0 8 0 8s3 5.5 8 5.5a7.029 7.029 0 0 0 2.79-.588zM5.21 3.088A7.028 7.028 0 0 1 8 2.5c5 0 8 5.5 8 5.5s-.939 1.721-2.641 3.238l-2.062-2.062a3.5 3.5 0 0 0-4.474-4.474L5.21 3.089z"/>
						  <path d="M5.525 7.646a2.5 2.5 0 0 0 2.829 2.829l-2.83-2.829zm4.95.708-2.829-2.83a2.5 2.5 0 0 1 2.829 2.829zm3.171 6-12-12 .708-.708 12 12-.708.708z"/>
						</svg>
					</p>
				  </div>
				
			</div>      
			<br>
            <a href="index.php" style="color: #FEF9FF; font-family: monospace; font-size: 15px;">Já faz é membro mpuzzle? Faça Login!</a><br>
    
            <br><button type="submit" class="btn botaoJogar" value="Cadastrar" style="width: 70%; border-radius: 50px; background-color: #00CDF4; color: white; font-weight: bold; font-size: 20px; hover: button">	Cadastrar </button>	
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