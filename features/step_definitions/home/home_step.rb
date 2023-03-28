Dado('estar na página parceiro entregador') do
    @autentication_page = Pages::AutenticationPage.new
    @autentication_page.load
end