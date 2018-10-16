import locomotora.*
class Deposito{
	var property formaciones
	var vagonesPesados=#{}
	method vagonesMasPesados(){
		vagonesPesados= formaciones.filter{ formacion => formacion.vagonMasPesado() }
		return vagonesPesados 
	}
	
	method seNecesitaConductorExperimentado(){
		return formaciones.any{ formacion => formacion.esCompleja() }
	}
	
	method agregarLocomotoraAFormacion(formacionCambiar){
		var formacionAModificar = formaciones.find{formacion=> formacion == formacionCambiar}
		
		var locomotora= new Locomotora(
			arrastreMaximo=formacionCambiar.kilosDeArrastreFaltantes()*2,
			peso=formacionCambiar.kilosDeArrastreFaltantes()
		)
		
		if(not formacionAModificar.puedeMoverse()){
			
			formacionAModificar.agregarLocomotora(locomotora)
			
			formaciones.remove(formacionCambiar)
			
			formaciones.add(formacionAModificar)
		
		} 
	}
	
	method formacionesPuedenMoverse(){
		return formaciones.all{ tren => tren.puedeMoverse() }
	}
	
	
	
}
