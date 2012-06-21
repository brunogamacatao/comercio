<html>
<head>
	<title>Minha Loja</title>
	<meta name="layout" content="layout_site"/>
</head>
<body>
	<h1>Minha Loja</h1>
	<h2>Categorias:</h2>
	<ul>
	<g:each in="${categorias}" var="categoria">
		<li>
			<g:link action="produtos" id="${categoria.id}">
				${categoria}
			</g:link>
		</li>
	</g:each>
	</ul>
	<hr/>
	<h2>Produtos em Destaque:</h2>
	<ul class="thumbnails">
		<g:render template="produto" collection="${produtosEmDestaque}"/>
	</ul>
</body>
</html>