import accesorios.*

class Bicicletas {
	var property rodado
	var property largo
	var property marca
	var property accesorios = []
	
	method altura() = rodado * 2.5 + 15
	
	method velocidadCrucero() = if (largo > 120) { rodado + 6 } else { rodado + 2 }
	
	method carga() = accesorios.sum({ a => a.carga() })
	
	method peso() = rodado / 2 + accesorios.sum({ a => a.peso() })
	
	method tieneLuz() = accesorios.any({ a => a.esLuminoso() })
	
	method cantidadAccesoriosLivianos() = accesorios.count({ a => a.peso() < 1 })
	
	method esRapida() = self.velocidadCrucero() > 25
}