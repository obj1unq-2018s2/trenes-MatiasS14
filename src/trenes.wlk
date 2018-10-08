
class VagonDeCarga{
	var property anchoUtil
	var property largo
	var property cargaMaxima
	
	method pesoMaximo(){return cargaMaxima+160}
}
class VagonDePasajeros{
	var property anchoUtil
	var property largo
	
	method capacidadPasajeros() {
		return if (anchoUtil <= 2.5) largo * 8 else largo * 10
	}
	
	method pesoMaximo() {return self.capacidadPasajeros()*80}
}

class Locomotora{
	var property peso
	var property arrastreMaximo
	var arrastreUtil= arrastreMaximo - peso
	var property velocidadMaxima
}

class Tren {
	var property cantidadVagones
	var property cantidadLocomotoras
	
}