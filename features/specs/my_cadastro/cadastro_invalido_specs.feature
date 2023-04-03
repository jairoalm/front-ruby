#language: pt
@regression
Funcionalidade: Cadastrar entregador - Validar cadastros inválidos do parceiro entregador
    Como um usuário do Parceiro Entregador
    Quero tentar cadastrar um Parceiro Entregador com dados inválidos
    Para validar o formulário de cadastro do Parceiro Entregador

    Contexto: que o usuário esteja na página de novos parceiros entregador     
        * estar na página de cadastro do parceiro entregador
    
    @deviler_cadastro_invalido
    Esquema do Cenário: Não permitir cadastrar entregador com dados inválidos
        Quando preencher os campos com <nome>,<cpf>,<email>,<cep>,<numero>
        E confirmar o cadastro do Entregador
        Então deve exibir no campo a mensagem de erro <msg_falha_campo>        
        # # E permanecer na página de cadastro
        Exemplos:
        | nome      | cpf           | email                  | cep           | numero | msg_falha_campo                              |
        | ""        | "35281249037" | "fabio@teste.com.br"   | "58895-970"   | "056"  | "É necessário informar o nome"               |
        | "Joana"   | ""            | "joana@teste.com.br"   | "58706-567"   | "163"  | "É necessário informar o CPF"                |
        | "Edna"    | "29007676016" | ""                     | "58701-414"   | "263"  | "É necessário informar o email"              |
        | "Renato"  | "83731083000" | "renato@teste.com.br"  | ""            | "369"  | "É necessário informar o CEP"                |
        | "joão"    | "38043501009" | "joao@teste.com.br"    | "58707-230"   | ""     | "É necessário informar o número do endereço" |
        | "Douglas" | "71877825000" | "doulgas@teste.com.br" | "58708-502"   | "569"  | "Selecione o método de entrega"              |
        | "Lorenzo" | "48754654084" | "lorenzo@teste.com.br" | "58706-590"   | "589"  | "Adicione uma foto da sua CNH"               |
        | "Luiz"    | "4875465"     | "luiz@teste.com.br"    | "68990-970"   | "701"  | "Oops! CPF inválido"                         |
        # | "Gian"    | "02351123050"   | "gian@teste.com.br"    | "%¨$%$hjg"    | "705"  | "Informe um CEP válido"                    |
