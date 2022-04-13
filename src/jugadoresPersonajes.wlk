object luisa {
	
}


object floki {
	var arma
	
	method arma(nueva){
		arma = nueva
	}
	
	method encontrar(elemento){
		if(arma.estaCargada()){
			elemento.recibirAtaque(arma.potencia())
			arma.usar()
		}
	}
}


object mario {
	var valorRecolectado = 1100000

}

object ballesta{
	var flechas = 10
	
	method potencia() {return 4}
	
	method estaCargada() {
		return flechas > 0
		
	}
	method usar(){
		flechas = flechas -1
	}
	
	method flechas() {
		return flechas
	}
	method descargar() {
		flechas = 0
	}
	
}

object jabalina{
	var usada = false
	
	method potencia() {return 30}
	
	
	method estaCargada() {
		return not usada
		
	}
	method usar(){
		usada = true
	}
	
}

object castillo {
	var nivelDefensa = 150
	
	method recibirAtaque(potencia){
		nivelDefensa = nivelDefensa - potencia
	}
	method nivelDefensa() {
		return nivelDefensa
	}
}