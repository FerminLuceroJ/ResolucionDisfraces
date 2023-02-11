object appFiestas {
	
	const fiestas = []
	
	method puntajeDisfraz(unDisfraz) {
		
		return (unDisfraz.puntaje())
	}
	
	method esUnBodrio(unaFiesta) {
		
		return unaFiesta.esUnBodrio()
	}
	
	method mejorDisfraz(unaFiesta) {
		
		return (unaFiesta.mejorDisfraz())
	}
	
	method estanEnFiesta(unaFiesta, unAsistente, otroAsistente) {
		
		return (unaFiesta.estaEnFiesta(unAsistente) && unaFiesta.estaEnFiesta(otroAsistente))
	}
	
	method cambiandoElTrajeEstanConforme(unAsistente, otroAsistente) {
	const disfrazAuxiliar = unAsistente.disfraz()
		
		if(unAsistente.tieneDisfraz() && otroAsistente.tieneDisfraz()) {
		unAsistente.cambiarDisfraz(otroAsistente.disfraz())
		otroAsistente.cambiarDisfraz(disfrazAuxiliar)
		}
		return (unAsistente.estaConforme() && otroAsistente.estaConforme())
	}
	
	method puedenIntercambiarDisfrases(unaFiesta, unAsistente, otroAsistente) {
		
		return (self.estanEnFiesta(unaFiesta, unAsistente, otroAsistente) &&
			   (!unAsistente.estaConforme() or (!otroAsistente.estaConforme())) &&
			   (self.cambiandoElTrajeEstanConforme(unAsistente, otroAsistente))
		)
	}
	
	method agregarAsistenteAFiesta(unAsistente, unaFiesta) {
		
		unaFiesta.agregarAsistente(unAsistente)
	}
	
	method esFiestaInolvidable(unaFiesta) {
		
		return (unaFiesta.esInolvidable())
	}
	
}
