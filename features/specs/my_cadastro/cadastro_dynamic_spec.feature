#language: pt
@deliver_regression_dynamic
Funcionalidade: Cadastrar entregador - Validar cadastro de entregador com dados dinâmicos
    Como um usuário do Parceiro Entregador
    Quero cadastrar um Parceiro Entregador
    Para validar o cadastro do Parceiro Entregador
   
    Contexto: que o usuário esteja na página parceiro entregador     
        * estar na página de cadastro do parceiro entregador

    @deviler_cadastrar_dynamic
    Cenário: Validar cadastro do parceiro entregador com dados dinâmicos
        Dado que informo os dados de cadastro do Parceiro Entregador com dados dinâmicos        
        Quando confirmar o cadastro do Entregador    
        Então Validar que o cadastro do Entregador foi realizado com sucesso