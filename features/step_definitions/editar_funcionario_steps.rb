# encoding: utf-8


Dado(/^que esteja na tela de consultar empregados com o usuario "([^"]*)" e senha "([^"]*)"$/) do |arg1, arg2|                                                                                                            
    visit 'http://opensource.demo.orangehrmlive.com/index.php/auth/login'
    login_page.input_usuario.set arg1
    login_page.input_senha.set arg2
    login_page.bt_login.click
    cadastrar_page.a_pim.click                                  
end            

Dado(/^que tenha realizado a pequisa do funcionario atraves do ID "([^"]*)"$/) do |arg1|
    @id = arg1
    consultar_page.input_id.set @id
    consultar_page.bt_search.click
end
                                                                                                                 
Quando(/^realizar a edicao dos dados do funcionario para "([^"]*)" "([^"]*)" "([^"]*)"$/) do |arg1, arg2, arg3|                                                                                                           
    @first_name = arg1
    @middle_name = arg2
    @last_name = arg3

    consultar_page.a_id.click
    editar_page.bt_editar_salvar.click
    editar_page.input_first_name.set @first_name
    editar_page.input_middle_name.set @middle_name
    editar_page.input_last_name.set @last_name    
    editar_page.bt_editar_salvar.click                                  
end                                                                                                          
                                                                                                                 
Entao(/^vejo os dados atualizados$/) do                                                                      
    nome = @first_name + " " + @middle_name + " " + @last_name
    expect(cadastrar_page.h1_nome.text).to eq(nome)                                        
end                                                                                                          