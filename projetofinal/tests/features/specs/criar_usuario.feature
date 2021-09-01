#language: pt

@usuario
Funcionalidade: Criar Usuário

    -Eu como usuário
    -Quero me cadastrar com sucesso

    Cenario: Cadastrar com sucesso
        Quando eu cadastro meu usuário
        Entao eu verifico se o usuário foi cadastrado