class Client < ActiveRecord::Base
	has_and_belongs_to_many :services
	has_many :order_services 
	
	def self.busca(nome)
		where("nome like ?", "%#{nome}%")
	end
end
