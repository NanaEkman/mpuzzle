	<div class="time">
		<span>Time:</span>
  		<span class="minutos">00</span>:
  		<span class="segundos">00</span>:
  		<span class="milissegundos">00</span>
		
	
	</div>
	
	<div class="rounds">
		<span>Rounds:</span>
		<span class="rodada" id="rodada">0</span>
	</div>
	
	<div class="botoes">
		<button onclick="pausarRetomar()" class="pausarRetomar" id="pausarRetomar" value="pausar">Pausar</button>
		
		<button onclick="jogarParar()" class="jogarParar" id="jogarParar" value="jogar">Jogar</button>
	
	<button onclick="proxRodada()" class="proxRodada" id="proxRodada" value="proxRodada">+rodada</button>
	</div>
	
<!-- Arquivo com o JavaScript de iniciar, pausar, retomar e parar o jogo e o cronometro -->	
<%@ include file="JavaScript_Cronometro.jsp" %>

<!-- Arquivo com o JavaScript para incrementar o contador de rodadas -->
<%@ include file="JavaScript_Rodadas.jsp" %>
	