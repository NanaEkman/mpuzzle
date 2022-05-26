	<div class="time">
		<span>Time:</span>
  		<span class="minutos">00</span>:
  		<span class="segundos">00</span>:
  		<span class="milissegundos">00</span>
		
	
	</div>
	
	<div class="rounds">
		<span>Rounds:</span>
		<span class="rodada">0</span>
	</div>
	
	<div class="botoes">
		<button onclick="pausarRetomar()" class="pausarRetomar" id="pausarRetomar" value="pausar">Pausar</button>
		
		<button onclick="jogarParar()" class="jogarParar" id="jogarParar" value="jogar">Jogar</button>
	
	<button onclick="proxRodada()" class="proxRodada" id="proxRodada" value="proxRodada">+rodada</button>
	</div>
	
<!-- Arquivo com o JavaScript de iniciar, pausar, retomar e parar o jogo e o cronometro -->	
<%@ include file="JavaScript_Cronometro.jsp" %>
	
<script>

//pegando o numero da rodada
const rodada = document.querySelector('.rodadas')
let rodNum = 0

function proxRodada() {
	rodNum = rodada + 1
	rodada.//verrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr
	
}


</script>