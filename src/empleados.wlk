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
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	var total = 0
	var deuda = 0
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
 	
	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada
	method cobrarSueldo(){
		total += self.sueldo() - self.totalDeuda()
	}
	method totalDeuda(){
		return deuda
	}
	method totalDinero(){
		return total
	}
	method gastar(cuanto){
		if(total < cuanto){
			deuda += cuanto - total
		}
		else{
			total -= cuanto
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
