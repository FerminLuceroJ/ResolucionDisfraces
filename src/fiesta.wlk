class Fiesta {
	
	const lugar
	const fecha
	const invitados = []
	
	method fecha() = fecha
	
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
			
			self.error("No se puedo agregar al asistente")
		}
	}
	
	
}