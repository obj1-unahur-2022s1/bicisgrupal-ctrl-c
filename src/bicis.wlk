class Bicicletas {
	var property rodado
	var property largo
	var property marca
	var property accesorios
	
	method altura() = rodado*2.5 + 15
	
	method velocidadCrucero() = if (largo>120){rodado+6}else{rodado+2}
	
	
}