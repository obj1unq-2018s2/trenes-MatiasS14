class Deposito{
	var property formaciones
	
	method vagonesMasPesados(){
		return formaciones.filter{ formacion => formacion.vagonMasPesado() }
	}
	
	
	
}
