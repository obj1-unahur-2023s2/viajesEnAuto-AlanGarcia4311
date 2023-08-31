object ludmila {
	method precioPorKm() = 18	
}

object anaMaria {
	var economicamenteEstable = true
	
	method economicamenteEstable() = economicamenteEstable
	method economicamenteEstable(estado) {
		economicamenteEstable = estado
	}
	method precioPorKm() = if (economicamenteEstable) 30 else 25
}

object teresa {
	var precioPorKm = 22
	
	method precioPorKm() = precioPorKm
	method precioPorKm(nuevoPrecio) {
		precioPorKm = nuevoPrecio
	}
}

object melina {
	var trabajaPara
	
	method trabajaPara(cliente) {
		trabajaPara = cliente
	}
	method precioPorKm() = trabajaPara.precioPorKm() - 3
}

