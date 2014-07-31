class Client < ActiveRecord::Base
	has_many :order_service

	def self.busca(nome)
		where("nome like ?", "%#{nome}%")
	end
end
