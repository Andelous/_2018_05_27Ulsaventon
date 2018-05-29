package mx.edu.ulsaoaxaca.aventon

class Ruta {
    String nombre
    String descripcion

    static hasMany = [paradas: Parada]

    static constraints = {
    }
}
