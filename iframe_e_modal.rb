Quando('entro no iframe e preencho os campos') do
    visit '/mudancadefoco/iframe'

    # ENTRANDO NO IFRAME
    within_frame('id_do_iframe') do
        #FAZER AS ACOES DENTRO DO IFRAME
        fill_in(id:'first_name', with: 'William')
        fill_in(id:'last_name', with: 'Barbosa')
    end
end

Quando('entro no modal e verifico o texto') do
    visit '/mudancadefoco/modal'
    # ACESSA O MODAL PARA VERIFICAR O TEXTO E COMPARAR 'MODAL TESTE'
        find('a[href="#modal1"]').click
        within('#modal1')do
        texto = find('h4')
        expect(texto.text).to eql 'Modal Teste'
        sleep 3
    # FECHA O MODAL DEPOIS DE COMPARAR
        find('.modal-close').click
        sleep 3
    end
end
