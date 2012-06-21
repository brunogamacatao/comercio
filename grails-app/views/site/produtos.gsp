<html>
<head>
	<title>Produtos</title>
	<meta name="layout" content="layout_site"/>
</head>
<body>
	<h1>${categoria}</h1>
	<h2>Produtos:</h2>
	<ul>
		<g:render template="produto" collection="${categoria.produtos}"/>
	</ul>
	<g:link action="index">Voltar</g:link>
</body>
</html>