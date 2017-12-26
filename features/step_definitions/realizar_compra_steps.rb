
Dado("que acesse a webstore") do
    @home.load
end

Dado("faça uma busca pelo o produto {string}") do |produto1|
    @home.busca_produto produto1
end

Quando("adicionar o produto no carrinho") do
    @catalogo.produtos.sample.click
    @nomeProduto1 = @produto.tituloProduto.text
    @produto.add_produto_carrinho
end

Dado("adicionar o novo produto no carrinho") do
    @catalogo.produtos.sample.click
    @nomeProduto2 = @produto.tituloProduto.text
    @produto.add_produto_carrinho
end

Quando("consultar o carrinho") do
    @home.navega_pelo_carrinho
end
  
Então("o carrinho deve conter os dois itens adicionados") do
    expect(@carrinho.nomeproduto.size).to eql 2
    expect(@carrinho.nomeproduto[0].text).to eql @nomeProduto2
    expect(@carrinho.nomeproduto[1].text).to eql @nomeProduto1
end