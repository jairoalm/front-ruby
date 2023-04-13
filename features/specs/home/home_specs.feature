#language: pt

@regression
@home
Funcionalidade: Home - Validar página home do Buger Eats
    Como um usuário do Parceiro Entregador
    Quero acessar a página do Parceiro Entregador
    Para validar os componentes da página Parceiro Entregador
   
    Contexto: que o usuário esteja na página parceiro entregador     
        * estar na página parceiro entregador

    @home_validacao
    Cenário: Validar componentes da home page do parceiro entregador
        Então Validar componentes da home page do parceiro entregador    
    
    @validacao_redirecionamento_deliver
    Cenário: Validar redirecionamento para página deliver        
        Quando clicar no botão cadastre para fazer entrega
        Então Validar que o usuário foi direcionado para página Deliver
    