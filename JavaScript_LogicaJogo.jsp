
<!-- ########################### cronometro e jogo ########################### -->


<!-- Fonte referência: https://brasil.hackclub.com/workshops/cronometro/ -->	

<script>

	//pegando os numeros do cronometro
	const miliseg = document.querySelector('.milissegundos')
	const seg = document.querySelector('.segundos')
	const min = document.querySelector('.minutos')
	
	let miliNum = 0
	let segNum = 0
	let minNum = 0
	let INTERVALO
	
	//função pra contar os milissegundos
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

	//função para contar os segundos
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

	//função para contar os minutos
	function minutos() {
		minNum++
		if (minNum < 10) {
		  	min.innerHTML = '0' + minNum
		} else {
		  	min.innerHTML = minNum
		}
	}
	
	//função para iniciar e parar o jogo e o cronometro!!!!!!!!!!!!!!!!!!!!!!!
	function jogarParar(){
		
		
		var valueBotao = document.getElementById("jogarParar").value
		apareceTexto(valueBotao)
		
		if (valueBotao == "jogar"){
			
			comecar() //gera cartas
			
			iniciar() //inicia cronometro
			document.getElementById("jogarParar").value = "parar"
			document.getElementById("jogarParar").textContent = "Parar"
			
		} else if (valueBotao == "parar"){
			
			alert("Atenção voce está parando o jogo antes de terminar, voce deseja mesmo desistir? ===================IMPLEMENTAR UM MODAL PRA ISSO==================")
			parar() //para o cronometro
			//e cancela o jogo restaurando as informações
			document.getElementById("jogarParar").value = "jogar"
			document.getElementById("jogarParar").textContent = "Jogar"
			
		}
		
			
	}
	
	//função para pausar e retomar o jogo e o cronometro
	function pausarRetomar(){
			
		var valueBotao = document.getElementById("pausarRetomar").value
		
		if (valueBotao == "pausar"){
			
			pausar() //pausa o cronometro
			document.getElementById("pausarRetomar").value = "retomar"
			document.getElementById("pausarRetomar").textContent = "Retomar"
			
			alert("Atenção voce está pausando o jogo, as cartas ficarão inacessíveis ===================IMPLEMENTAR UM MODAL PRA ISSO==================")
			
		} else if (valueBotao == "retomar"){ 
			
			//trocar retomar para modal//modal que deixa o jogo inacessível//desativa as cartas
			
			retomar() //retomar
			document.getElementById("pausarRetomar").value = "pausar"
			document.getElementById("pausarRetomar").textContent = "Pausar"
			
		}
			
		
	}
	
	//função para iniciar o cronometro
	function iniciar() {
		clearInterval(INTERVALO)
		INTERVALO = setInterval(() => {
			milissegundos()
		}, 10)
	}
	
	//função para pausar o cronometro
	function pausar() {
		clearInterval(INTERVALO)
	}
	
	//função para retomar o jogo e o cronometro
	function retomar() {
		//IMPLEMENTAR
		iniciar()
		//reativa as cartas
	}
	
	//função para parar o cronometro e o jogo
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



<!-- ########################### comparação das cartas ########################### -->


<link rel="shortcut icon" href="#">

<script>

var cartasSelecionadas = 0;
var id1;
var id2;
var carta1;
var carta2;

function clicouCarta(){
	
	cartasSelecionadas ++;
	
	if (cartasSelecionadas == 1) {
		
		carta1 = event.target;
	    id1 = carta1.id;
	    
		carta1.setAttribute("onclick","cartaClicada()")
		carta1.style.borderRadius = "8px";
	}
	
	if (cartasSelecionadas == 2) {
			
		carta2 = event.target;
	    id2 = carta2.id;
	    
		carta2.setAttribute("onclick","cartaClicada()")
		carta2.style.borderRadius = "8px";
		
		compararCartas(id1, id2, carta1, carta2)
	}
	
	
}

function compararCartas(id1, id2, carta1, carta2) {
	console.log(id1, id2)
	//acertou
	if (id1 == id2) {
		alert("Você acertou!")
		carta1.style.borderRadius = "100px";
		carta2.style.borderRadius = "100px";
	} else {
		alert("Você errou!")
		carta1.style.borderRadius = "0px";
		carta2.style.borderRadius = "0px";
		carta1.setAttribute("onclick","clicouCarta()")
		carta2.setAttribute("onclick","clicouCarta()")
	}
	
	cartasSelecionadas = 0
	proxRodada()
}

function cartaClicada(){
	alert("Essa carta ja foi clicada")
}

</script>


<!-- ########################### rodadas ########################### -->


<!-- JavaScript incrementar o contador de rodadas -->

<script>


//função para incrementar a rodada
function proxRodada() {
	//pegando o numero da rodada
	const rodada = document.querySelector('.proxRodada')
	
	var rodNum = parseInt(document.getElementById("rodada").textContent)
	rodNum ++
	document.getElementById("rodada").textContent = rodNum
}

//função para aparecer o texto de rodadas e cronômetro só depois que começar o jogo
function apareceTexto(valueBotao){

	if (valueBotao == "parar"){
		
		document.getElementById("tempo").textContent = ""
		document.getElementById("rodadas").textContent = ""
		document.getElementById("rodada").textContent = ""
		
	}  else if (valueBotao == "jogar"){
		
		document.getElementById("tempo").textContent = "Time: "
		document.getElementById("rodadas").textContent = "Rounds: "
		document.getElementById("rodada").textContent = "0"
		
	} 

}

</script>
