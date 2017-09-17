# encoding: utf-8

Dado(/^que loguei com o usuario "([^"]*)" e senha "([^"]*)"$/) do |arg1, arg2|
    visit 'http://opensource.demo.orangehrmlive.com/index.php/auth/login'
    login_page.input_usuario.set arg1
    login_page.input_senha.set arg2
    login_page.bt_login.click
  end

  Dado(/^que estou na tela de Cadastro$/) do
    cadastrar_page.a_pim.click
    cadastrar_page.a_add_employee.click
  end
  
  Quando(/^realizar o cadastro do novo funcionario com os dados "([^"]*)" "([^"]*)" "([^"]*)"$/) do |arg1, arg2, arg3|
    radom = Random.new(1234)
    num = radom.rand(1000000).to_s
    @first_name = arg1
    @middle_name = arg2
    @last_name = arg3
    cadastrar_page.input_first_name.set @first_name.concat(num)
    cadastrar_page.input_middle_name.set @middle_name.concat(num)
    cadastrar_page.input_last_name.set @last_name.concat(num)
    cadastrar_page.input_id.set num
    cadastrar_page.bt_salvar.click
  end      
  
  Entao(/^vejo o funcionario cadastrado com sucesso$/) do  
    nome = @first_name + " " + @middle_name + " " + @last_name
    expect(cadastrar_page.h1_nome.text).to eq(nome)     
  end                                                              