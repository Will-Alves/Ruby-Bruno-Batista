Quando('eu faço cadastro') do                                                
    visit '/users/new'
    fill_in(id: 'user_name', with: 'William')
    find('#user_lastname').set('Barbosa Alves')
    find('#user_email').send_keys('williambrabosaalves@outlook.com')

    fill_in(id: 'user_address', with: 'Rua Giovanni Nasco')
    find('#user_university').set('UNIP')
    find('#user_profile').send_keys('Analista de Testes')

    fill_in(id: 'user_gender', with: 'Masculino')
    find('#user_age').set('33')
    find('input[value="Criar"]').click
    sleep 5
end                                                                          
                                                                               
Entao('verifico se fui cadastrado') do                                       
    texto = find('#notice')
    expect(texto.text).to eql 'Usuário Criado com sucesso' 
end                                                                          
                                                           