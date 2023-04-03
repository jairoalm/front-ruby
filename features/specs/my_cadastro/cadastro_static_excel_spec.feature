#language: pt
@regression
Funcionalidade: Cadastrar entregador - Validar cadastro de entregador com dados estáticos da planilha excel
    Como um usuário do Parceiro Entregador
    Quero cadastrar um Parceiro Entregador
    Para validar o cadastro do Parceiro Entregador com dados da planilha excel
   
    Contexto: que o usuário esteja na página parceiro entregador     
        * estar na página de cadastro do parceiro entregador

    @deviler_cadastrar_excel
    Cenário: Validar cadastro do parceiro entregador com dados dinâmicos
        Dado que informo os dados de cadastro do Parceiro Entregador com dados da planilha excel       
        Quando confirmar o cadastro do Entregador    
        Então Validar que o cadastro do Entregador foi realizado com sucesso