class Gracioso {
	
	const nivelDeGracia 
	
	method puntaje(unInvitado, unaFiesta) {
		
		var gracia = nivelDeGracia
		if(unInvitado.edad() > 50) {
			
			gracia = nivelDeGracia * 3
			
		} 
		
		return gracia
	}
	
	
	
}

class Tobaras {
	
	method puntaje(unInvitado, unaFiesta) {
		var puntaje
		
		if((unaFiesta.fecha() - unInvitado.fechaDisfraz()) >= 2) {
			puntaje = 5
		}else {
			puntaje = 3
		}
		
		return puntaje
	}
	
}

class Caretas {
	
	const valorPersonaje
	
	method puntaje(unInvitado, unaFiesta) {
		
		return valorPersonaje
	}
	
}

class Sexies {
	
	method puntaje(unInvitado, unaFiesta) {
		var puntaje = 2
		
		if(unInvitado.esSexie()) {
			
			puntaje = 15
		} 
		
		return puntaje
	}
	
}