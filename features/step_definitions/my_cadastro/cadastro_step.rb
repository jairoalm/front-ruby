Dado('estar na página de cadastro do parceiro entregador') do
    @deliver_page = Pages::DeliverPage.new
    @deliver_page.load
end
 
Dado('que informo os dados de cadastro do Parceiro Entregador') do    
    @deliver_page.cadastro_sections.form_deliver_static
    # @user = Factory::Dynamic.new_user    
    # binding.pry
end
  
Quando('confirmar o cadastro do Entregador') do
    @deliver_page.cadastro_sections.confirmar_cadastro        
end
  
Então('Validar que o cadastro do Entregador foi realizado com sucesso') do     
    # expect(page).to have_css('.swal2-container .swal2-html-container', :text => "Recebemos os seus dados. Fique de olho na sua caixa de email, pois e em breve retornamos o contato.")    
    # Esperando o elemento aparecer na tela    
    @deliver_page.wait_until_message_success_visible  
    expect(@deliver_page).to have_content('Recebemos os seus dados. Fique de olho na sua caixa de email, pois e em breve retornamos o contato.')    
    # binding.pry   
end