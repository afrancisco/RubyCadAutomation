
class Login < SitePrism::Page

    def cadastraUsuario(table, bool=false) 
        @data = table.hashes
        @data.each do |valor|
            @login=valor['Nome']
            if bool
                @cpf=valor['Cpf'].to_i
            else
                @cpf=generateCPF
            end
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
    


####
def generateCPF
    digits = []
    9.times { digits << rand(9) }
    2.times { digits << verification_digit_for(digits) }

    digits.join
  end

  private

  def verification_digit_for(known_digits)
    i = 1
    sums = known_digits.reverse.collect do |digit|
      i = i + 1
      digit * i
    end

    verification_digit = 11 - sums.inject(0) { |sum, item| sum + item } % 11
    verification_digit < 10 ? verification_digit : 0
  end


####


 end