object gimenez {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
	var property sueldo = 15000
	var total = 0
	method sueldo(){
		return sueldo
	}
	method sueldo(nuevoValor){
		sueldo = nuevoValor
	}
	method cobrarSueldo(){
		total += self.sueldo()
	}
	method totalCobrado(){
		return total 
	}
}

object baigorria {
	var cantidadEmpanadasVendidas = 1000
	var montoPorEmpanada = 15
	var total = 0
	var deuda = 0
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
 	
	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada
	method cobrarSueldo(){ 
		if(self.sueldo()>deuda){
			total += self.sueldo() - deuda
			
			// TODO Innecesariamente enroscado, más fácil y claro es deuda = 0	
			deuda -= deuda
		}
		else{
			deuda-= self.sueldo()
		}
	}
	method totalDeuda(){
		return deuda
	}
	method totalDinero(){
		return total
	}
	
	// TODO Hay lógica repetida entre gastar y cobrar, ¿cómo podría evitarse?
	method gastar(cuanto){
		if(total > cuanto){
			total -= cuanto
		}			
		else{
			deuda += cuanto - total
			// TODO total = 0	
			total -= total 
		}
	}
}

object galvan {
	var dinero = 300000
	method dinero(){
		return dinero
	}
	method pagarA(empleado){
		dinero -= empleado.sueldo()
		empleado.cobrarSueldo()			
	}
}
