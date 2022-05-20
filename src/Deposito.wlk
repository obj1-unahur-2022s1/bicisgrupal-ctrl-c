import bicis.*

class Deposito {
	var property bicis = []
	
	method bicisRapidas() = bicis.filter( { b => b.velocidadCrucero() > 25 } )
	
	method marcas() = bicis.map( { b => b.marca() } ).asSet()
	
	
}
