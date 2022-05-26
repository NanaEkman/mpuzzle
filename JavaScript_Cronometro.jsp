<!-- JavaScript para iniciar, pausar, retomar e parar o cron�metro e o jogo -->
<!-- Fonte refer�ncia: https://brasil.hackclub.com/workshops/cronometro/ -->	

<script>
	//pegando os numeros do cronometro
	const miliseg = document.querySelector('.milissegundos')
	const seg = document.querySelector('.segundos')
	const min = document.querySelector('.minutos')
	
	let miliNum = 0
	let segNum = 0
	let minNum = 0
	let INTERVALO
	
	//fun��o pra contar os milissegundos
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

	//fun��o para contar os segundos
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

	//fun��o para contar os minutos
	function minutos() {
		minNum++
		if (minNum < 10) {
		  	min.innerHTML = '0' + minNum
		} else {
		  	min.innerHTML = minNum
		}
	}
	
	//fun��o para iniciar e parar o jogo e o cronometro
	function jogarParar(){
		
		var valueBotao = document.getElementById("jogarParar").value
		
		if (valueBotao == "jogar"){
			
			iniciar()
			document.getElementById("jogarParar").value = "parar"
			document.getElementById("jogarParar").textContent = "Parar"
			
		} else if (valueBotao == "parar"){
			
			alert("Aten��o voce est� parando o jogo antes de terminar, voce deseja mesmo desistir? ===================IMPLEMENTAR UM MODAL PRA ISSO==================")
			parar()
			//e cancela o jogo restaurando as informa��es
			document.getElementById("jogarParar").value = "jogar"
			document.getElementById("jogarParar").textContent = "Jogar"
			
		}
		
			
	}
	
	//fun��o para pausar e retomar o jogo e o cronometro
	function pausarRetomar(){
			
		var valueBotao = document.getElementById("pausarRetomar").value
		
		if (valueBotao == "pausar"){
			
			pausar()
			document.getElementById("pausarRetomar").value = "retomar"
			document.getElementById("pausarRetomar").textContent = "Retomar"
			
			alert("Aten��o voce est� pausando o jogo, as cartas ficar�o inacess�veis ===================IMPLEMENTAR UM MODAL PRA ISSO==================")
			
		} else if (valueBotao == "retomar"){ //trocar retomar para modal//modal que deixa o jogo inacess�vel//desativa as cartas
			
			retomar()
			document.getElementById("pausarRetomar").value = "pausar"
			document.getElementById("pausarRetomar").textContent = "Pausar"
			
		}
			
		
	}
	
	//fun��o para iniciar o cronometro
	function iniciar() {
		clearInterval(INTERVALO)
		INTERVALO = setInterval(() => {
			milissegundos()
		}, 10)
	}
	
	//fun��o para pausar o cronometro
	function pausar() {
		clearInterval(INTERVALO)
	}
	
	//fun��o para retomar o jogo e o cronometro
	function retomar() {
		//IMPLEMENTAR
		iniciar()
		//reativa as cartas
	}
	
	//fun��o para parar o cronometro e o jogo
	function parar() {
		clearInterval(INTERVALO)
		miliNum = 0
		segNum = 0
		minNum = 0
		miliseg.innerHTML = '00'
		seg.innerHTML = '00'
		min.innerHTML = '00'
	}
</script>