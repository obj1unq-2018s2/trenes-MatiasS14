
class VagonDeCarga{
	var property anchoUtil
	
	var property largo
	
	var property cargaMaxima
	
	method capacidadPasajeros(){}
	
	method pesoMaximo(){ return cargaMaxima + 160 }
	
	method esLiviano(){return self.pesoMaximo() < 2500 }
}

class VagonDePasajeros{
	var property anchoUtil
	
	var property largo
	
	var property cargaMaxima
	
	method capacidadPasajeros() {
		return if (anchoUtil <= 2.5) largo * 8 else largo * 10
	}
	
	method pesoMaximo() {return self.capacidadPasajeros()*80}
	
	method esLiviano(){return self.pesoMaximo() < 2500 }
}