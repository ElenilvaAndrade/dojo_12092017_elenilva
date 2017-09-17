# encoding: utf-8

module ORAGENHRM
    module Pages
        class EditarFuncionarioPage < SitePrism::Page
            element :bt_editar_salvar, "#btnSave"
            element :input_first_name, "#personal_txtEmpFirstName"
            element :input_middle_name, "#personal_txtEmpMiddleName"
            element :input_last_name, "#personal_txtEmpLastName"
        end
    end
end