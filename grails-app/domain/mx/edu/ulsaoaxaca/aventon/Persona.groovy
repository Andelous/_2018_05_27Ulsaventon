package mx.edu.ulsaoaxaca.aventon

class Persona {

    String nombres
    String apellidoPaterno
    String apellidoMaterno

    String toString() {
        return nombres.trim() + " " + apellidoPaterno.trim() + " " + apellidoMaterno.trim()
    }

    static constraints = {
    }
}
