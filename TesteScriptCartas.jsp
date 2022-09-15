<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link rel="shortcut icon" href="#">
<script>

/* gera as cartas */
<%
//pegar tamanho do lado no form

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
	        div.addClass("memory-card");
	        div.attr("data-framework", id)
	      
	        
	       for(j = 0; j < lista.length; j++){
	        	if(id == j+1){

	        		let link = lista[j];
	        		let img = $("<img>");
	        		img.addClass("front-face")
	    	        img.attr("src", link)
	    	        div.append(img)
	    	        
	        	}
	        	
	        }
	       	
	       let back = $("<img>");
	        back.addClass("back-face")
	        back.attr("src", "https://cdn-icons-png.flaticon.com/512/5726/5726775.png")	    
	        div.append(back)
	        
	        $("body section").append(div);
	        
	    }

	})
}

/*  recupera a carta clicada */
const cards = document.querySelectorAll('.memory-card');

let hasFlippedCard = false;
let lockBoard = false;
let firstCard, secondCard;

/*  ve se ta virada ou não */
function flipCard() {
  if (lockBoard) return;
  if (this === firstCard) return;

  this.classList.add('flip');
  //===============================================precisa descobrir como colocar essa classe nas outras cartas

  if (!hasFlippedCard) {
    hasFlippedCard = true;
    firstCard = this;

    return;
  }

  secondCard = this;
  checkForMatch();
}

function checkForMatch() {
  let isMatch = firstCard.dataset.framework === secondCard.dataset.framework;

  isMatch ? disableCards() : unflipCards();
}

function disableCards() {
  firstCard.removeEventListener('click', flipCard);
  secondCard.removeEventListener('click', flipCard);

  resetBoard();
}

function unflipCards() {
  lockBoard = true;

  setTimeout(() => {
    firstCard.classList.remove('flip');
    secondCard.classList.remove('flip');

    resetBoard();
  }, 1500);
}

function resetBoard() {
  [hasFlippedCard, lockBoard] = [false, false];
  [firstCard, secondCard] = [null, null];
}

(function shuffle() {
  cards.forEach(card => {
    let randomPos = Math.floor(Math.random() * 12);
    card.style.order = randomPos;
  });
})();

cards.forEach(card => card.addEventListener('click', flipCard));


</script>