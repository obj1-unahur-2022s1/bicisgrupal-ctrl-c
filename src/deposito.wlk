/*
 * deposito: MBien. La colección de bicis podría ser una const property. Había un error en
 * el método tieneBiciParaCargar(kg), estaba mal ubicada la llave del closure, hago la corrección.
 * Sería bueno tener métodos para agregar o quitar bicis a la colección, y que la misma sea 
 * una const property ya que no va a cambiar, pero si sus elementos podrían modificarse. Les dejo 
 * la sugerencia.
 * Para el método cargaBicisLargas() tal vez convenía hacer un método auxiliar que filtre las que tienen
 * largo > 170 para que no quede tal larga la expresión. Dejo la sugerencia.
 * 
 * 
 * 
 */

import bicis.*
import accesorios.*

class Deposito {
	const property bicis = []
	
	method agregar(unaBici) { bicis.add(unaBici) }
	method quitar(unaBici) { bicis.remove(unaBici) }
	
	method bicisRapidas() = bicis.filter( { b => b.esRapida() } )
	
	method marcas() = bicis.map( { b => b.marca() } ).asSet()
	
	method esNocturno() = bicis.all( { b => b.tieneLuz() } )
	 
	method tieneBiciParaCargar(kg) = bicis.any( { b => b.carga() > kg } )
	
	method biciMasRapida() = bicis.max({ b => b.velocidadCrucero() }).marca() // este método podría llamarse marcaBiciMasRapida()
	
	method bicisLargas() = bicis.filter{b=>b.largo()>170}
	method cargaBicisLargas() = self.bicisLargas().sum({ b => b.carga() })
		
	method bicisSinAccesorios() = bicis.count({ b => b.accesorios().isEmpty() }) // podía usarse isEmpty()
	
	method biciCompanieraDe(bici) = bicis.filter({ b => b.esCompanieraDe(bici) }) // este método podría llamarse bicisCompanierasDe(bici)
	
	//Desafios:
	method hayCompanieras() = bicis.any({ b => !self.biciCompanieraDe(b).isEmpty() })

	method parejasCompanieras() = bicis.filter({ b => !self.biciCompanieraDe(b).isEmpty() }) //No estamos seguros si es lo que esperaban o querian una lista de listas (o tuplas)
	/* está correcto */
	
}
