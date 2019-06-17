class AddSelectedToSint < ActiveRecord::Migration[5.2]
  def change
    add_column :sints, :selected, :boolean
  end
end
