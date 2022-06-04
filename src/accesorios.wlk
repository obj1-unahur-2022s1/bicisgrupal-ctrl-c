/*
 * accesorios: Bien+. farolito debiera implementarse como una clase, aunque parezca que 
 * el modelo funciona como objeto, el contexto definido en el enunciado plantea que 
 * van a existir varis bicis, y en ese escenario no podrían compartir todas el mismo 
 * objeto farolito. Hago las correcciones al código para que funcione como clase. 
 * Muy bien la respuesta al punto 5 sobre la pregunta realizada!
 */

class Farolito {
	
	method peso()= 0.5
	
	method carga()= 0
	
	method esLuminoso()= true
}

class Canasto {
	var property volumen
	
	method peso()= volumen / 10
	
	method carga()= volumen * 2
	
	method esLuminoso()= false
}

class Morral {
	var property largo
	var property tieneOjoDeGato = true //Suponemos que por default vienen con ojo de gato
	
	method peso()= 1.2
	
	method carga()= largo / 3
	
	method esLuminoso()= tieneOjoDeGato
}

/*
Pregunta 5:¿Qué agregados o cambios deberían hacerse para agregar un nuevo tipo de accesorio?
* 
Para agregar un nuevo tipo de accesorio se debería tratar de mantener el contrato existente de los otros accesorios, 
por ejemplo que los nuevos accesorios entiendan el mensaje peso, carga y EsLuminoso, por lo cual es necesario hacer uso del polimorfismo 
para que dicho mensaje pueda ser interpretado por cualquier accesorio (existente o nuevo).
Y dado el caso, cada accesorio podría llevar sus propias variables (como por ejemplo un porta botella, que tenga la misma equipada o no)
 */