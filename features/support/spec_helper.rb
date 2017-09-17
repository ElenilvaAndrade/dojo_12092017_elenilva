# encoding: utf-8
# !/usr/bin/env ruby

Dir[File.join(File.dirname(__FILE__), '../pages/*.rb')].each { |file| require file }

module UI
  module Pages

    def login_page
      ORAGENHRM::Pages::LoginPage.new
    end

    def cadastrar_page
      ORAGENHRM::Pages::CadastrarFuncionarioPage.new
    end

    def consultar_page
      ORAGENHRM::Pages::ConsultarFuncionarioPage.new
    end

    def editar_page
      ORAGENHRM::Pages::EditarFuncionarioPage.new
    end
  end
end