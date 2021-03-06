
class Tren {
	var property vagones
	
	var property locomotoras
	
	method cantidadVagonesLivianos(){
		return vagones.count{vagon => vagon.esLiviano()}
	}
	
	method velocidadMaxima(){
		return locomotoras.min{locomotora=> locomotora.velocidadMaxima()}.velocidadMaxima()
	}
	
	method esEficiente(){
		return locomotoras.all{locomotora => locomotora.arrastreUtil() >= locomotora.peso()*5}
	}
	
	method puedeMoverse(){
		return self.arrastreUtilTotal() >= self.pesoTotalVagones()
	}
	
	method arrastreUtilTotal(){
		return  locomotoras.sum{ locomotora => locomotora.arrastreUtil() }
		
	}
	
	method pesoTotalVagones(){
		return vagones.sum{vagon => vagon.pesoMaximo()}
	}
	
	method kilosDeArrastreFaltantes(){
		return if(self.puedeMoverse()){ 0 } 
				else {self.pesoTotalVagones()-self.arrastreUtilTotal()}
	}
	
	method vagonMasPesado(){
		return vagones.max{vagon=> vagon.pesoMaximo()}
	}
	
	method pesoTotalFormacion(){
		return self.pesoTotalVagones() + self.pesoTotalLocomotoras()
	}
	
	method pesoTotalLocomotoras(){
		return locomotoras.sum{locomotora => locomotora.peso()}
	}
	
	method esCompleja(){
		return self.pesoTotalFormacion() > 10000 or vagones.size() + locomotoras.size() > 20
	}
	
	method agregarLocomotora(locomotora){
		locomotoras.add(locomotora)
	}

	
}