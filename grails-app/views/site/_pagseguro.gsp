<form target="pagseguro" method="post"   
action="https://pagseguro.uol.com.br/v2/checkout/payment.html">
 <input type="hidden" name="receiverEmail" value="brunogamacatao@gmail.com">
 <input type="hidden" name="currency" value="BRL">  
	<g:each status="i" in="${carrinho}" var="produto">
		<g:set var="j" value="${i + 1}" />
	 <input type="hidden" name="itemId${j}" value="${produto.id}">  
	 <input type="hidden" name="itemDescription${j}" value="${produto.nome}">  
	 <input type="hidden" name="itemAmount${j}" value="${produto.preco}">  
	 <input type="hidden" name="itemQuantity${j}" value="1">  	
	</g:each>
 <input type="image" name="submit"   
 src="https://p.simg.uol.com.br/out/pagseguro/i/botoes/pagamentos/120x53-pagar.gif"   
 alt="Pague com PagSeguro">     
</form>