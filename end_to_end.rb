Quando('eu cadastro o ususario.') do
    visit '/users/new'
    fill_in(id: 'user_name', with: 'William')
    find('#user_lastname').set('Barbosa Alves')
    fill_in(id: 'user_email', with: 'williambrabosaalves@outlook.com')
    find('input[value="Criar"]').click
end
  
Entao('verifico se o ususario foi cadastrado.') do
    texto = find('#notice')
    expect(texto.text).to eql 'Usuário Criado com sucesso'
end
  
Quando('edito um usuario.') do
    sleep 5
    find('.btn.waves-light.blue').click
end
  
Entao('verifico se o usuario foi editado.') do

end
