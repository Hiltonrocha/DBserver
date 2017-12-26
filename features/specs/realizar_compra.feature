#encoding: utf-8
#language: pt

Funcionalidade: Adicionar produtos no carrinho 
Eu como usuário
Quero adicionar produtos no meu carrinho
Para realizar minhas compras 

@dbserver
Cenário: Adicionar Produtos Carrinho
Dado que acesse a webstore
E faça uma busca pelo o produto "Batman"
E adicionar o produto no carrinho
E faça uma busca pelo o produto "PS3"
E adicionar o novo produto no carrinho
Quando consultar o carrinho
Então o carrinho deve conter os dois itens adicionados
