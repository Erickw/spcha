class AddImgToSints < ActiveRecord::Migration[5.2]
  def change
    add_column :sints, :img, :string
  end
end
