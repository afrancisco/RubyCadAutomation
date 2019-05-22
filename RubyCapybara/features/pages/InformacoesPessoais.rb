class InformacoesPessoais < SitePrism::Page

    def cadastraDadosPessoais(table)
        @data = table.hashes
        @data.each do |valor|
        #Todo finalizar o preenchimento dos campos obrigatórios

            fill_in 'birth_date', :with =>@dtNascimento
            fill_in 'home_phone', :with =>@dtNascimento
            
            
        end
    
    end


end