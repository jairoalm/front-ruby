#language: pt
@deliver_regression_cadastro_invalido
Funcionalidade: Cadastrar entregador - Validar cadastros inválidos do parceiro entregador
    Como um usuário do Parceiro Entregador
    Quero tentar cadastrar um Parceiro Entregador com dados inválidos
    Para validar o formulário de cadastro do Parceiro Entregador
    
    @deviler_cadastro_invalido
    Esquema do Cenário: Não permitir cadastrar usuário com dados inválidos
        Dado estar na página de cadastro do parceiro entregador
        E preencher os campos com <nome>,<cpf>,<email>,<cep>,<numero>
        Quando confirmar o cadastro do Entregador
        Então deve exibir no campo a mensagem de erro <msg_falha_campo>        
        # E permanecer na página de cadastro
        Exemplos:
        | nome     | cpf        | email                 | cep           | numero | msg_falha_campo                              |
        | ""       | "Araujo"   | "fabio@teste.com.br"  | "11976243216" | "056"  | "É necessário informar o nome"               |
        | "Joana"  | ""         | "joana@teste.com.br"  | "11976227778" | "163"  | "É necessário informar o CPF"                |
        | "Edna"   | "Silva"    | ""                    | "11976222888" | "263"  | "É necessário informar o email"              |
        | "Renato" | "Ferreira" | "renatoteste.com.br"  | ""            | "369"  | "É necessário informar o CEP"                |
        | "joão"   | "Arantes"  | "joao@teste.com.br"   | "11976222228" | ""     | "É necessário informar o número do endereço" |
