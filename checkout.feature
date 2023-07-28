            #language: pt

            Funcionalidade: Tela de cadastro
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha comprar

            Contexto:
            Dado que deve ser cadastrado todos os dados obrigatórios marcados com asterisco

            Cenário: Válido
            Quando eu preencher corretamente todos os dados
            Então deve exibir a mensagem de conclusão "Obrigado por ter efetuado seu cadastro"

            Cenário: Formato de email inválido
            Quando eu preencher o campo de email com formato inválido
            Então deve exibir a mensagem de erro "Por favor, corrija o campo em destaque"

            Cenário: Data de nascimento faltando
            Quando eu não preencher o campo data de nascimento
            Então deve exibir a mensagem de erro "Por favor, corrija o campo em destaque"

            Cenário: CEP incorreto
            Quando eu não preencher o campo CEP
            Então deve exibir a mensagem de erro "Por favor, corrija o campo em destaque"

            Esquema do Cenário: Autenticar múltiplos cadastros
            Quando eu digitar <nomecompleto>
            E o <cpf>
            E o <endereco>
            E o <telefone>
            E o <email>
            Então deve exibir a <mensagem>

            Exemplos:
            | nomecompleto      | cpf         | endereco                       | telefone    | email                 | mensagem                                 |
            | "Janaina Silva"   | 35956641835 | "Rua João Guimarães Rosa, 580" | 11992948808 | "janaina@ebac.com.br" | "Obrigado por ter efetuado seu cadastro" |
            | "João da Silva"   |             | "Rua Rio Paranapanema. 83"     | 11995486875 | "joao@ebac.com.br"    | "Por favor, corrija o campo em destaque" |
            | "Silvia da Silva" | 68199112891 | "Av. Edmundo Amaral, 130"      | 11999511649 | "silvia@ebac.com"     | "Por favor, corrija o campo em destaque" |