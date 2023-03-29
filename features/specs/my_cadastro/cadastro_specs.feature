#language: pt
@deliver_regression
Funcionalidade: Cadastrar entregador - Validar cadastro de entregador
    Como um usuário do Parceiro Entregador
    Quero cadastrar um Parceiro Entregador
    Para validar o cadastro do Parceiro Entregador
   
    Contexto: que o usuário esteja na página parceiro entregador     
        * estar na página de cadastro do parceiro entregador

    @deviler_cadastrar
    Cenário: Validar cadastro do parceiro entregador
        Dado que informo os dados de cadastro do Parceiro Entregador
        Quando confirmar o cadastro do Entregador    
        Então Validar que o cadastro do Entregador foi realizado com sucesso
    
    # @validacao_redirecionamento_deliver
    # Cenário: Validar redirecionamento para página deliver        
    #     Quando clicar no botão cadastre para fazer entrega
    #     Então Validar que o usuário foi direcionado para página Deliver
    