import remiseras.*
import clientes.*

object oficina {
	var primeraRemisera
	var segundaRemisera
	
	method primeraRemisera() = primeraRemisera
	method segundaRemisera() = segundaRemisera
	method asignarRemiseras(remisera1, remisera2) {
		primeraRemisera = remisera1
		segundaRemisera = remisera2
	}
	method cambiarPrimerRemiseraPor(remisera) {
		primeraRemisera = remisera
	}
	method cambiarSegundoRemiseraPor(remisera) {
		segundaRemisera = remisera
	}
	method intercambiarRemiseras(){
		self.asignarRemiseras(segundaRemisera, primeraRemisera)
	}
	method remiseraElegidaParaViaje(cliente, kms) =
		if (primeraRemisera.precioViaje(cliente, kms) - segundaRemisera.precioViaje(cliente, kms) >= 30) 
		  segundaRemisera
		else 
		  primeraRemisera
}
