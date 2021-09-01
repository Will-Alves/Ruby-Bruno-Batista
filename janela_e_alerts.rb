Quando('eu entro na janela e verifico a mensagem') do
    visit '/mudancadefoco/janela'
    
    # JANELA QUE RECEBE UMA JANELA QUE FOI ABERTA PELO LINK
    janela = window_opened_by do
        click_link 'Clique aqui'
    end

    # MUDA DE FOCO PARA A JANELA
    within_window janela do
        expect(current_url).to eq 'https://automacaocombatista.herokuapp.com/mudancadefoco/newwindow'

        @mensagem = find('.red-text.text-darken-1.center')
        expect(@mensagem.text).to eq 'Você Abriu uma nova janela!!'
        sleep 3
        janela.close
        sleep 3  
    end

    # SEGUNDA OPÇÃO
    click_link 'Clique aqui'

    #MUDANDO PARA A ULTIMA ABA
        switch_to_window windows.last

        expect(current_url).to eq 'https://automacaocombatista.herokuapp.com/mudancadefoco/newwindow'
        @mensagem = find('.red-text.text-darken-1.center')
        expect(@mensagem.text).to eq 'Você Abriu uma nova janela!!'
        windows.last.close
        sleep 3
end

Quando('eu entro no alert e verifico faco a acao') do
    visit '/mudancadefoco/alert'
    find('button[onclick="jsAlert()"]').click
    sleep 3
    page.accept_alert
    sleep 3

    find('button[onclick="jsConfirm()"]').click
    sleep 3
    page.dismiss_confirm
    sleep 3

    find('button[onclick="jsPrompt()"]').click
    page.accept_prompt(with: 'William Alves')
    #page.dismiss_prompt
    sleep 3
end