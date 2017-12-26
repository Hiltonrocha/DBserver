class Produto < SitePrism::Page
element :addCarrinho, 'button.ty-btn__primary'
element :aumentarQnt, 'a.cm-increase'
element :diminuirQnt, 'a.cm-decrease'
element :continuarComprando, 'a.ty-btn.ty-btn__secondary'
element :tituloProduto, 'h1.ty-product-block-title'

def add_produto_carrinho
    addCarrinho.click
    continuarComprando.click
end


end
