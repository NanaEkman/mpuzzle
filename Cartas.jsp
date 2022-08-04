
<%
//pegar tamanho do lado no banco

int numLado = 4;
int numCartas = numLado*numLado;
int numImagens = numCartas/2;


//4, 6, 8

int tamanho = 0;

if(numLado == 4){
	tamanho = 180;
}else if(numLado == 6){
	tamanho = 116;
}else if(numLado == 8){
	tamanho = 85;
}


%>
<link rel="shortcut icon" href="#">
<style>
	.baseCartas {
	    display: grid;
	    grid-template-columns: repeat(<%=numLado%>, 1fr);
	    grid-template-rows: repeat(<%=numLado%>, 1fr);
	    grid-auto-rows: minmax(200px, auto);
		grid-column-gap: 10px;
		grid-row-gap: 10px;
	    border-radius: 10px;
		
	}
	
	.cartas {
	    display: flex;
	    width: <%=tamanho%>px;
	    height: <%=tamanho%>px;
	    background-color: yellow; 
	}
	
</style>
<link rel="shortcut icon" href="#">
<body>
	<main>
        <section class="baseCartas">

		</section>
	</main>
</body>


<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>


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
		
		if (valueBotao == "jogar"){
			
			comecarCriarCartas() //gera cartas
			
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
	


<!-- ########################### criação das cartas ########################### -->



	function comecarCriarCartas(){
		var ids = gerar_ids(<%=numImagens%>)
		montar_cartas(ids)
		
	}
	
	//gera uma lista de ids duplicados
	function gerar_ids(quant) {
		var ids = [];
		for (let i = 1; i < quant+1; i++) {
			ids.push(i);
			ids.push(i);
		}
		embaralhar_ids(ids);
		return ids;
	}
	//embaralha a lista de ids duplicados
	function embaralhar_ids(ids) {
	    for (let i = ids.length - 1; i > 0; i--) {
		    const j = Math.floor(Math.random() * (i + 1));
		    [ids[i], ids[j]] = [ids[j], ids[i]];
		}
		return ids;
	}
	
	
	function montar_cartas(ids){
	
		$(document).ready(function(e){
			
			//lista com as imagens das cartas
			var imagens  = ["https://pbs.twimg.com/media/E6S_4Z7XoAEXQPa?format=jpg&name=small", "https://assets.afcdn.com/story/20170731/1110290_w378h270c1cx628cy628.webp", "https://s1.static.brasilescola.uol.com.br/be/conteudo/images/o-golfinho-um-exemplo-animal-pertencente-ao-grupo-dos-mamiferos-5bd334f3235f1.jpg", "https://pbs.twimg.com/media/EEDU44oXUAMAMo6.jpg", "http://www.portaldosanimais.com.br/wp-content/uploads/2019/11/Animais-Fofos-e-Engra%C3%A7ados-5.jpg", "https://guiaanimal.net/uploads/article/image/467/cougar-275945_1920.jpg", "https://escolaeducacao.com.br/wp-content/uploads/2020/01/animais-com-o-750x430.jpg", "https://pbs.twimg.com/media/EsimwBtXAAEXwF3.jpg", "http://4.bp.blogspot.com/-oOMUPs18HKk/UePy5CrMHwI/AAAAAAAABDs/-SEzvHg0U1A/s640/redpanda2.jpeg", "https://i.pinimg.com/236x/4a/30/cb/4a30cbe9065b00a680bd17a5e1b5ede0.jpg", "https://i.pinimg.com/originals/1b/8b/a7/1b8ba7b777f5f9e951dd2a5e556fd4a6.jpg", "https://www.gov.br/icmbio/pt-br/centrais-de-conteudo/verdevibora-jpeg", "https://gazetadasemana.com.br/images/noticias/72059/10052304_b6121d3d-8.jpg.jpg", "https://tribunadejundiai.com.br/wp-content/uploads/2022/06/Cachorrinho-adotado-por-empresa-e-responsavel-por-espalhar-alegria-e-tirar-umas-sonecas1.jpeg", "https://img.freepik.com/fotos-gratis/vista-frontal-do-conceito-de-cachorro-fofo-engracado_23-2148786532.jpg?size=626&ext=jpg", "https://i.pinimg.com/564x/54/af/f2/54aff2bf63fc8557cb8a9bc6f7f6e15a.jpg", "https://portaldoscaesegatos.com.br/wp-content/uploads/2016/07/fotos-engra%C3%A7adas-de-animais-1.jpg", "https://www.hypeness.com.br/1/2016/12/frog-photography-tantoYensen-20-5836fb8e09efa__880.jpg", "https://portaldoscaesegatos.com.br/wp-content/uploads/2016/07/fotos-engra%C3%A7adas-de-animais-1.jpg", "https://1.bp.blogspot.com/-4SpTHHaWt20/YEZp93duLHI/AAAAAAAAAek/FKqOHVHU5OEdkbT29SuD3cNo-w5PmC7YwCNcBGAsYHQ/s564/porquineo%2Bduck.jpg", "https://www.petz.com.br/blog/wp-content/uploads/2021/11/animal-mais-bonito-do-mundo2-1280x720.jpg", "https://i0.wp.com/top10mais.org/wp-content/uploads/2015/08/Shetland-Pony-entre-as-racas-de-cavalos-mais-caras-do-mundo.jpg?resize=600%2C359&ssl=1", "https://i.pinimg.com/originals/82/34/58/823458fa4d9c8e80dab3629babdd2105.jpg", "https://www.teclasap.com.br/wp-content/uploads/2011/04/ladybug1.jpg", "https://www3.unicentro.br/petfisica/wp-content/uploads/sites/54/2018/06/Fen%C3%B4meno-Morpho.jpg", "https://i.pinimg.com/originals/52/8b/b8/528bb84de733a2157f13e7974cfa5211.jpg", "https://meusanimais.com.br/wp-content/uploads/2018/10/curiosidades-sobre-o-bicho-preguica.jpg", "https://cinebuzz.uol.com.br/media/_versions/legacy/2019/04/17/lionel-1140997_widexl.jpg", "https://i.pinimg.com/236x/cb/f6/c8/cbf6c86e64c51f0667c44419e12a096b.jpg", "https://www.hypeness.com.br/1/2016/10/QizaiPanda_destaque.jpg", "https://miro.medium.com/max/988/1*t-6heR0FxhZHQtAst7XiMg.jpeg", "https://static.escolakids.uol.com.br/2022/05/raposa-artico.jpg", "https://www.ripleyaquariums.com/canada/files/2020/04/Jellyfish-Camera_No-Text1800x1200.jpg", "https://topbiologia.com/wp-content/uploads/2014/04/raia-lenga-1.jpg", "https://blog.cobasi.com.br/wp-content/uploads/2021/10/rabbit-gc617360e0_640.jpg", "https://super.abril.com.br/wp-content/uploads/2018/07/566b17ea82bee174ca02c804thinkstockphotos-167229936.jpeg", "https://pbs.twimg.com/profile_images/1217294616128606210/q11eEcQ0_400x400.jpg", "https://live.staticflickr.com/3055/4593802479_debf4fa285_b.jpg", "https://img.estadao.com.br/resources/jpg/8/6/1603832656468.jpg", "https://static.escolakids.uol.com.br/2019/07/lontra.jpg", "https://portaleducacao.hortolandia.sp.gov.br/media/k2/items/cache/2db5d9d6faf8ee640940b5e176223700_XL.jpg", "https://www.fatosdesconhecidos.com.br/wp-content/uploads/2022/03/axolote-1-474x604.jpg"];
	    	
			var lista = embaralhar_ids(imagens);
			
		    for (let i = 0; i < <%=numCartas%> ; i++) {
		        	
				let id = ids[i];
		        let div = $("<div>");
		        div.attr("id", id);
		        div.addClass("cartas");
		        
		       for(j = 0; j < lista.length; j++){
		        	if(id == j+1){
	
		        		let link = lista[j];
		        		div.css("background-image", "url('" + link + "')")
		        		div.css("background-repeat", "no-repeat")
		        		div.css("background-size", "cover")
		    	        div.attr("onclick", "clicouCarta()") 
		        	}
		        	
		        }
		        
		        $("body main section").append(div);
		        
		    }
	
		})
	}



<!-- ########################### comparação das cartas ########################### -->





	
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
	
	
	
	
	<!-- ########################### rodadas ########################### -->
	
	
	<!-- JavaScript incrementar o contador de rodadas -->
	
	
	
	
	//função para incrementar a rodada
	function proxRodada() {
		//pegando o numero da rodada
		const rodada = document.querySelector('.proxRodada')
		
		var rodNum = parseInt(document.getElementById("rodada").textContent)
		rodNum ++
		document.getElementById("rodada").textContent = rodNum
	}

</script>




