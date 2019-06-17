class AddDataUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :altura, :float
    add_column :users, :peso, :float
    add_column :users, :imc, :float
    add_column :users, :exercicios, :boolean
    add_column :users, :medicamento, :string
    add_column :users, :pressao_media, :float
    add_column :users, :problemas_extras, :string
    add_column :users, :sintoma, :string
  end
end
