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
	
	<div class="conteiner">

        <div class="row justify-content-md-center">
            <div class="col-2 divs jogar" style="color: white;"><?php include_once('infoJogar.php') ?></div>
            <div class="col-4 divNomeJogoLogin"><span class="fonte">mpuzzle</span></div>
            <div class="col-2 divs usuario" style="color: white;">@usuariooooo</div>
        </div>

        <div class="row justify-content-md-center">
            <div class="col-2 divs menu" ><?php include_once('menu.php') ?></div>
            <div class="col-4 divs corpo" ><?php include_once('cartas.php') ?></div>
            <div class="col-3 divs ranking"> <?php include_once('ranking.php') ?></div>
        </div>
	   
	</div>
	
</body>
</html>