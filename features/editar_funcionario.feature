#language: pt
#utf-8

Funcionalidade: Editar Funcionario
    Eu como usuario 
    Quero editar um funcionario existente
    No site orangehrm

    Contexto: Acessar tela de consulta 
    Dado que esteja na tela de consultar empregados com o usuario "Admin" e senha "admin"

    @editar
     Cenario: Realizar Editação de funcionario
     Dado que tenha realizado a pequisa do funcionario atraves do ID "486191"
     Quando realizar a edicao dos dados do funcionario para "Teste_editado" "Casdastro_editado" "Empregado_editado"
     Entao vejo os dados atualizados