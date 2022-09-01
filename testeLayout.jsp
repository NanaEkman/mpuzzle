<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="http://fonts.cdnfonts.com/css/bauhaus-modern" rel="stylesheet">
<style>
	@import url('http://fonts.cdnfonts.com/css/bauhaus-modern');
	
	.corpo section{
		display: flex;
		flex-direction: row;
		flex-wrap: wrap;
		justify-content: center;
		align-items: stretch;
		align-content: center;
		gap: 10px 20px;
		flex-shrink: 1;
	}
	
	.margin{
		flex: 1 10%;
	}
	
	.jogar{
		flex:2 20%;
	}
	
	.logo{
		flex:4 40%;
	}
	
	.menu{
		flex:2 20%;
	}
	
	.cartas{
		flex:4 40%;
		display: flex;
		flex-direction: row;
		flex-wrap: wrap;
		justify-content: center;
		align-items: stretch;
		align-content: center;
		gap: 10px 10px;
		flex-shrink: 1;
	}
	
	.ranking{
		flex:2 20%;
	}
	
	.usuario{
		flex:2 20%;
	}
	
</style>
<meta charset="UTF-8">
<title>mpuzzle</title>
</head>
<body style="background-image: url('fundoMpuzzle.jpg'); background-repeat: repeat; background-size: 1000px; overflow: hidden;">
	
	<section class="corpo container">
		
		<div class="row">
			<article class="margin col-1" style="background-color: #FF70C1;">&nbsp;</article>
			<article class="articles jogar col-2" style="color:white; background-color: #FF70C1;">
		   		jogar
		   </article>
		   <article class="logo col-4" style="background-color: #FF70C1;">
		   		mpuzzle
		   </article>
		   <article class="articles usuario col-2" style="color: white; background-color: #FF70C1;">
		   		usuario
		   </article>
		   <article class="margin col-1" style="background-color: #FF70C1;">&nbsp;</article>
		</div>
		
	   <div class="row">
			<article class="margin" style="background-color: #FF70C1;">&nbsp;</article>
		   <article class="articles menu" style="background-color: #FF70C1;">
		   		menu
		   </article>
		   
		   <article class="articles cartas" style="background-color: #fef9ff;">

		   		<button>Smile</button>
		   		<button>Smile</button>
		   		<button>Smile</button>
		   		<button>Smile</button>
		   		<button>Smile</button>
		   		<button>Smile</button>
		   		<button>Smile</button>
		   		<button>Smile</button>
		   		<button>Smile</button>
		   		<button>Smile</button>
		   		<button>Smile</button>
		   		<button>Smile</button>
		   		<button>Smile</button>
		   		<button>Smile</button>
		   		<button>Smile</button>
		   		<button>Smile</button>
		   		
		   </article>
		   
		   <article class="articles ranking" style="background-color: #49B6FF;">
		   		ranking
		   </article>
		   <article class="margin" style="background-color: #FF70C1;">&nbsp;</article>
		</div>
	   
	   
	</section>
	
</body>
</html>