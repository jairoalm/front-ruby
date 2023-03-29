Dado('preencher os campos com {string},{string},{string},{string},{string}') do |nome, cpf, email, cep, numero|
    @deliver_page.cadastro_sections.preencher_form_com_dados_informados(
        UserData.get(nome),
        UserData.get(cpf),
        UserData.get(email),
        UserData.get(cep),
        UserData.get(numero)        
      )
  end
  
  Então('deve exibir no campo a mensagem de erro {string}') do |msg_falha_campo|
    expect(@deliver_page).to have_content msg_falha_campo
  end