class CreateSintomas < ActiveRecord::Migration[5.2]
  def change
    create_table :sintomas do |t|
      t.string :nome_sintoma
      t.string :descricao

      t.timestamps
    end
  end
end
