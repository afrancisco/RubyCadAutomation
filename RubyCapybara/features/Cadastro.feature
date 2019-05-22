#language:pt
Funcionalidade: Cadastro de Cliente

Contexto: Dado que eu estou na pagina principal
Dado que estou na tela inicial
Cenario: Iniciar abertura de conta de novo usuário para cambio
    Quando eu preencher os campos obrigatórios
    |Nome                       | Cpf       | Email                             |Celular        |Objetivo    |
    |Usuário de cambio          |53912212856|  humberto.santos@cedrotech.com    |34923456789	|cambio      |
    E eu clicar em Seguir
    # E o Serviço de validação de usuário retornar sucesso
    Então o sistema direciona para a tela de seleção de plano
    

# Cenario: Iniciar abertura de conta de com usuário Investimento
#     Quando eu preencher os campos obrigatórios
#     |Nome                                  | Cpf       | Email                             |Celular        |Objetivo    |
#     |Usuário de todo tipo de investimento  |774.844.567-21|  humberto.santos@cedrotech.com    |34923456789	   |investimento|
#     E eu clicar em Seguir
#     # E o Serviço de validação de usuário retornar sucesso
#     Então o sistema direciona para a tela de informações pessoais
   
# Cenario: Iniciar abertura de conta de com usuário existente
#     Quando eu preencher os campos obrigatórios com cpf e email já cadastrados
#     |Nome                       | Cpf       | Email                             |Celular        |Objetivo    |
#     |Todo Tipo de investimento  |760.388.674-06|  humberto.santos@cedrotech.com    |34923456789	|investimento|
#     E eu clicar em Seguir
#     Então o sistema Exibe a mensagem informando que o usuário já está cadastrado
   

