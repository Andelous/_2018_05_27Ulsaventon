package mx.edu.ulsaoaxaca.aventon

class Parada {
    String calle
    String colonia
    String descripcion

    List rutas
    static hasMany = [rutas: Ruta]
    static belongsTo = Ruta

    static constraints = {
    }
}
