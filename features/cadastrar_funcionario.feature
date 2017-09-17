#language: pt
#utf-8

Funcionalidade: Cadastrar Funcionario
    Eu como usuario 
    Quero cadastrar um novo funcionario 
    No site orangehrm

    Contexto: logar
    Dado que loguei com o usuario "Admin" e senha "admin"

    @cadastro
     Cenario: Realizar Cadastro
     Dado que estou na tela de Cadastro
     Quando realizar o cadastro do novo funcionario com os dados "Teste" "Casdastro" "Empregado"
     Entao vejo o funcionario cadastrado com sucesso