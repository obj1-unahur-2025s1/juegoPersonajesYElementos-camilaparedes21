
object luisa {
  var personajeActivo = floki
  method aparecer(elemento) {
    personajeActivo.encontrar(elemento)
  }
  method asignarPersonaje(personaje) {
    personajeActivo = personaje
  }
}

object floki {
const arma = jabalina

  method encontrar(elemento) {
    if (arma.estaCargada()) {
      elemento.recibirAtaque(arma.potencia())
      arma.usar()
    }
  }
}


object mario {
    var valorRecolectado = 0
  var ultimoElemento = null

  method encontrar(elemento) {
    valorRecolectado = valorRecolectado + elemento.valorPara(self)
    elemento.recibirTrabajo()
    ultimoElemento = elemento }
    method esFeliz() = valorRecolectado >= 50 or ultimoElemento.altura() >= 10
}

object ballesta {
  var flechas = 10
  method potencia() = 8
  method usar(){
    flechas= flechas-1
  }
  method estaCargada() = flechas>0
}
object jabalina {
    var usada = false
    method potencia() = 30
    method estaCargada() = not usada
    method usar() {
    usada = true
  }
}
object castillo {
  const altura = 20 
  method altura()=altura
  var defensa = 150
  method recibirAtaque(potencia) {
    defensa = defensa-potencia
  }
  method valorPara(personaje) = defensa / 5
  method recibirTrabajo() {
    defensa = defensa.min(defensa + 20, 200)
  }
}

object aurora {
  var property altura = 1
  var estaViva= true
  method recibirAtaque(potencia){
    if(potencia >=10){
        estaViva= false
    }
  }
  method valorPara(personaje) =  15
  method recibirTrabajo(){}
}

object tipa {
  var altura = 8
  method altura()= altura
  method recibirAtaque(potencia) {}
    method valorPara(personaje) = self.altura()*2
    method recibirTrabajo(){
        altura=altura +1
    }

}

