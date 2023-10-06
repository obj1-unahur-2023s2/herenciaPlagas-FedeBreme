import elementos.*
import plagas.*

class Barrio {
	const elementos = []
	const property plagas = []
	
	method agregarElemento(unElemento) {
		elementos.add(unElemento)
	}
	
	method quitarElemento(unElemento) {
		elementos.remove(unElemento)
	}
	
	method esBueno(unElemento) {
		return unElemento.esBueno()
	}
	
	method noEsBueno(unElemento) {
		return !unElemento.esBueno()
	}
	
	method esBarrioCopado() {
		return elementos.count({e => self.esBueno(e)}) > elementos.count({e => self.noEsBueno(e)})
	}
	
	method nivelDeDanio(unaPlaga) {
		return unaPlaga.nivelDeDanioAlAtacar()
	}
	
	method transmiteEnfermedades(unaPlaga) {
		return unaPlaga.transmiteEnfermedades()
	}
	
	method recibirAtaque(unElemento, unaPlaga) {
		unElemento.recibirAtaque(unaPlaga)
		unaPlaga.realizarAtaque()
	}
}