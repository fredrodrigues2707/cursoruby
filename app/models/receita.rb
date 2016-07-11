class Receita < ActiveRecord::Base
	validates_presence_of :conteudo, message: "deve ser preenchido."
	validates_presence_of :prato
	validates_associated :prato


	belongs_to :prato
end
