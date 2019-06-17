class CreateUsuarios < ActiveRecord::Migration[5.2]
  def change
    create_table :usuarios do |t|
      t.string :nome
      t.string :senha
      t.float :altura
      t.float :peso
      t.float :imc
      t.boolean :exercicios
      t.string :medicamento
      t.float :pressao_media
      t.string :problemas_extras
      t.string :sintoma

      t.timestamps
    end
  end
end
