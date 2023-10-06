class Plagas {
	var property poblacion
	var property nivelDeDanioAlAtacar
	
	method transmiteEnfermedades() {
		return poblacion <= 10
	}
	
	method realizarAtaque() {
		poblacion = poblacion + (poblacion * 0.1)
	}
}

class Cucarachas inherits Plagas {
	var property pesoPromedioPorCucaracha
	
	override method nivelDeDanioAlAtacar() {
		return poblacion / 2
	}
	
	override method transmiteEnfermedades() { 
		return pesoPromedioPorCucaracha >= 10 and super()
	}
	
	override method realizarAtaque() {
		super()
		pesoPromedioPorCucaracha += 2
	}
}

class Pulgas inherits Plagas {
	
	override method nivelDeDanioAlAtacar() {
		return poblacion * 2
	}
}

class Garrapatas inherits Pulgas {
	
	override method realizarAtaque() {
		poblacion = poblacion + (poblacion * 0.2)
	}
}

class Mosquitos inherits Plagas {
	
	override method nivelDeDanioAlAtacar() {
		return poblacion
	}
	
	override method transmiteEnfermedades() {
		return poblacion % 3 == 0 and super()
	}
}
