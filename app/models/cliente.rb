class Cliente < ActiveRecord::Base
	validates_presence_of :nome, message: " deve ser preenchido."
	validates_length_of :nome, maximum: 50, message: "deve ter no máximo 50 caracteres."
	validates_presence_of :data_nascimento, message: " deve ser preenchida."
    validate :valida_data_nascimento

    has_many :qualificacoes

	private 
		def valida_data_nascimento
				errors.add("data_nascimento","data de nascimento deve ser menor que 31/12/1999") unless data_nascimento < Date.new(1999,12,31)
        end
end
