class CreateOrderServices < ActiveRecord::Migration
  def change
    create_table :order_services do |t|
      t.references :client, index: true
      t.references :part, index: true
      t.references :service, index: true

      t.timestamps
    end
  end
end
