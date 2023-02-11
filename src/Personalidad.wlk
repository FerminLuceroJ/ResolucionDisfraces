object alegre {
	
	method esSexie(unaPersona) {
		
		return false
	}
	

}

object tacituma {
	
	method esSexie(unaPersona) {
		
		return (unaPersona.edad() < 30)
	}
	
}

object cambiante {
	
	const personalidades = [alegre, tacituma]
	
	method esSexie(unaPersona) {
		
		return (personalidades.anyOne().esSexie(unaPersona))
	}
}