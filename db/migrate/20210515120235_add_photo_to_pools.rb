class AddPhotoToPools < ActiveRecord::Migration[6.0]
  def change
    add_column :pools, :photo, :string
  end
end
