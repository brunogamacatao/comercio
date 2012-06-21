package comercio

class Categoria {
	String nome

	static hasMany   = [produtos: Produto]
	static belongsTo = [Produto]

 static constraints = {
 	nome(blank: false)
 }

 String toString() {
 	nome
 }
}
