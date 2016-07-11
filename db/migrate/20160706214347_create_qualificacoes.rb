class CreateQualificacoes < ActiveRecord::Migration
  def change
    create_table :qualificacoes do |t|
      t.integer :nota, null: false
      t.float :valor_gasto, null: false

      t.timestamps null: false
    end
  end
end
