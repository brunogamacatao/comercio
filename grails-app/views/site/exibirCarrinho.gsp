<html>
<head>
	<title>Meu Carrinho de Compras</title>
	<meta name="layout" content="layout_site"/>
</head>
<body>
	<h1>Produtos do Carrinho</h1>
	<table>
		<thead>
			<tr>
				<th>Produto</th>
				<th>Valor</th>
			</tr>
		</thead>
		<tbody>
			<g:each in="${carrinho}" var="produto">
				<tr>
					<td>${produto.nome}</td>
					<td>${produto.preco}</td>
				</tr>
			</g:each>
		</tbody>
		<tfoot>
			<tr>
				<th>TOTAL</th>
				<th>${valorTotal}</th>
			</tr>
		</tfoot>
	</table>

	<g:render template="pagseguro" model="['carrinho': carrinho]"/>

</body>
</html>