
object paqueteDeLucas {
	var property estaPago = true
	
	method cambiarEstadoDelPago(_estado) {
		estaPago = _estado
	}
	method estaPago() = estaPago
}

object mensajeria {
	
	method puedeSerEntregadoPorA(_paquete, _empleado,  _destino) = _paquete.estaPago() && _destino.puedeEntregar(_empleado) 
}

object brooklyn {
	method puedeEntregar(_empleado) = _empleado.peso() < 1000 //kg
}

object laMatrix {
	method puedeEntregar(_empleado) = _empleado.puedeLlamar()
}



object sara {
	const puedeLlamar = false
	var vehiculo = moto
	var pesoPropio = 60 
	

	method peso() = pesoPropio +  vehiculo.peso()
	method pesoPropio(_peso) {
		pesoPropio = _peso
	}
	method puedeLlamar() = puedeLlamar 
	method cambiarVehículo(_vehiculo){
		vehiculo = _vehiculo
	}
	method vehiculo() = vehiculo 
}

object neo {
	const peso = 0
	var tieneCredito = true
	var puedeLlamar = tieneCredito 

	method cambiarCredito(_Bool) {
		tieneCredito = _Bool
	} 
	method peso() = peso
	method puedeLlamar() = tieneCredito 
}

object jean {
	const puedeLlamar = true
	const peso = 65 //kg 

	method puedeLlamar() = puedeLlamar
	method peso() = peso 
}


object moto {
  	const peso = 100 //kg 

	method peso() = peso 
}

object camion {
	const pesoPropio = 500 //kg
	var cantidadDeAcoplados = 0
    method peso() =   pesoPropio  + (500 * cantidadDeAcoplados)

method cambiarCantidadDeAcoplados(_cantidad) {
	cantidadDeAcoplados = _cantidad
}}