class Login
    ##gera cpf v�lido
	def calcDigVerif(num) {  
        soma = 0
        peso = 10  
        for i in 0..num.length
                soma += (num.substring(i, i + 1)).to_i) * peso--   
        end
        if (soma % 11 == 0 | soma % 11 == 1)  
            primDig = 0
        else  
            primDig = (11 - (soma % 11)).to_i  
        soma = 0   
        peso = 11   
        for i in 0..num.length
                soma += (num.substring(i, i + 1)).to_i * peso--   
                soma += primDig.intValue() * 2  
        end 
        if (soma % 11 == 0 | soma % 11 == 1)  
            segDig = 0   
        else  
            segDig = new Integer(11 - (soma % 11))   
        primDig.to_s + segDig.to_s
    }  
	
	##insere cpf 
    def geraCPF() {  
        iniciais = ""   
        numero =0  
        for i in 0..9  
            numero = rand(0..9)   
            iniciais += numero.to_i 
        end
         iniciais + calcDigVerif(iniciais)   
    }  
    
    ##valida CPF
     def validaCPF(cpf) {  
        if (cpf.length != 11)  
             false   
        else
            String numDig = cpf.substring(0, 9)   
            calcDigVerif(numDig).equals(cpf.substring(9, 11))   
    } 
end