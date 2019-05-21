
Dado("que estou na tela inicial") do
    visit 'http://cadastrodigital.cedrotech.com/cadastro/basic-information'
  
  end

Quando("eu preencher os campos obrigatórios") do |table|
  login=Login.new
     @data = table.hashes
        @data.each do |valor|
            @login=valor['Nome']
            @cpf=login.geraCPF## valor['Cpf'].to_i
            @email=valor['Email']
            @celular=valor['Celular']
            @objetivo=valor['Objetivo']
            fill_in 'full_name', :with =>@login
            fill_in 'cpf', :with =>@cpf
            fill_in 'primary_email', :with =>@email
            fill_in 'phone1', :with =>@celular
            if @objetivo=="cambio"
                click_on(id: 'reason2')
            else @objetivo=="investimento"
            click_button("reason1")
            end  
            end

  end
  
  Quando("eu clicar em Seguir") do
    click_button("buttonNext")    
       
  end
  
#   Quando("o Serviço de validação de usuário retornar sucesso") do
#     pending # Write code here that turns the phrase above into concrete actions
#   end
  
  Então("o sistema direciona para a tela de seleção de plano") do
   expect(page).to have_css(".title-content", text: "ESCOLHA UM PLANO")
    
  end
  
  Então("o sistema direciona para a tela de informações pessoais") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando("eu preencher os campos obrigatórios com cpf e email já cadastrados") do |table|
    # table is a Cucumber::MultilineArgument::DataTable
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Então("o sistema Exibe a mensagem informando que o usuário já está cadastrado") do
    pending # Write code here that turns the phrase above into concrete actions
  end