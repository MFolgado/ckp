class OrderService < ActiveRecord::Base
  belongs_to :client
  belongs_to :part
  belongs_to :service
end
