import bicis.*
import accesorios.*

class Deposito {
	var property bicis = []
	
	method bicisRapidas() = bicis.filter( { b => b.esRapida() } )
	
	method marcas() = bicis.map( { b => b.marca() } ).asSet()
	
	method esNocturno() = bicis.all( { b => b.tieneLuz() } )
	 
	method tieneBiciParaCargar(kg) = bicis.any( { b => b.carga()} > kg)
	
	method biciMasRapida() = bicis.max({ b => b.velocidadCrucero() }).marca()
	
	method cargaBicisLargas() = bicis.filter({ b => b.largo() > 170 }).sum({ b => b.carga() })
		
	method bicisSinAccesorios() = bicis.count({ b => b.accesorios().size() == 0 })
	
	method biciCompanieraDe(bici) = bicis.filter({ b => b.esCompanieraDe(bici) })
	
	//Desafios:
	method hayCompanieras() = bicis.any({ b => !self.biciCompanieraDe(b).isEmpty() })

	method parejasCompanieras() = bicis.filter({ b => !self.biciCompanieraDe(b).isEmpty() }) //No estamos seguros si es lo que esperaban o querian una lista de listas (o tuplas)
	
}
