object appFiestas {
	
	const fiestas = []
	
	method puntajeDisfraz(unDisfraz) {
		
		return (unDisfraz.caracteristicas().sum({ unaCaracteristica =>
					unaCaracteristica.puntaje()}))
	}
	
	method esUnBodrio(unaFiesta) {
		
		return unaFiesta.esUnBodrio()
	}
	
	method mejorDisfraz(unaFiesta) {
		
		return (unaFiesta.mejorDisfraz())
	}
	
	method estanEnFiesta(unaFiesta, unAsistente, otroAsistente) {
		
		return (unaFiesta.invitados().contains(unAsistente) &&
			unaFiesta.invitados().contains(otroAsistente)
		)
	}
	
	method cambiandoElTrajeEstanConforme(unAsistente, otroAsistente) {
	const disfrazAuxiliar = unAsistente.disfraz()
	
		unAsistente.cambiarDisfraz(otroAsistente.disfraz())
		otroAsistente.cambiarDisfraz(disfrazAuxiliar)
		
	}
	
	method puedenIntercambiarDisfrases(unaFiesta, unAsistente, otroAsistente) {
		
		return (self.estanEnFiesta(unaFiesta, unAsistente, otroAsistente) &&
			   (!unAsistente.estaConforme() or (!otroAsistente.estaConforme())) &&
			   	
		)
	}
	
}
