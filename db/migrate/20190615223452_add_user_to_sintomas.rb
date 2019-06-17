class AddUserToSintomas < ActiveRecord::Migration[5.2]
  def change
    add_reference :sintomas, :users, foreign_key: true
  end
end
