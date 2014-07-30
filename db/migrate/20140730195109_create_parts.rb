class CreateParts < ActiveRecord::Migration
  def change
    create_table :parts do |t|
      t.string :descricao
      t.string :modelo
      t.string :p_compra
      t.string :p_venda
      t.integer :quantidade
      t.string :lucro

      t.timestamps
    end
  end
end
