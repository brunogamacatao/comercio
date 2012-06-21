package comercio

import bgc.thumbnail.Thumbnail

class Produto {
	String nome
	String descricao
	BigDecimal preco
	int quantidade
	boolean emDestaque = false
	Thumbnail imagem

	static hasMany = [categorias: Categoria]

 static constraints = {
 	nome(blank: false)
 	descricao(blank: false, widget: 'textarea')
 	preco(blank: false, min: 0.01, scale: 2)
 	quantidade(blank: false, min: 0)
 	emDestaque()
 }

 String toString() {
 	nome
 }
}
