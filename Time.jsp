<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="cssNANA.css">
</head>
<body>
	<!-- https://brasil.hackclub.com/workshops/cronometro/ -->
	<div class="container">
    <h1>Time:</h1>
    <div class="principal">
      <p class="tempo">
        <span class="minutos">00</span>:<span class="segundos">00</span>:<span class="milissegundos">00</span>
      </p>
      <div>
        <button onclick="iniciar()" class="iniciar">INICIAR</button>
		<button onclick="parar()" class="parar">PARAR</button>
		<button onclick="resetar()" class="resetar">RESETAR</button>
      </div>
    </div>
  </div>
  
<script>
	const miliseg = document.querySelector('.milissegundos')
	const seg = document.querySelector('.segundos')
	const min = document.querySelector('.minutos')
	
	let miliNum = 0
	let segNum = 0
	let minNum = 0
	let INTERVALO
	
	function milissegundos() {
		  miliNum++
		  if (miliNum < 10) {
		    miliseg.innerHTML = '0' + miliNum
		  } else {
		    miliseg.innerHTML = miliNum
		  }

		  if (miliNum == 99) {
		    miliNum = 0
		    segundos()
		  }
		}

		function segundos() {
		  segNum++
		  if (segNum < 10) {
		    seg.innerHTML = '0' + segNum
		  } else {
		    seg.innerHTML = segNum
		  }

		  if (segNum == 59) {
		    segNum = 0
		    minutos()
		  }
		}

		function minutos() {
		  minNum++
		  if (minNum < 10) {
		    min.innerHTML = '0' + minNum
		  } else {
		    min.innerHTML = minNum
		  }
		}
	
	function iniciar() {
		clearInterval(INTERVALO)
		INTERVALO = setInterval(() => {
			milissegundos()
		}, 10)
	}
	
	function parar() {
		  clearInterval(INTERVALO)
		}
	
	function resetar() {
		  clearInterval(INTERVALO)
		  miliNum = 0
		  segNum = 0
		  minNum = 0
		  miliseg.innerHTML = '00'
		  seg.innerHTML = '00'
		  min.innerHTML = '00'
		}
</script>
</body>
</html>