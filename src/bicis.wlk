/*
 * bicis: Bien+. Podría existir métodos para agregar y quitar accesorios a cada bici, 
 * dejo la sugerencia. Los atributos marca y accesorios podrían ser constantes
 * ya que no cambiarían. rodado y largo también pero en algún escenario tal vez podrían cambiar.
 * El método esCompanieraDe(bici) no funciona si por ejemplo bici1 tiene un largo de 100 y bici2 de 120, 
 * porque la diferencia calculada en el método da -20 y ambas bicis difieren en más de 10. Para resolver
 * eso se debía aplicar valor absoluto (método abs()) a la diferencia. Les dejo la corrección en el código.  
 */

import accesorios.*

class Bicicletas {
	var property rodado
	var property largo
	const property marca
	const property accesorios = []
	
	method agregarAccesorio(unAccesorio) {accesorios.add(unAccesorio)}
	method quitarAccesorio(unAccesorio) {accesorios.remove(unAccesorio)}
	
	method altura() = rodado * 2.5 + 15
	
	method velocidadCrucero() = if (largo > 120) { rodado + 6 } else { rodado + 2 }
	
	method carga() = accesorios.sum({ a => a.carga() })
	
	method peso() = rodado / 2 + accesorios.sum({ a => a.peso() })
	
	method tieneLuz() = accesorios.any({ a => a.esLuminoso() })
	
	method cantidadAccesoriosLivianos() = accesorios.count({ a => a.peso() < 1 })
	
	method esRapida() = self.velocidadCrucero() > 25
	
	method esCompanieraDe(bici) = if (bici != self) 
		{self.marca() == bici.marca() && (self.largo() - bici.largo()).abs() <= 10}
		else { false }

}