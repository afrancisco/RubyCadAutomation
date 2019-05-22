
class Login < SitePrism::Page

    
    
    ##gera cpf v�lido
	def calcDigVerif(num)   
        soma = 0
        peso = 10  
        for i in 0..num.length do
                soma += (num.substring(i, i + 1)).to_i * (peso)   
            end
        
        if soma % 11 == 0 || soma % 11 == 1  
            primDig = 0
        else  
            primDig = 11 - (soma) % 11  
            end
        soma = 0   
        peso = 11   
        for i in 0..num.length do
                soma += (num.substring(i, i + 1)).to_i * (peso)   
                soma += primDig.intValue() * 2  
            end 
        if (soma) % 11 == 0 || (soma) % 11 == 1  
            segDig = 0   
        else  
            segDig = 11 - ((soma) % 11)
        primDig.to_s + (segDig.to_s)
            end 
	end
	##insere cpf 
    def geraCPF()   
        iniciais = ""   
        numero =0  
        for i in 0..9  
            numero = rand(0..9)   
            iniciais += numero.to_i 
        end
         iniciais + calcDigVerif(iniciais)   
    end  
    
    ##valida CPF
     def validaCPF(cpf)   
        if (cpf.length != 11)  
             false   
        else
            String numDig = cpf.substring(0, 9)   
            calcDigVerif(numDig).equals(cpf.substring(9, 11))   
            end
        end

    def cadastraUsuario(table) 
        @data = table.hashes
        @data.each do |valor|
            @login=valor['Nome']
            @cpf= valor['Cpf'].to_i
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
    
 end