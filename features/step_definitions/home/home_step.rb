Dado('estar na página parceiro entregador') do
    @home_page = Pages::HomePage.new
    @home_page.load
end

Então('Validar componentes da home page do parceiro entregador') do    
    expect(@home_page.home_sections).to have_header_home    
    expect(@home_page.home_sections.text01.text).to have_content 'Seja um parceiro entregador pela Buger Eats'    
    expect(@home_page.home_sections.text02.text).to have_content 'Em vez de oportunidades tradicionais de entrega de refeições em horários pouco flexíveis, seja seu próprio chefe.'    
    expect(@home_page).to have_link('', href: '/deliver')
    expect(@home_page.home_sections.link.text).to have_content 'Cadastre-se para fazer entregas'
end

Quando('clicar no botão cadastre para fazer entrega') do
    @home_page.home_sections.deliver
end
  
Então('Validar que o usuário foi direcionado para página Deliver') do
    @deliver_page = Pages::DeliverPage.new
    # binding.pry
    expect(@deliver_page.deliver_header.text).to have_content 'Voltar para home'     
end