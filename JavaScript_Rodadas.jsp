<!-- JavaScript incrementar o contador de rodadas -->

<script>

//pegando o numero da rodada
const rodada = document.querySelector('.proxRodada')

//função para incrementar a rodada
function proxRodada() {
	var rodNum = parseInt(document.getElementById("rodada").textContent)
	rodNum ++
	document.getElementById("rodada").textContent = rodNum
}

</script>