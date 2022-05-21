import bicis.*
import accesorios.*

class Deposito {
	var property bicis = []
	
	// La colección de sus bicis rápidas. Una bici se considera rápida si su velocidad de crucero es mayor a 25.
	method bicisRapidas() = bicis.filter( { b => b.esRapida() } )
	
	// La colección formada por la marca de cada una de las bicis, sin repetidos.
	method marcas() = bicis.map( { b => b.marca() } ).asSet()
	
	/* Si el depósito es nocturno o no. 
	   La condición es que todas sus bicis tengan luz. */
	method esNocturno() = bicis.all( { b => b.tieneLuz() } )
	
	/* Si tiene bicicleta para llevar una carga expresada en kg. 
	   La condición es que para al menos una de las bicis del depósito, la carga que puede llevar sea mayor a los kilos que se piden.*/
	method tieneBiciParaCargar(kg) = bicis.any( { b => b.carga()} > kg)
	
	//la marca de la bici más rápida.
	method biciMasRapida() = bicis.max({ b => b.velocidadCrucero() }).marca()
	
	//la carga total de las bicis largas, que se calcula como la suma de la carga que pueden llevar las bicis cuyo largo es de más de 170 cm.
	method cargaBicisLargas() = bicis.filter({ b => b.largo() > 170 }).sum({ b => b.carga() })
	
	//la cantidad de bicis sin accesorios que hay en el depósito.
	
	method bicisSinAccesorios() = bicis.count({ b => b.accesorios().size() == 0 })
	
	/* 
	Se pudo resolver el test con el method marcas(), yo diria de borrar este otro  
	method tieneMarca(marca) = bicis.any( { b => b.marca() == marca})
	*/

}
