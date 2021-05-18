class AddNameToPools < ActiveRecord::Migration[6.0]
  def change
    add_column :pools, :title, :string
  end
end
