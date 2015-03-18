class CreateOrderServices < ActiveRecord::Migration
  def change
    create_table :order_services do |t|
       # t.references :client, index: true
       # t.references :part, index: true
       # t.references :service, index: true
       # t.date :data_servico

       t.belongs_to :service, index: true
       t.belongs_to :client, index: true
      t.timestamps
    end


  end
end
