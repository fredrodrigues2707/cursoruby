class AddColumnsToRestaurante < ActiveRecord::Migration
  def change
    add_column :restaurantes, :endereco, :string
    add_column :restaurantes, :especialidade, :string, limit: 40
  end
end
