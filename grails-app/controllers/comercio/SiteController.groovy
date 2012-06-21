package comercio

class SiteController {
	def index() {
		def categorias = Categoria.list(sort: "nome")
		def produtos = Produto.findAllByEmDestaque(true)

		[categorias: categorias, produtosEmDestaque: produtos]
	}

	def produtos() {
		def categoria = Categoria.get(params.id)
		[categoria: categoria]
	}

	def comprar() {
		def produto = Produto.get(params.id)
		carrinho << produto
		redirect action: "exibirCarrinho"
	}

	def exibirCarrinho() {
		def total = carrinho.collect { it.preco }.sum()
		[carrinho: carrinho, valorTotal: total]
	}

	private def getCarrinho() {
		if (!session['carrinho'])
			session['carrinho'] = [] // Lista vazia 
		return session['carrinho']
	}
}
