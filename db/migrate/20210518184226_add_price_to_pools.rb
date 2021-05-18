class AddPriceToPools < ActiveRecord::Migration[6.0]
  def change
    add_column :pools, :price, :string
  end
end
