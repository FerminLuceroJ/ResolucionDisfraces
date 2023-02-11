class Invitado {
	
	var disfraz
	const personalidad
	var edad
	
	method fechaDisfraz() {
		return (disfraz.fecha())
	}
	
	method disfraz() = disfraz
	
	method edad() {
		return edad
	}	
	
	method esSexie() {
		
		return personalidad.esSexie(self)
	}
	
	method estaConforme() {
		
		return (disfraz.puntaje() > 10)
	}
	
	method cambiarDisfraz(unDisfraz) {
		
		disfraz = unDisfraz
	}
	
	method tieneDisfraz() {
		
		return (disfraz != null)
	}
}

class Caprichoso inherits Invitado {
	
	override method estaConforme() {
		
		return (super() && disfraz.nombre().size().even())
	}
	
	
}

class Pretencioso inherits Invitado { 
	
	override method estaConforme() {
		
		return (super() && disfraz.diasHecho() > 30)
	}	
	
	
}

class Numerologo inherits Invitado {
	
	const numeroElegido
	
	override method estaConforme() {
		
		return (super() && disfraz.puntaje() == numeroElegido)	
	}
	
}