#language: pt
@regression
Funcionalidade: Cadastrar entregador - Validar componentes placeholder, h2, button da página de cadastrar entregador
    Como um usuário do Parceiro Entregador
    Quero cadastrar um Parceiro Entregador
    Para validar o cadastro do Parceiro Entregador
   
    Contexto: que o usuário esteja na página parceiro entregador     
        * estar na página de cadastro do parceiro entregador

    @validar_componentes
    Cenário: Validar componentes da página de cadastrdo de entregador            
        Então Validar componentes da página de cadastrdo de entregador     