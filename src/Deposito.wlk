import bicis.*

class Deposito {
	var bicis = []
	
	method bicisRapidas() = bicis.filter( { b => b.velocidadCrucero() > 25 } )
	method marcas() = bicis.filter( { b => b.marca() } )
	
}
