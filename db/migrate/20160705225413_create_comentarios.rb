class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.text :conteudo
      t.string :author

      t.timestamps null: false
    end
  end
end
