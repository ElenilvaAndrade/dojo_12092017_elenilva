# encoding: utf-8

module ORAGENHRM
    module Pages
        class LoginPage < SitePrism::Page
            element :input_usuario, "#txtUsername"
            element :input_senha, "#txtPassword"
            element :bt_login, "#btnLogin"
        end
    end
end