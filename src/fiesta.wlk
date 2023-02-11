class Fiesta {
	
	const lugar
	const fecha
	const invitados = []
	
	method fecha() = fecha
	method lugar() = lugar
	
	method esUnBodrio() {
		
		return (invitados.all({ unInvitado => !unInvitado.estaConforme()}))
	}
	
	method mejorDisfraz() {
		
		return (invitados.max({ unInvitado => unInvitado.disfraz().puntaje()})).disfraz()
	}
	
	method agregarAsistente(unAsistente) {
		
		if(unAsistente.tieneDisfraz() && !invitados.contains(unAsistente)) {
			
			invitados.add(unAsistente)
		}else {
			
			self.error("No se pudo agregar al asistente")
		}
	}
	
	method esInolvidable() {
		
		return (invitados.all({ unInvitado => unInvitado.esSexie() && unInvitado.estaConforme()}))
	}
	
	method estaEnFiesta(unAsistente) {
		
		return invitados.contains(unAsistente)
	}
	
}