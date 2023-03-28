#language: pt
@deliver
Funcionalidade: Cadastrar entregador - Validar cadastro de entregador
    Como um usuário do Parceiro Entregador
    Quero cadastrar um Parceiro Entregador
    Para validar o cadastro Parceiro Entregador

   
    Contexto: que o usuário esteja na página parceiro entregador     
        * estar na página de cadastro do parceiro entregador

    @deviler_cadastrar
    Cenário: Validar cadastro do parceiro entregador
    
        Então Validar componentes da home page do parceiro entregador    
    
    @validacao_redirecionamento_deliver
    Cenário: Validar redirecionamento para página deliver        
        Quando clicar no botão cadastre para fazer entrega
        Então Validar que o usuário foi direcionado para página Deliver
    