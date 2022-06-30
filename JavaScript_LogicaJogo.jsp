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
}

function cartaClicada(){
	alert("Essa carta ja foi clicada")
}

</script>