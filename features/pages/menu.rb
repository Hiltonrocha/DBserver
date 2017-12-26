class Home < SitePrism::Page
    set_url "http://demo.cs-cart.com"

class Menu < SitePrism::Section
    element :caixaBusca, '#search_input'
    element :botaoPesquisar, 'button.ty-search-magnifier'
    element :carrinho, 'i.ty-minicart__icon'
    element :verCarrinho, 'div.cm-cart-buttons div.ty-float-left'
end
    section :menu, Menu, 'div.container-fluid.header-grid'

def busca_produto produto
    menu.wait_for_caixaBusca
    menu.caixaBusca.set produto
    menu.wait_for_botaoPesquisar
    menu.botaoPesquisar.click
end

def navega_pelo_carrinho
    menu.carrinho.click
    menu.verCarrinho.click
end


end
