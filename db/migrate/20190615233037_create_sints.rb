class CreateSints < ActiveRecord::Migration[5.2]
  def change
    create_table :sints do |t|
      t.string :nome_sintoma
      t.string :descricao
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
