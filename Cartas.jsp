<%
//pegar tamanho do lado no banco

int numLado = 8;
int numCartas = numLado*numLado;
int numImagens = numCartas/2;

%>

<style>
	.baseCartas {
	    display: grid;
	    grid-template-columns: repeat(<%=numLado%>, 1fr);
	    grid-template-rows: repeat(<%=numLado%>, 85px);
	    grid-auto-rows: minmax(200px, auto);
		grid-column-gap: 10px;
		grid-row-gap: 10px;
	    border-radius: 10px;
		
	}
	
	.cartas {
	    display: flex;
	    width: 50px;
	    height: 50px;
	    background-color: yellow; 
	}
</style>

<body>
	<main>
        <section class="baseCartas">

		</section>
	</main>
</body>

<button onclick="comecar()">Jogar</button>


<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">

function comecar(){
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
	alert(ids);
	embaralhar_ids(ids);
	return ids;
}
//embaralha a lista de ids duplicados
function embaralhar_ids(ids) {
    for (let i = ids.length - 1; i > 0; i--) {
	    const j = Math.floor(Math.random() * (i + 1));
	    [ids[i], ids[j]] = [ids[j], ids[i]];
	}
    alert(ids);
	return ids;
}

function montar_cartas(ids){

	$(document).ready(function(e){
	
	    for (let i = 0; i < <%=numCartas%> ; i++) {
	        	
			let id = ids[i];
	        let div = $("<div>").text(id);
	        div.attr("id", id);
	        div.addClass("cartas");
	
	        $("body main section").append(div);
	    }
	    
	})
}
    


</script>