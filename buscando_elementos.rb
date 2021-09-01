Quando('acesso a url de botoes') do
    visit "/buscaelementos/botoes"
end
  
Entao('verifico se encontrei os elementos') do
    # ALL BUSCA TODOS OS ELEMENTOS QUE CONTEM O ALL
    page.all(:css, '.btn-')
    
    # BUSCA UM ELEMENTO MAPEADO
    find('#teste')
    
    #BUSCA O ELEMENTO PELO ID*
    find_by_id('teste')

    #BUSCA O ELEMENTO PELA CLASSE*
    find_button(class: 'btn waves-light')
    
    #BUSCA O PRIMEIRO ELEMENTO QUE CONTENHA O ELEMENTO MAPEADO
    first('.btn')

    #BUSCA POR ALGUM LINK
    find_link(href: 'https://consultoriabatista.herokuapp.com/')

end