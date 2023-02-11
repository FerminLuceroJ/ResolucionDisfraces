class Fiesta {
	
	const lugar
	const fecha
	const invitados = []
	
	method fecha() = fecha
	
	method puntajeDisfraz(unDisfraz) {
		
		return (unDisfraz.caracteristicas().sum({ unaCaracteristica =>
					unaCaracteristica.puntaje()}))
	}
	
	method esUnBodrio() {
		
		return (invitados.all({ unInvitado => !unInvitado.estaConforme()}))
	}
	
	method mejorDisfraz() {
		
		return (invitados.max({ unInvitado => unInvitado.disfraz().puntaje()})).disfraz()
	}
	
}