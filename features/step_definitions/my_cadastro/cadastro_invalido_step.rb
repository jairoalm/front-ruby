Dado('preencher os campos com {string},{string},{string},{string},{string}') do |nome, cpf, email, cep, numero|
    @deliver_page.form_deliver.preencher_form_com_dados_informados_esquema_de_cenario(nome, cpf, email, cep, numero)  
end
  
Então('deve exibir no campo a mensagem de erro {string}') do |msg_falha_campo|
    # @deliver_page.wait_until_message_erro_visible  
    expect(@deliver_page).to have_content msg_falha_campo
    # sleep 5
end