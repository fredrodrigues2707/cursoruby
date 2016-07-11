class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nome, limit: 50, null:false
      t.date :data_nascimento, null:false

      t.timestamps null: false
    end
  end
end
