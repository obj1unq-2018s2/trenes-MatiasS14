
class Locomotora{
	var property peso= 0
	
	var property arrastreMaximo=0

	var velocidadMaxima= 0
	
	method velocidadMaxima(){return velocidadMaxima }
	
	method velocidadMaxima(velocidad){velocidadMaxima= velocidad}
	
	method arrastreUtil(){return arrastreMaximo - peso	}
}