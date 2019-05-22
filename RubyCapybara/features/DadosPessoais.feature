# #language:pt
# Funcionalidade: Cadastro de dados pessoais do Cliente

# Contexto: Dado que eu estou na pagina de dados pessoais
# Dado que eu estou na pagina de dados pessoais

# Cenario: Iniciar abertura de conta de novo usuário para cambio
#     Quando eu preencher os campos obrigatórios
#     |Nome                       | Cpf          | Email                             |Celular     |Objetivo    |
#     |Usuário de cambio          |54833616360|  humberto.santos@cedrotech.com    |34923456789	|investimento|
#     E eu clicar em Seguir
#     # E o Serviço de validação de usuário retornar sucesso
#     Então o sistema direciona para a tela de seleção de plano