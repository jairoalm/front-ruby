Dado('estar na página de cadastro do parceiro entregador') do
    @deliver_page = Pages::DeliverPage.new
    @deliver_page.load
end
 
Dado('que informo os dados de cadastro do Parceiro Entregador') do
    @user = Factory::Dynamic.new_user
end
  
Quando('clicar no botão para finalizar o cadastro do Entregador') do
    @deliver_page.cadastro_sections.form_deliver
    # @user = Factory::Dynamic.new_user
    binding.pry
    
end
  
Então('Validar que o cadastro do Entregador foi realizado com sucesso') do
   pending # Write code here that turns the phrase above into concrete actions
end