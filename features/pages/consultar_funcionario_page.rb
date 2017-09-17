# encoding: utf-8

module ORAGENHRM
    module Pages
        class ConsultarFuncionarioPage < SitePrism::Page
            element :input_id, "#empsearch_id"
            element :bt_search, "#searchBtn"
            element :a_id, "#resultTable > tbody > tr:nth-child(1) > td:nth-child(2) > a"   
        end
    end
end