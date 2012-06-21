<li class="span3">
<div class="thumbnail">
	<g:thumbnail 
	id="${it.imagem.id}" width="260" height="180"/>
	<div class="caption">
	<h5>${it.nome}</h5>
	<p>R$ ${it.preco}</p>
	<p>
		<g:link action="comprar" id="${it.id}" class="btn btn-primary">COMPRAR</g:link>
		<g:link action="exibir" id="${it.id}" class="btn btn-primary">EXIBIR</g:link>
	</p>
	</div>
	</div>
</li>
