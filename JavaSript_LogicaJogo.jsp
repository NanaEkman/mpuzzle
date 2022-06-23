<link rel="shortcut icon" href="#">

<div id=1 onclick="clicouCarta()">carta1</div>
<div id=2 onclick="clicouCarta()">carta2</div>
<div id=2 onclick="clicouCarta()">carta3</div>
<div id=1 onclick="clicouCarta()">carta4</div>


<script>

var cartasSelecionadas = 0;

function clicouCarta(){
	
	cartasSelecionadas ++;
	if (cartasSelecionadas == 1) {
		
		const carta1 = event.target;
	    const id1 = carta1.id;
	    console.log(id1);
	    console.log(carta1);
	    
		carta1.setAttribute("onclick","cartaClicada()")
		carta1.style.backgroundColor = "yellow";
	}
	
	if (cartasSelecionadas == 1) {
			
		const carta2 = event.target;
	    const id2 = carta2.id;
	    console.log(id2);
	    console.log(carta2);
	    
		carta2.setAttribute("onclick","cartaClicada()")
		carta2.style.backgroundColor = "yellow";
		
		compararCartas(id1, id2, carta1, carta2);
	}
		
	
}

function compararCartas(id1, id2, carta1, carta2) {
	
	//acertou
	if (id1 == id2) {
		alert("Você acertou!")
		
	} else {
		alert("Você errou!")
		carta1.setAttribute("onclick","clicouCarta()")
		carta2.setAttribute("onclick","clicouCarta()")
	}
}

function cartaClicada(){
	alert("Essa carta ja foi clicada")
}

</script>