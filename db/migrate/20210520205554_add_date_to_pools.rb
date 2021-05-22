class AddDateToPools < ActiveRecord::Migration[6.0]
  def change
    add_column :pools, :date, :datetime
  end
end
