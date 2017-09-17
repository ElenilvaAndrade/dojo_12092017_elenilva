# encoding: utf-8

module ORAGENHRM
    module Pages
        class CadastrarFuncionarioPage < SitePrism::Page
            element :bt_salvar, "#btnSave"      
            element :input_first_name, "#firstName"
            element :input_middle_name, "#middleName"
            element :input_last_name, "#lastName"
            element :input_id, "#employeeId"
            element :a_pim, "#menu_pim_viewPimModule > b"
            element :a_add_employee, "#menu_pim_addEmployee"
            element :h1_nome, "#profile-pic > h1"
        end
    end
end