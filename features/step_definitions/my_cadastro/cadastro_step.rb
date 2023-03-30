Dado('estar na página de cadastro do parceiro entregador') do
    @deliver_page = Pages::DeliverPage.new
    @deliver_page.load
end

Dado('que informo os dados de cadastro do Parceiro {string}') do |user_type|    
    @entregador = Factory::Static.get_static_data(user_type) 
    @deliver_page.form_deliver.form_deliver_static(@entregador)   
end
 
# Dado('que informo os dados de cadastro do Parceiro Entregador') do
#     @entregador = Factory::Static.get_static_data(Data)
#     @deliver_page.form_deliver.form_deliver_static(@entregador)
#     binding.pry        
    
    # 1 forma de implementar
    # @deliver_page.form_deliver.form_deliver_static(@entregador)

    # 2 forma de implementar
    # @form_deliver = @deliver_page.form_deliver
    # @form_deliver.form_deliver_static(@entregador)

    # @entregador = { nome: 'João Alves', cpf: '24568796321', email: 'teste@teste.com', whatsapp: '89653254525', postalcode: '58706362', number: '256' }   
    # @user = Factory::Dynamic.new_user    
    # binding.pry
# end

Dado('que informo os dados de cadastro do Parceiro Entregador com dados dinâmicos') do
    # @entregador = Factory::Dynamic.get_dynamic_data.new 
    # @deliver_page.form_deliver.form_deliver_static(@entregador)    
    @deliver_page.form_deliver.form_deliver_dynamic
end
Quando('confirmar o cadastro do Entregador') do    
    @deliver_page.form_deliver.confirmar_cadastro          
end
  
Então('Validar que o cadastro do Entregador foi realizado com sucesso') do     
    # expect(page).to have_css('.swal2-container .swal2-html-container', :text => "Recebemos os seus dados. Fique de olho na sua caixa de email, pois e em breve retornamos o contato.")    
    # Esperando o elemento aparecer na tela    
    @deliver_page.wait_until_message_success_visible  
    expect(@deliver_page).to have_content('Recebemos os seus dados. Fique de olho na sua caixa de email, pois e em breve retornamos o contato.')      
end

