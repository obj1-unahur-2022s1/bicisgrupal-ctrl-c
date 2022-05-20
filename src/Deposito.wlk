import bicis.*

class Deposito {
	var property bicis = []
	
	// La colección de sus bicis rápidas. Una bici se considera rápida si su velocidad de crucero es mayor a 25.
	method bicisRapidas() = bicis.filter( { b => b.velocidadCrucero() > 25 } )
	
	// La colección formada por la marca de cada una de las bicis, sin repetidos.
	method marcas() = bicis.map( { b => b.marca() } ).asSet()
	
	// Si el depósito es nocturno o no. 
	// La condición es que todas sus bicis tengan luz.
	method esNocturno() = bicis.all( { b => b.tieneLuz() == true} )
	
	/* Si tiene bicicleta para llevar una carga expresada en kg. 
	   La condición es que para al menos una de las bicis del depósito, la carga que puede llevar sea mayor a los kilos que se piden.*/
	method tieneBiciParaCargar(kg) = bicis.any( { b => b.carga()} > kg)
	
	method tieneMarca(marca) = bicis.any( { b => b.marca() == marca})

}
