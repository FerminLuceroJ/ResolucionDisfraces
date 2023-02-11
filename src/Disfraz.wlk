class Disfraz {
	
	const nombre
	const fechaConfeccion
	const caracteristicas = []
	var duenio
	const fiesta
	
	method caracteristicas() = caracteristicas
	
	method fecha() = fechaConfeccion
	
	method puntaje() {
		
		return (caracteristicas.sum({ unaCaracteristica => unaCaracteristica.puntaje(duenio, fiesta)}))
	}
	
	method diasHecho() {
		return (fiesta.fecha() - fechaConfeccion)
	}
}
