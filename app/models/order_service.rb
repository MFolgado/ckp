class OrderService < ActiveRecord::Base
  belongs_to :client
  belongs_to :part
  belongs_to :service

  def self.busca(nome)
		where("client_id like ?", "%#{nome}%")
  end


end
