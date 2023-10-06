class Hogar {
	var property nivelDeMugre
	var property confort
	
	method esBueno() = nivelDeMugre >= confort / 2
	
	method recibirAtaque(unaPlaga) {
		nivelDeMugre += unaPlaga.nivelDeDanioAlAtacar()
	}
}

class Huerta {
	var property capacidadDeProduccion
	
	method esBueno() = capacidadDeProduccion > nivelDeProduccion.nivel()
	
	method recibirAtaque(unaPlaga) {
		if (unaPlaga.transmiteEnfermedades()){
			capacidadDeProduccion = (capacidadDeProduccion - unaPlaga.nivelDeDanioAlAtacar() * 0.1) - 10
		} else {
			capacidadDeProduccion = capacidadDeProduccion - (unaPlaga.nivelDeDanioAlAtacar() * 0.1)
		}
	}
}

class Mascota {
	var property nivelDeSalud
	
	method esBueno() = nivelDeSalud > 250
	
	method recibirAtaque(unaPlaga) {
		if (unaPlaga.transmiteEnfermedades()) {
			nivelDeSalud -= unaPlaga.nivelDeDanioAlAtacar()
		}
	}
}

object nivelDeProduccion {
	var property nivel = 100
}
